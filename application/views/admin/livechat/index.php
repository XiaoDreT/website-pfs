<style>
    .box-chat-user {
        border: 1px solid black;
        padding: 10px;
        height: 500px;
        overflow: hidden;
        overflow-y: scroll;
        scrollbar-color: #187EA8 #fff;
        scrollbar-width: thin;
    }

    .chat-user {
        margin-bottom: 5px;
        border-radius: 10px;
        border: 3px solid #187EA8;
        padding: 5px;
        cursor: pointer;
    }

    .chat-user:hover {
        background-color: #c3c2c2;
        color: black;
    }

    .aktif {
        background-color: #187EA8;
        color: white;
    }

    .user-content {
        font-weight: bold;
        font-size: 12px;
        margin-bottom: 0px;
    }

    .user-right {
        font-weight: bold;
        font-size: 12px;
        margin-bottom: 0px;
        text-align: right;
    }

    .box-chat-message {
        border: 1px solid black;
        height: 510px;
    }

    .chat-message-header {
        width: 100%;
        background-color: #187EA8;
        padding: 10px;
        font-weight: bold;
        color: white;
        text-align: left;
        font-size: 14px;
        height: 40px;
    }

    .chat-message-history {
        width: 100%;
        background-color: white;
        padding: 10px;
        height: 420px;
        overflow: hidden;
        overflow-y: scroll;
        scrollbar-color: #187EA8 #fff;
        scrollbar-width: thin;
    }

    .chat-message-sender {
        width: 100%;
        background-color: white;
        padding: 10px;
        height: 40px;
        text-align: left;
    }

    .chat-me {
        background: white;
        box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
        border-radius: 0px 10px 10px 10px;
        padding: 5px;
        color: black;
        margin-right: 150px;
        margin-bottom: 10px;
        word-wrap: break-word;
    }

    .chat-you {
        background: #187EA8;
        border-radius: 10px 0px 10px 10px;
        box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
        padding: 5px;
        color: white;
        margin-left: 150px;
        margin-bottom: 10px;
        word-wrap: break-word;
    }

    .chat-person {
        text-align: left;
        font-size: 12px;
        font-weight: bold;
        margin-bottom: 0px;
    }

    .chat-msg {
        text-align: justify;
        font-size: 11px;
        margin-bottom: 5px;
    }

    .chat-time {
        text-align: right;
        font-size: 10px;
        font-weight: bold;
        margin-bottom: 0px;
    }
</style>
<section>
    <div class="col-lg-12">
        <div class="panel panel-yellow">
            <div class="panel-heading">
                <h4>
                    <span class="icon16 icomoon-icon-equalizer-2"></span>
                    <span>Live Chat</span>
                </h4>
            </div>
            <div class="panel-body">
                <input id="all_id" type="hidden" value="<? echo $data['all_id']; ?>">
                <input id="last_id" type="hidden" value="<? echo $data['last_id']; ?>">
                <input id="active_chat" type="hidden" value="<? echo $data['active']; ?>">
                <div class="row">
                    <div class="col-md-4">
                        <div id="list_user" class="box-chat-user">
                            <?php 
                            foreach ($data['data'] as $val) {
                                $lock = "fa fa-unlock";
                                if ($val['locked'] == 1) {
                                    $lock = "fa fa-lock";
                                }
                                $id = $val['id'];
                                ?>
                                <div id="chat<? echo $id; ?>" class="chat-user <? echo $id == $data['active'] ? 'aktif' : ''; ?>" onclick="open_chat('<? echo $id; ?>')">
                                    <p id="username<? echo $id; ?>" class="user-content"><? echo $val['name']; ?></p>
                                    <p class="user-content"><? echo $val['email']; ?></p>
                                    <p class="user-content"><? echo $val['phone']; ?></p>
                                    <p class="user-right"><span id="updatedate<? echo $id; ?>"><? echo $val['update_date']; ?></span> &nbsp<span id="iconlock<? echo $id; ?>" class="<? echo $lock; ?>"></span></p>
                                </div>
                                <?php
                            }
                            ?>
                        </div>
                    </div>
                    <div id="list_message" class="col-md-8">
                        <?php
                        $last_message_id = 0;
                        foreach ($data['data'] as $key => $val) {
                            $id = $val['id'];
                            ?>
                            <div id="message<? echo $id; ?>" class="box-chat-message" <? echo $data['active'] != $id ? 'style="display: none"' : ''; ?>>
                                <div class="chat-message-header">
                                    <span><? echo $val['name']." (".$val['email'].")"; ?></span><a id="btn-lock<? echo $id; ?>" class="btn btn-xs btn-danger" style="margin-left: 10px; margin-bottom: 6px; cursor: pointer; <? echo $val['locked'] == 1 ? 'display: none' : ''; ?>" onclick="lock_chat('<? echo $id; ?>')">Kunci Chat</a>
                                    <img id="loading-1<? echo $id; ?>" src="<? echo IMG_PATH; ?>loading.jpg" style="width: 30px; height: 30px; margin-top: -10px; display: none;">
                                </div>
                                <div id="chat-history<? echo $id; ?>" class="chat-message-history">
                                    <?php  
                                    foreach ($val['message'] as $key => $v) {
                                        if ($val['locked'] == 0) {
                                            if ($key == count($val['message']) - 1) {
                                                if ($last_message_id < $v->id) {
                                                    $last_message_id = $v->id;
                                                }
                                            }
                                        }
                                        $class_chat = "chat-me";
                                        $user_chat = $v->name;
                                        if ($v->admin_id == 0) {
                                            $class_chat = "chat-you";
                                            $user_chat = $val['name'];
                                        }
                                        $pecah = explode(" ", $v->datetime);
                                        $pisah = explode(":", $pecah[1]);
                                        $time = $pisah[0].":".$pisah[1];
                                        ?>
                                        <div class="<? echo $class_chat; ?>">
                                            <p class="chat-person"><? echo $user_chat; ?></p>
                                            <p class="chat-msg"><? echo $v->message; ?></p>
                                            <p class="chat-time"><? echo $time; ?></p>
                                        </div>
                                        <?php
                                    }
                                    ?>
                                </div>
                                <div id="sender<? echo $id; ?>" class="chat-message-sender">
                                    <?php  
                                    if ($val['locked'] == 1) {
                                        echo "Chat ini sudah terkunci";
                                    } else {
                                        ?>
                                        <div class="form-inline" style="margin-top: -7px;">
                                            <div class="form-group" style="width: 85%">
                                                <input id="text-msg<? echo $id; ?>" type="text" maxlength="150" class="form-control" placeholder="Input pesan disini (maks 150 karakter)">
                                            </div>
                                            <a id="btn-send<? echo $id; ?>" class="btn btn-primary" style="cursor: pointer;" onclick="send_chat('<? echo $id; ?>')"><span class="fa fa-send"></span></a>
                                            <img id="loading-2<? echo $id; ?>" src="<? echo IMG_PATH; ?>loading.jpg" style="width: 35px; height: 35px; display: none;">
                                        </div>
                                        <?php
                                    }
                                    ?>
                                </div>
                            </div>
                            <?php
                        }
                        ?>
                    </div>
                </div>
                <input id="last_message_id" type="hidden" value="<? echo $last_message_id; ?>">
            </div>
        </div>
    </div>
</section>
<script>
    $(document).ready(function(){
        first_load();
    });

    function first_load(){
        check_locked();
        check_new_chat();
        check_new_message();
    }

    function check_locked(){
        $.ajax({
            type: "GET",
            url: "<? echo site_url('admin/livechat/check_locked'); ?>",
            dataType: "JSON",
            success: function(e){
                if (e.length > 0) {
                    $.each(e, function(i, v){
                        $("#iconlock"+v).attr("class","fa fa-lock");
                        $("#btn-lock"+v).hide();
                        $("#sender"+v).html("Chat ini sudah terkunci");
                    });
                    loop_check_locked();
                } else {
                    loop_check_locked();
                }
            }
        });
    }

    function loop_check_locked(){
        setTimeout(function(){
            check_locked();
        },1000);
    }

    function check_new_chat(){
        var last_id = $("#last_id").val();
        var all_id = $("#all_id").val();
        $.ajax({
            type: "POST",
            url: "<? echo site_url('admin/livechat/check_new_chat'); ?>",
            data: {last_id:last_id,all_id:all_id},
            dataType: "JSON",
            success: function(e){
                if (e.data.length > 0) {
                    var loading_src = "<? echo IMG_PATH; ?>loading.jpg";
                    $.each(e.data, function(i, v){
                        var class_user = "chat-user";
                        var msg_state = "style='display:none;'";
                        if (e.active == v.id) {
                            class_user = "chat-user aktif";
                            msg_state = "";
                        }
                        var class_icon = "fa fa-unlock";
                        if (v.locked == 1) {
                            class_icon = "fa fa-lock";
                        }
                        $("#list_user").prepend("<div id='chat"+v.id+"' class='"+class_user+"' onclick='open_chat(`"+v.id+"`)'><p id='username"+v.id+"' class='user-content'>"+v.name+"</p><p class='user-content'>"+v.email+"</p><p class='user-content'>"+v.phone+"</p><p class='user-right'><span id='updatedate"+v.id+"'>"+v.update_date+"</span> &nbsp<span id='iconlock"+v.id+"' class='"+class_icon+"'></span></p></div>");
                        $("#list_message").append("<div id='message"+v.id+"' class='box-chat-message' "+msg_state+"><div class='chat-message-header'><span>"+v.name+" ("+v.email+")</span><a id='btn-lock"+v.id+"' class='btn btn-xs btn-danger' style='margin-left: 10px; margin-bottom: 6px; cursor: pointer;' onclick='lock_chat(`"+v.id+"`)'>Kunci Chat</a><img id='loading-1"+v.id+"' src='"+loading_src+"' style='width: 30px; height: 30px; margin-top: -10px; display: none;' /></div><div id='chat-history"+v.id+"' class='chat-message-history'></div><div id='sender"+v.id+"' class='chat-message-sender'><div class='form-inline' style='margin-top:-7px;'><div class='form-group' style='width:85%'><input id='text-msg"+v.id+"' type='text' maxlength='150' class='form-control' placeholder='Input pesan disini (maks 150 karakter)' /></div><a id='btn-send"+v.id+"' class='btn btn-primary' style='cursor: pointer;' onclick='send_chat(`"+v.id+"`)'><span class='fa fa-send'></span></a><img id='loading-2"+v.id+"' src='"+loading_src+"' style='width: 35px; height: 35px; display: none;' /></div></div></div>");
                    });
                    $("#last_id").val(e.last_id);
                    $("#all_id").val(e.all_id);
                    loop_check_new_chat();
                } else {
                    loop_check_new_chat();
                }
            }
        });
    }

    function loop_check_new_chat(){
        setTimeout(function(){
            check_new_chat();
        },1000);
    }

    function check_new_message(){
        var last_id = $("#last_message_id").val();
        $.ajax({
            type: "POST",
            url: "<? echo site_url('admin/livechat/check_new_message'); ?>",
            data: {last_id:last_id},
            dataType: "JSON",
            success: function(e){
                if (e.data.length > 0) {
                    $.each(e.data, function(i, v){
                        if ($("#chat-history"+v.chat_id).length) {
                            var class_chat = "chat-me";
                            var chat_name = v.name;
                            if (v.admin_id == 0) {
                                class_chat = "chat-you";
                                chat_name = $("#username"+v.chat_id).text();
                            }
                            $("#updatedate"+v.chat_id).text(v.datetime);
                            $("#chat-history"+v.chat_id).append("<div class='"+class_chat+"'><p class='chat-person'>"+chat_name+"</p><p class='chat-msg'>"+v.message+"</p><p class='chat-time'>"+get_time(v.datetime)+"</p></div>");
                            $("#last_message_id").val(e.last_id);
                        }
                    });
                    loop_check_new_message();
                } else {
                    loop_check_new_message();
                }
            }
        });
    }

    function loop_check_new_message(){
        setTimeout(function(){
            check_new_message();
        },1000);
    }

    function get_time(datetime){
        var pisah = datetime.split(" ");
        var pecah = pisah[1].split(":");
        return pecah[0]+":"+pecah[1];
    }

    function open_chat(id){
        var active_now = $("#active_chat").val();
        if (id != active_now) {
            $("#active_chat").val(id);
            $.ajax({
                type: "POST",
                url: "<? echo site_url('admin/livechat/change_chat_active'); ?>",
                data: {id:id},
                success: function(){

                }
            });
            var all_id = $("#all_id").val();
            var data = all_id.split("@");
            $.each(data, function(i, v){
                if (v == id) {
                    $("#message"+v).show();
                    $("#chat"+v).addClass("aktif");
                } else {
                    $("#message"+v).hide();
                    $("#chat"+v).removeClass("aktif");
                }
            });
        }
    }

    function send_chat(id){
        var message = $("#text-msg"+id).val();
        $("#btn-send"+id).hide();
        $("#loading-2"+id).show();
        $.ajax({
            type: "POST",
            url: "<? echo site_url('admin/livechat/send_message'); ?>",
            data: {id:id,message:message},
            success: function(e){
                $("#text-msg"+id).val("");
                $("#loading-2"+id).hide();
                $("#btn-send"+id).show();
            }
        });
    }

    function lock_chat(id){
        $("#btn-lock"+id).hide();
        $("#loading-1"+id).show();
        $.ajax({
            type: "POST",
            url: "<? echo site_url('admin/livechat/lock_chat'); ?>",
            data: {id:id},
            success: function(){
                $("#loading-1"+id).hide();
            }
        });
    }
</script>

<style>
	.livechat-btn {
	    width: 100px;
		position: fixed;
		right: 0px;
		bottom: 20px;
		z-index: 999;  
		cursor:pointer;
		margin-right: 20px;
	}

	.livechat-container {
		position: fixed;
		width: 340px;
		height: 450px;
		z-index: 999;
		right: 5px;
		bottom: 75px;
		padding: 0px;
		overflow: hidden;
		overflow-y: auto;
		background: #e9eef4;
		scrollbar-color: #187EA8 #fff;
		scrollbar-width: thin;
		box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
		border-radius: 10px 10px 0px 0px;
	}

	.livechat-sender {
		position: fixed;
		width: 340px;
		height: 50px;
		right: 5px;
		bottom: 25px;
		background: #fff;
		box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
		border-radius: 0px 0px 10px 10px;
		display: none;
	}

	.livechat-chat {
		margin: 10px;
	}

	.chat-me {
		background: white;
		box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
		border-radius: 10px;
		padding: 10px 10px 10px 15px;
		margin-left: 50px;
		margin-bottom: 10px;
		background: #187ea8;
		word-wrap: break-word;
	}

	.chat-you {
		background: #fff;
		border-radius: 10px;
		box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
		padding: 10px 10px 10px 15px;
		margin-right: 50px;
		margin-bottom: 10px;
		word-wrap: break-word;
	}

	.chat-person {
		text-align: left;
		font-size: 11px;
		font-weight: bold;
		margin-bottom: 0px;
	}

	.chat-msg {
		text-align: justify;
		font-size: 12px;
		margin-bottom: 5px;
	}

	#top-header span:hover {
		background-color: red;
	}
	
	.text-bottom {
	    margin-top: 10px;
	    /*margin-right: 10px;*/
	    float:right;
	    font-weight: bold;
	    font-size: 15px;
	}
</style>
<?php  
    $link_wa = "https://api.whatsapp.com/send?phone=".$web_info['wa']."&text=Halo%20Prime%20Forklift%20saya%20order";
?>
<div class="livechat-btn" onclick="window.open('<?= $link_wa; ?>','_blank')">
    <img src="https://www.primeforklift.co.id/assets/images/wa_logo.png">
    <span class="text-bottom">Hubungi kami</span>
</div>
<!--<div class="portfolio-img-wrap">-->
<!--	<a href="#livechat" data-toggle="collapse">-->
<!--		<img src="https://www.primeforklift.co.id/assets/images/wa_logo.png" class="livechat-btn">-->
<!--	</a>-->
<!--</div>-->
<div id="livechat" class="livechat-container collapse">
	<div style="background-color: #fff; width: 100%; padding: 5px; color: black; position: sticky; top: 0px;">
		<p id="top-header" style="text-align: right; padding-top: 15px"><span data-toggle="collapse" data-target="#livechat" style="padding: 5px; font-size: 15px; cursor: pointer;" class="fa fa-minus"></span><span id="btn-close-chat" style="padding: 5px; font-size: 15px; cursor: pointer;" class="fa fa-times" onclick="close_chat()"></span><img id="loading-1" src="<? echo IMG_PATH; ?>loading.jpg" style="width: 30px; height: 30px; display: none;"></p>
		<p style="text-align: center; margin-top: -35px; font-size: 20px; font-weight: bold;">Support Chat Live</p>
		<hr style="margin-top: 15px; margin-bottom: 10px;">
		<img src="<? echo IMG_PATH; ?>cs.png" class="img-circle" style="width: 50px; height: 50px; border: 1px solid black;"><span style="margin-left: 10px; font-weight: bold;">Customer Service</span>
	</div>
	<div class="livechat-chat">
		<span id="last_id" lt="0"></span>
		<form id="form-regis" style="display: none;">
			<div class="form-group">
				<label for="name">Name</label>
				<input type="name" name="name" class="form-control" id="name" placeholder="Name">
			</div>
			<div class="form-group" style="display: none;">
				<label for="email">Email</label>
				<input type="email" name="email" class="form-control" id="email" placeholder="Email">
			</div>
			<div class="form-group">
				<label for="phone">Phone Number</label>
				<input type="text" name="phone" class="form-control" id="phone" placeholder="Phone">
			</div>
			<div class="form-group">
				<label for="message">Message (Optional)</label>
				<textarea name="message" class="form-control" id="message" rows="3" maxlength="150" style="resize: none;"></textarea>
			</div>
			<a id="btn-start-chat" class="btn btn-sm btn-primary" style="margin-top: -20px; cursor: pointer;" onclick="save_chat()">Start Chat</a>
			<img id="loading-2" src="<? echo IMG_PATH; ?>loading.jpg" style="width: 35px; height: 35px; margin-top: -20px; display: none;">
		</form>
		<div id="chat-history" style="display: none;">
			
		</div>
	</div>
	<div class="livechat-sender" id="sender">
		<div style="vertical-align: middle;">
			<table>
				<tr>
					<td width="270"><input type="text" name="message" class="form-control" id="text-msg" placeholder="Input message here" maxlength="150" style="width: 100%; margin-top: 5px; margin-left: 5px; text-transform: none; border: 1px solid #fff"></td>
					<td style="padding-left: 10px;"><a id="btn-send-msg" class="btn btn-primary" style="cursor: pointer; margin-top: -15px;" onclick="send_message()"><span class="fa fa-send"></span></a>
						<img id="loading-3" src="<? echo IMG_PATH; ?>loading.jpg" style="width: 30px; height: 30px; margin-bottom: 15px; display: none;"></td>
					</tr>
				</table>
			</div>
		</div>
	</div>
	<script>
		$(document).ready(function(){
			first_load();
		});

		function first_load(){
			var last_id = $("#last_id").attr("lt");
			$.ajax({
				type: "POST",
				url: "<? echo site_url('latest/chat/check_livechat'); ?>",
				data: {last_id:last_id},
				dataType: "JSON",
				success: function(e){
					if (e.available == 1) {
						if (e.locked == 0) {
							chat_opened(e.name);
							if (e.count > 0) {
								var jml = 0;
								$.each(e.messages, function(i, val){
									jml++;
									var chat_name = "Saya";
									var class_chat = "chat-me";
									var msg_color = "#fff";
									var margin_person = "margin-left:50px";
									var time = get_time(val.datetime);
									if (val.admin_id > 0) {
										chat_name = "CS - "+val.name;
										class_chat = "chat-you";
										msg_color = "#000";
										margin_person = "margin-left:5px";
									}
									$("#chat-history").append("<span class='chat-person' style='"+margin_person+"'>"+chat_name+" "+get_time(val.datetime)+"</span><div class='"+class_chat+"'><p class='chat-msg' style='color:"+msg_color+"'>"+val.message+"</p></div>");
									if (i == e.count - 1) {
										$("#last_id").attr("lt", val.id);
									}
								});
								if (jml == e.count) {
									loop_load();
								}
							} else {
								loop_load();
							}
						} else {
							$("#last_id").attr("lt","0");
							chat_closed();
						}
					} else {
						chat_closed();
					}
				}
			});
		}

		function loop_load(){
			setTimeout(function(){
				first_load();
			},1000);
		}

		function get_time(datetime){
			var pisah = datetime.split(" ");
			var pecah = pisah[1].split(":");
			return pecah[0]+":"+pecah[1];
		}

		function chat_closed(){
			$("#chat-header").text("Form Pengisian Data Livechat");
			$("#btn-close-chat").hide();
			$("#form-regis").show();
			$("#chat-history").hide();
			$("#chat-history").html("");
			$("#sender").hide();
		}

		function chat_opened(name){
			$("#chat-header").text(name);
			$("#btn-close-chat").show();
			$("#form-regis").hide();
			$("#chat-history").show();
			$("#sender").show();
		}

		function clear_form(){
			$("#name").val("");
			$("#email").val("");
			$("#phone").val("");
			$("#message").val("");
		}

		function save_chat(){
			var data = $("#form-regis").serialize();
			$("#btn-start-chat").hide();
			$("#loading-2").show();
			if ($("#name").val().isEmpty()) {
				$("#btn-start-chat").show();
				$("#loading-2").hide();
				alert('Nama harus diisi');
			} else if ($("#phone").val().isEmpty()) {
				$("#btn-start-chat").show();
				$("#loading-2").hide();
				alert('Phone harus diisi');
			} else {
				$.ajax({
					type: "POST",
					url: "<? echo site_url('latest/chat/save_chat'); ?>",
					data: data,
					success: function(e){
						$("#loading-2").hide();
						$("#btn-start-chat").show();
						clear_form();
						chat_opened("Loading..");
						first_load();
					}
				});
			}
		}

		function close_chat(){
			$("#btn-close-chat").hide();
			$("#loading-1").show();
			$.ajax({
				type: "GET",
				url: "<? echo site_url('latest/chat/close_chat'); ?>",
				success: function(){
					$("#last_id").attr("lt","0");
					$("#loading-1").hide();
					chat_closed();
				}
			});
		}

		function send_message(){
			$("#btn-send-msg").hide();
			$("#loading-3").show();
			var data = $("#text-msg").serialize();
			$.ajax({
				type: "POST",
				url: "<? echo site_url('latest/chat/send_message'); ?>",
				data: data,
				success: function(){
					$("#text-msg").val("");
					$("#loading-3").hide();
					$("#btn-send-msg").show();
				}
			});
		}

		$("#text-msg").on('keypress',function(e) {
			if(e.which == 13) {
				send_message();
			}
		});
	</script>
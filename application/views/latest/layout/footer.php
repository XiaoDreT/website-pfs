<style>
    .new-footer {
        width: 100%;
        border: 5px solid #1D3A85;
        border-bottom: none;
        border-radius: 50px 50px 0px 0px;
        padding: 10px;
    }
    .footer-top {
        font-size: 15px;
        text-align: center;
        font-weight: bold;
    }
    h2, h3 {
        color: black;
        font-weight: bold;
        margin-bottom: 10px;
        margin-top: 30px;
    }
    .footer-contact{
        margin-top: 0px;
        font-weight: bold;
        font-size: 14px;
    }
</style>
<div class="new-footer">
    <div class="container-fluid">
        <p class="footer-top">TO BE A <span style="color: #1D3A85;">TRUSTED</span> PARTNER IN MATERIAL HANDLING</p>
        <div class="col-sm-5" style="padding-left: 40px">
            <h2>Maps</h2>
			<iframe width="100%" height="250" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.com/maps?width=100%25&amp;height=250&amp;hl=en&amp;q=PT.%20Prime%20Forklift%20Services+(PT.%20Prime%20Forklift%20Services)&amp;t=&amp;z=14&amp;ie=UTF8&amp;iwloc=B&amp;output=embed"></iframe>
        </div>
        <div class="col-sm-2"></div>        
        <div class="col-sm-5">
            <h2>PT. Prime Forklift Services</h2>
            <p class="footer-contact"><?php echo $web_info['address']." ".$web_info['city']." ".$web_info['country']; ?><br>
                <?php echo $web_info['email']; ?><br>
                <?php echo $web_info['fax']." | ".$web_info['phone']; ?>
            </p>
            <div class="row">
                <div class="col-md-6">
                    <div class="portfolio-img-wrap">
                        <?php  
                            $link_wa = "https://api.whatsapp.com/send?phone=".$web_info['wa']."&text=Halo%20Prime%20Forklift%20saya%20order";
                        ?>
                        <a href="<? echo $link_wa; ?>" target="_blank">
                            <img class="img-footer-link" src="<?php echo IMG_PATH; ?>wa.png">
                        </a>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="portfolio-img-wrap">
                        <a href="<?php echo $web_info['tokped']; ?>" target="_blank">
                            <img class="img-footer-link" src="<?php echo IMG_PATH; ?>tokped.png">
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="copyright" style="background: #1D3A85">
    <div class="container">
        <p>All Rights Reserved 2015-2020 &copy; PrimeForklift.co.id </p>
        <p>Page rendered in <strong>{elapsed_time}</strong> seconds.</p>
    </div>
</div>
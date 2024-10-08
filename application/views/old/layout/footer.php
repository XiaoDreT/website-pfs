<div class="footer">
    <div class="container">
        <div class="col-sm-5">
            <h5>Map</h5>
            <!--<iframe src="https://www.google.com/maps/embed?pb=!1m0!3m2!1sid!2sid!4v1452934528863!6m8!1m7!1sZFwgZ3Dxzmmrn5G5j0EMFg!2m2!1d-6.368006629975693!2d107.3701632061954!3f9!4f0!5f0.7820865974627469" width="100%" height="100%" frameborder="0" style="border:0" allowfullscreen></iframe>-->
			<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d921.5999710815186!2d107.36976482918045!3d-6.367723999712!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e69741b7e56149d%3A0xf2ffdcc12cd63382!2sJl.+Raya+Kosambi+No.11%2C+Klari%2C+Karawang%2C+Jawa+Barat+41371!5e1!3m2!1sid!2sid!4v1453081148323" width="100%" height="250" frameborder="0" style="border:0" allowfullscreen></iframe>
        </div>
        <div class="col-md-3">
            <h5>PT. Prime Forklift Services</h5>
            <p>
                <?php echo $web_info['address']; ?> <br />
                <?php echo $web_info['city']; ?> - <?php echo $web_info['country']; ?>
            </p>
            <h5>Contact</h5>
            <ul class="social">
                <!-- Here you can add your social links. Go to http://fontawesome.io/icons/#brand to add more of these  -->
                <li><a target="_blank" href="https://www.facebook.com/primeforklift"><i class="fa fa-facebook"></i> <?php echo $web_info['fb']; ?></a></li>
                <li><p><i class="fa fa-whatsapp"></i> <?php echo $web_info['phone']; ?> </p></li>
                <li><p><i class="fa fa-fax"></i> <?php echo $web_info['fax']; ?> </p></li>
                <li><p><i class="fa fa-envelope"></i><a target="_blank" href="mailto: <?php echo $web_info['address']; ?>"> <?php echo $web_info['email']; ?></a></p></li>
            </ul>
        </div>
        <div class="col-md-4 contact-footer">
            <div class="footer-form">
				<form method="post" action="<?php echo site_url('home');?>">
					<h5>Contact Us</h5>
					<input type="text" name="txt_nama" placeholder="Name">
					<input type="text" name ="txt_email" placeholder="E-Mail">
					<textarea name="content" placeholder="Message" rows="3"></textarea>
					<input type="submit" name="submit" class="submit-bt" Send />
				</form>
            </div>
        </div>
    </div>
</div>
<div class="copyright">
    <div class="container">
        <p>All Rights Reserved 2015-2020 &copy; PrimeForklift.co.id </p>
        <p>Page rendered in <strong>{elapsed_time}</strong> seconds.</p>
    </div>
</div>
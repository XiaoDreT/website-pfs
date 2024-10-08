<?php $this->load->view('old/layout/navigation') ?>

<div class="container">

    <div class="col-lg-12 contact content-header" id="pricing">

        <div class="col-md-6 no-padding-left">

            <h5>Contact Us:</h5>

            <p><i class="fa fa-map-marker"></i><?php echo $rec_data['address']; ?></p>

            <p><i class="fa fa-envelope"></i><?php echo $rec_data['email']; ?></p>

            <p><i class="fa fa-phone"></i><?php echo $rec_data['phone']; ?></p>

            <div class="contact-detail">

                <h5>Timing:</h5>

                <p>Monday - Saturday : <span>10 AM to 6 PM</span></p>

                <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.</p>

            </div>

        </div>

        <div class="col-md-6">

            <input type="text" placeholder="Name">

            <input type="text" placeholder="E-Mail">

            <textarea name="" id="" cols="30" rows="10" placeholder="Message"></textarea>

            <button class="send">Send</button>

        </div>

    </div> 



</div>


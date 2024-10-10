<style>
    .img-left-title {
        width: 300px;
        height: 70px;
        float: left;
        left: 0px;
    }

    .img-right-title {
        width: 300px;
        height: 70px;
        float: right;
        right: 0px;
    }

    .catalogue-title {
        padding: 0 20px 5px 20px;
        border-bottom: 5px solid blue;
        text-align: center;
        font-size: 20px;
    }

    .catalogue {
        padding: 2px;
        cursor: pointer;
        box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
    }

    .catalogue-btn {
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        display: none;
    }

    .catalogue:hover img {
        filter: brightness(40%);
    }

    .catalogue:hover a {
        display: block;
    }

    .item { 
        width: 20%;
        padding: 10px;
    }

    #exampleSlider {
        position: relative; 
        margin-bottom: 50px;     /* recommended */
    }

    #exampleSlider .MS-content {
        white-space: nowrap;     /* required */
        overflow: hidden;        /* required */
        margin: 0 5%;            /* makes room for L/R arrows */
    }

    #exampleSlider .MS-content .item {
        display: inline-block;   /* required */
        width: 20%;              /* required * Determines number of visible slides */
        position: relative;      /* required */
        vertical-align: top;     /* required */
        overflow: hidden;        /* required */
        height: 100%;            /* recommended */
        white-space: normal;     /* recommended */
    }
    
    #exampleSlider .MS-controls button {
        position: absolute;
        border: none;
        background: transparent;
        font-size: 35px;
        outline: 0;
        top: 35%;
    }

    #exampleSlider .MS-controls .MS-left {
        left: 10px;
    }

    #exampleSlider .MS-controls .MS-right {
        right: 10px;
    }

    @media (max-width: 993px) {
        #exampleSlider .MS-controls .MS-left {
            left: -2px;
        }

        #exampleSlider .MS-controls .MS-right {
            right: -2px;
        }

        #exampleSlider .MS-content .item {
            width: 50%;
        }

        .col-sm-4 {
        	height: 175px;
        	margin-bottom: 30px;
        }

        .catalogue {
        	margin-bottom: -35px;
        }
    }

    @media (max-width: 507px) {
        .img-left-title {
            width: 200px;
            height: 50px;
        }

        .img-right-title {
            width: 200px;
            height: 50px;
        }

        #exampleSlider .MS-content .item {
            width: 100%;
        }

    }

    @media (max-width: 768px) {
        .col-sm-4 {
        	height: auto;
        	margin-bottom: 0;
        }
    }

    
</style>
<?php $this->load->view('latest/home/slider'); ?>
<?php $this->load->view('latest/home/product'); ?>
<?php $this->load->view('latest/home/services'); ?>
<?php $this->load->view('latest/home/sparepart'); ?>
<?php $this->load->view('latest/home/blog'); ?>
<?php $this->load->view('latest/home/client'); ?>
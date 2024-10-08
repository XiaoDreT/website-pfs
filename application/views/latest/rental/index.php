<?php $this->load->view('latest/layout/navigation') ?>
<div class="container" style="clear: left;">
	<div class="row">
		<div class="col-md-6">
			<img src="<?= IMG_PATH; ?>rental.png" style="margin-bottom: 5px"/>
		</div>
		<div class="col-md-6" style="padding-left: 10px">
			<p style="text-align: left; font-size: 15px">
				PT. PRIME FORKLIFT SERVICES Salah satu perusahaan jasa sewa forklift yang pelayanan nya mencakup daerah Karawang , Cikarang , Bekasi
				dan sekitarnya. menjadi perusahaan sewa yang terpercaya dan pelayanan yang profesional untuk membantu kelancaran perindustrian.<br><br>
				Kenapa harus sewa forklift ? Besarnya biaya maintance forklift dan dapat menimbulkan kendala dalam semua proses berlangsungnya
				aktifitas di pabrik maka dari itu kami menawarkan solusi bagi anda dengan sewa kontrak kami menjamin semua kelancaran alat berat
				forklift ketika di pakai.<br><br>
				Tidak memiliki Operator ? Kami siap support operator forklift berpengalaman dan tersertifikasi K3
			</p><br>
			<b style="font-size: 20px; font-weight: bold;">KENAPA HARUS PILIH KAMI ?</b><br><br>
			<b style="font-size: 17px">1. Pelayanan Prima</b><br>
			<span style="font-size: 15px">Tim kami melayani pelanggan dengan prima dari mulai pemilihan unit, pembuatan kontrak hingga pengiriman unit sampai ke lokasi
			proyek. selain itu kami mempunyai teknisi yang standby jika terjadi sesuatu yang secepatnya perlu tindakan.</span><br><br>
			<b style="font-size: 17px">2. Unit Prima</b><br>
			<span style="font-size: 15px">Semua unit forklift disediakan dalam kondisi terawat dengan tipe unit yang variatif seperti forklift diesel, elektrik, reachtruck ,stacker
			elektrik,handpallet dll.</span><br><br>
			<b style="font-size: 17px">3. Harga Sewa Kompetitif</b><br>
			<span style="font-size: 15px">Kami ada beberapa layanan di antaranya : rental harian, bulanan maupun tahunan. Spesialis alat berat terpercaya, memberikan harga
			sesuai yang pelanggan butuhkan dan bersaing serta selalu memberikan layanan yang prima untuk kepuasan pelanggan.</span>
		</div>
	</div>
	<center style="margin-top: 25px;"><b style="font-size: 20px; font-weight: bold;">PRODUK KAMI</b></center>
	<br>
	<div class="row">
		<div class="col-md-3">
			<img src="<?= IMG_PATH; ?>diesel.png" style="margin-bottom: 5px; cursor: pointer;" onclick="goToUnit()" />
		</div>
		<div class="col-md-3">
			<img src="<?= IMG_PATH; ?>counter_balance.png" style="margin-bottom: 5px; cursor: pointer;" onclick="goToUnit()"/>
		</div>
		<div class="col-md-3">
			<img src="<?= IMG_PATH; ?>reachtruck.png" style="margin-bottom: 5px; cursor: pointer;" onclick="goToUnit()"/>
		</div>
		<div class="col-md-3">
			<img src="<?= IMG_PATH; ?>stacker.png" style="margin-bottom: 5px; cursor: pointer;" onclick="goToUnit()"/>
		</div>
	</div>
	<br><br>
</div>

<script type="text/javascript">
	function goToUnit(){
		window.location.href = '<?= site_url('product/'); ?>';
	}
</script>
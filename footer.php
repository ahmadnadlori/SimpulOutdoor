<?php
$logi = $instansi->logo();
$finstansi = $instansi->detail();
?>

<section class="footer-section">
	<div class="container">
		<div class="footer-logo text-center">
			<a href="./"><img src="media/upload-instansi/<?= $logi['gambar'] ?>" alt=""></a>
		</div>

	</div>
	<div class="social-links-warp">
		<div class="container">
			<div class="social-links">
				<a href="https://www.instagram.com/nadlori8/" class="instagram"><i class="fa fa-instagram"></i><span>instagram</span></a>


				<a href="https://web.facebook.com/Doyscout43/" class="facebook"><i class="fa fa-facebook"></i><span>facebook</span></a>

			</div>

			<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
			<p class=" text-center mt-5">Copyright &copy;<script>
					document.write(new Date().getFullYear());
				</script> | 20190910007 | <?= $finstansi['nama_instansi'] ?></p>
			<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->

		</div>
	</div>
</section>
<?php
	$sql = $koneksi->query("SELECT count(id_tagihan) as tagih_b from tb_tagihan where status='BL' and id_pelanggan='$data_id'");
	while ($data= $sql->fetch_assoc()) {
	
		$tagih=$data['tagih_b'];
	}
?>

<?php
	$sql = $koneksi->query("SELECT count(id_tagihan) as tagih_l from tb_tagihan where status='LS' and id_pelanggan='$data_id'");
	while ($data= $sql->fetch_assoc()) {
	
		$lunas=$data['tagih_l'];
	}
?>



<section class="content-header">
	<h1>
		Dashboard |
		<small>Pelanggan</small>
	</h1>
</section>

<!-- Main content -->
<section class="content">
	<!-- Small boxes (Stat box) -->
	<div class="row">

		<div class="col-lg-6 col-xs-6">
			<!-- small box -->
			<div class="small-box bg-yellow">
				<div class="inner">
					<h2>
						<b>
							<?= $tagih; ?>
						</b>
					</h2>

					<p>Belum Bayar</p>
				</div>
				<div class="icon">
					<i class="ion-sad"></i>
				</div>
				<a href="#" class="small-box-footer">More info
					<i class="fa fa-arrow-circle-right"></i>
				</a>
			</div>
		</div>

		<div class="col-lg-6 col-xs-6">
			<!-- small box -->
			<div class="small-box bg-green">
				<div class="inner">
					<h2>
						<b>
							<?= $lunas; ?>
						</b>
					</h2>

					<p>Lunas</p>
				</div>
				<div class="icon">
					<i class="ion-happy"></i>
				</div>
				<a href="#" class="small-box-footer">More info
					<i class="fa fa-arrow-circle-right"></i>
				</a>
			</div>
		</div>
	</div>

	<div class="box box-primary">
		<div class="box-header with-border">
			DATA PELANGGAN
			<div class="box-tools pull-right">
				<button type="button" class="btn btn-box-tool" data-widget="collapse">
					<i class="fa fa-minus"></i>
				</button>
				<button type="button" class="btn btn-box-tool" data-widget="remove">
					<i class="fa fa-remove"></i>
				</button>

			</div>
		</div>
		<!-- /.box-header -->
		<div class="box-body">
			<div class="table-responsive">
				<table id="" class="table table-bordered table-striped">
					<thead>
						<tr>
							<th>No HP</th>
							<th>Password</th>
							<th>E-Mail</th>
							<th>Paket</th>
							<th>Tarif</th>
						</tr>
					</thead>
					<tbody>

						<?php
                  $no = 1;
                  $sql = $koneksi->query("SELECT * from tb_pelanggan where id_pelanggan='$data_id'");
                  while ($data= $sql->fetch_assoc()) {
                ?>

						<tr>
							<td>
								<?php echo $data['no_hp']; ?>
							</td>
							<td>
								<?php echo $data['password']; ?>
							</td>
							<td>
								<?php echo $data['email']; ?>
							</td>
							<td>
								<?php echo $data['paket']; ?>
							</td>
							<td>
								<?php echo $data['tarif']; ?>
							</td>
						</tr>
						<?php
						}
						?>
					</tbody>
			</div>
		</div>
	
</section>

            <table class="table">
                    <caption style="font-size: 16px; font-weight: bold; margin-bottom:5px;">Pembayaran Dapat Dilakukan sbb:</caption>
                    <tr>
                    </tr>
                    
                    <tr>
                        <td>1. DANA 089603758857 a/n Muhamad Riyadhul Jannah</td>
                    </tr>
                    <tr>
                        <td>2. OVO 089603758857 a/n Muhamad Riyadhul Jannah</td>
                    </tr>
                    <tr>
                        <td>3. Go Pay 089603758857 a/n Muhamad Riyadhul Jannah</td>
                    </tr>
					<tr>
					    <td>4. Shopee Pay 089603758857 a/n Muhamad Riyadhul Jannah</td>
                    </tr>
                    <tr>
					    <td>5. Link Aja 089603758857 a/n Muhamad Riyadhul Jannah</td>
                    </tr>
                    <tr>
                        <td>6. Bank BRI 010701094066507 a/n Muhamad Riyadhul Jannah</td>
                    </tr>
                    <tr>
                        <td>7. Bank BCA 1341828258 a/n Muhamad Riyadhul Jannah</td>
                    </tr>
                    <tr>
                        <td>8. Scan code QR</td>
                        
                        
                        
                    </tr>
					</tr>
                </table>
                
                <div></div><img src="dist/img/qris.jpg" alt="Workplace" usemap="#workmap" width="400" height="379"></div>
                
                    Screenshot bukti pembayaran, kirim ke WA 089603758857
                <br />
                    Info lebih lanjut hubungi Muhamad Riyadhul Jannah / Yayat.
			</div>
		</div>
	</div>
</section>

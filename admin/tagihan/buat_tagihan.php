<section class="content">
	<div class="row">
		<div class="col-md-12">
			<div class="box box-primary">
				<div class="box-header with-border">
					<h3 class="box-title">BUAT TAGIHAN</h3>
					<div class="box-tools pull-right">
						<button type="button" class="btn btn-box-tool" data-widget="collapse">
							<i class="fa fa-minus"></i>
						</button>
						<button type="button" class="btn btn-box-tool" data-widget="remove">
							<i class="fa fa-remove"></i>
						</button>
					</div>
				</div>

				<form class="form-horizontal" action="" method="post" enctype="multipart/form-data">
					<div class="box-body">

						<div class="form-group">
							<label class="col-sm-2 control-label">Bulan</label>
							<div class="col-sm-4">
								<select name="bulan" id="bulan" class="form-control select2" style="width: 100%;" required>
									<option selected="selected">-- Pilih Bulan --</option>
									<?php
								// ambil data dari database
								$query = "SELECT * FROM tb_bulan";
								$hasil = mysqli_query($koneksi, $query);
								while ($row = mysqli_fetch_array($hasil)) {
								?>
									<option value="<?php echo $row['id_bulan'] ?>">
										<?php echo $row['id_bulan'] ?>
										-
										<?php echo $row['bulan'] ?>
									</option>
									<?php
								}
								?>
								</select>
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-2 control-label">Tahun</label>
							<div class="col-sm-4">
								<select name="tahun" id="tahun" class="form-control select2" style="width: 100%;" required>
									<option>-- Pilih Tahun --</option>
									<option value="2024" selected>2024</option>
									<!--<option>2024</option>
									<option>2025</option>
									<option>2026</option>
									<option>2027</option>
									<option>2028</option>
									<option>2029</option>
									<option>2030</option>
									<option>2031</option>
									<option>2032</option>-->
								</select>
							</div>
						</div>

						<!-- /.box-body -->
						<div class="box-footer">
							<div class="table-responsive">
								<table class="table table-bordered table-striped">
									<thead>
										<tr>
										    <!--<th><input id="chk_all" name="chk_all" type="checkbox"  /></th>-->
											<th>No</th>
											<th>ID pelanggan</th>
											<th>Nama</th>
											<th>Paket</th>
											<th>Tagihan (Rp.)</th>
											<!--<th>Aksi</th>-->
											
										</tr>
									</thead>
									<tbody>
									    
										<?php
										$no = 1;
										$sql = $koneksi->query("SELECT * from tb_pelanggan");
										while ($data= $sql->fetch_assoc()) {
										?>
										<tr>
										    <!--<td width="20px">
                                            <!--membuat checkbox dengan name="hapus[]" tanda [] digunakan untuk menampung banyak data
                                            <input type="checkbox" name="chk_id[]" class='chkbox' value="<?php echo $data['id_pelanggan']; ?>">
                                            </td>-->
											<td>
												<?php echo $no++; ?>
											</td>
											<td>
												<input type="text" name="id_pelanggan[]" id="id_pelanggan" class="form-control" value="<?php echo $data['id_pelanggan']; ?>"
												 readonly>
											</td>
											<td>
												<input type="text" name="nama[]" class="form-control" value="<?php echo $data['nama']; ?>"
												 readonly>
											</td>
											<td>
												<input type="text" name="paket[]" class="form-control" value="<?php echo $data['paket']; ?>"
												 readonly>
											</td>
											<td>

												<input type="text" name="tarif[]" id="tarif" class="form-control" value="<?php echo $data['tarif']; ?>"
												 readonly>
											</td>
											
											
											
										</tr>
										<?php
										}
										?>
									</tbody>
								</table>
							</div>
						</div>
						<div class="box-footer">
							<a href="?page=buka-tagihan" class="btn btn-warning">Batal</a>
							<input type="submit" name="Simpan" value="Buat Tagihan Semua" class="btn btn-primary">
							<!--<input type="submit" name="Pilih" value="Buat Tagihan Pilih" class="btn btn-primary">-->
							<input id="submit" name="submit" type="submit" class="btn btn-danger" value="Delete Selected Row(s)" />
						</div>
				</form>
				</div>
			</div>
		</div>
</section>



<?php
    if (isset ($_POST['Simpan'])){

		$aid = $_POST['id_pelanggan'];
		$atarif = $_POST['tarif'];

		if(!empty($aid)){
			for($a = 0; $a < count($aid); $a++){
				if(!empty($aid[$a])){
					$iid = $aid[$a];
					$itarif = $atarif[$a];

					$sql_simpan = "INSERT INTO tb_tagihan (bulan, tahun, id_pelanggan, tagihan, status) VALUES (
					   '".$_POST['bulan']."',
					   '".$_POST['tahun']."',
					   '$iid',
					   '$itarif',
					   'BL')";
					 $query_simpan = mysqli_query($koneksi, $sql_simpan);
					 
				}
			}
		}
    
    if ($query_simpan){
		mysqli_close($koneksi);
		
		
      echo "<script>
      Swal.fire({title: 'Buat Tagihan Berhasil',text: '',icon: 'success',confirmButtonText: 'OK'
      }).then((result) => {
          if (result.value) {
              window.location = 'index.php?page=buka-tagihan';
          }
      })</script>";
      }else{
      echo "<script>
      Swal.fire({title: 'Buat Tagihan Gagal',text: '',icon: 'error',confirmButtonText: 'OK'
      }).then((result) => {
          if (result.value) {
              window.location = 'index.php?page=buat-tagihan';
          }
      })</script>";
    }
  }
  ?>
  <script src="js/jquery.js"></script>
<script type="text/javascript">
$(document).ready(function(){
    $('#chk_all').click(function(){
        if(this.checked)
            $(".chkbox").prop("checked", true);
        else
            $(".chkbox").prop("checked", false);
    });
});

$(document).ready(function(){
    $('#delete_form').submit(function(e){
        if(!confirm("Confirm Delete?")){
            e.preventDefault();
        }
    });
});
</script>
  

    

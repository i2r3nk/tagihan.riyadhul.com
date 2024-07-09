<?php

    if(isset($_GET['kode'])){
        $sql_cek = "SELECT * FROM tb_tagihan WHERE id_tagihan='".$_GET['kode']."'";
        $query_cek = mysqli_query($koneksi, $sql_cek);
        $data_cek = mysqli_fetch_array($query_cek,MYSQLI_BOTH);
    }
?>
<section class="content">
	<div class="row">
		<div class="col-md-12">
			<!-- general form elements -->
			<div class="box box-success">
				<div class="box-header with-border">
					<h3 class="box-title">Ubah Data Tagihan</h3>
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
				<form class="form-horizontal" action="" method="post" enctype="multipart/form-data">
					<div class="box-body">
						<div class="form-group">
							<label class="col-sm-2 control-label">ID Tagihan</label>
							<div class="col-sm-2">
								<input type="text" class="form-control" id="id_tagihan" name="id_tagihan" value="<?php echo $data_cek['id_tagihan']; ?>"
								 readonly/>
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-2 control-label">E-Mail</label>
							<div class="col-sm-4">
								<input type="text" class="form-control" id="email" name="email" value="<?php echo $data_cek['email']; ?>">
							</div>
						</div>


						<div class="form-group">
							<label class="col-sm-2 control-label">Password</label>
							<div class="col-sm-2">
								<input type="text" class="form-control" id="password" name="password" value="<?php echo $data_cek['password']; ?>">
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-2 control-label">Nama</label>
							<div class="col-sm-4">
								<input type="text" class="form-control" id="nama" name="nama" value="<?php echo $data_cek['nama']; ?>">
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-2 control-label">Alamat</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="alamat" name="alamat" value="<?php echo $data_cek['alamat']; ?>">
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-2 control-label">No HP (Awali : 62)</label>
							<div class="col-sm-4">
								<input type="number" class="form-control" id="no_hp" name="no_hp" value="<?php echo $data_cek['no_hp']; ?>">
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-2 control-label">Paket</label>
							<div class="col-sm-4">
								<input type="text" class="form-control" id="paket" name="paket" value="<?php echo $data_cek['paket']; ?>">
							</div>
						</div>
						
						<div class="form-group">
							<label class="col-sm-2 control-label">Tarif</label>
							<div class="col-sm-4">
								<input type="number" class="form-control" id="tarif" name="tarif" value="<?php echo $data_cek['tarif']; ?>">
							</div>
						</div>

						<!-- /.box-body -->
						<div class="box-footer">
							<a href="?page=data-pelanggan" class="btn btn-default">Batal</a>
							<input type="submit" name="Ubah" value="Simpan" class="btn btn-success">
						</div>
				</form>
				</div>
				<!-- /.box -->
</section>

<?php

if (isset ($_POST['Ubah'])){
    //mulai Mahasiswaoses ubah
    $sql_ubah = "UPDATE tb_pelanggan SET
		nama='".$_POST['nama']."',
		alamat='".$_POST['alamat']."',
		no_hp='".$_POST['no_hp']."',
		email='".$_POST['email']."',
		password='".$_POST['password']."',
        paket='".$_POST['paket']."',
        tarif='".$_POST['tarif']."'
        WHERE id_pelanggan='".$_POST['id_pelanggan']."'";
    $query_ubah = mysqli_query($koneksi, $sql_ubah);

    if ($query_ubah) {
        echo "<script>
        Swal.fire({title: 'Ubah Data Berhasil',text: '',icon: 'success',confirmButtonText: 'OK'
        }).then((result) => {
            if (result.value) {
                window.location = 'index.php?page=data-pelanggan';
            }
        })</script>";
        }else{
        echo "<script>
        Swal.fire({title: 'Ubah Data Gagal',text: '',icon: 'error',confirmButtonText: 'OK'
        }).then((result) => {
            if (result.value) {
                window.location = 'index.php?page=data-pelanggan';
            }
        })</script>";
    }
}


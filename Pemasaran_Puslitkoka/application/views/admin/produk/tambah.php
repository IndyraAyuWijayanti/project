<?php
	//eror upload
	if(isset($error)){
		echo '<p class="alert laert-warning">';
		echo $error;
		echo '</p>';
	}
	
	//notif eror
	echo validation_errors('<div class="alert alert-warning">','</div>');

	//form open
	echo form_open_multipart(base_url('admin/produk/tambah'), ' class="form-horizontal"');
?>

<div class="form-group row">
	<label class="col-md-2 col-form-label control-label">Nama produk</label>
	<div class="col-md-5">
		<input type="text" name="nama_produk" class="form-control" placeholder="Nama Produk"
			value="<?php echo set_value('nama'); ?>" required>
	</div>
</div>
<div class="form-group row">
	<label class="col-md-2 col-form-label control-label">Kode Produk</label>
	<div class="col-md-5">
		<input type="text" name="kode_produk" class="form-control" placeholder="Kode Produk"
			value="<?php echo set_value('kode_produk'); ?>" required>
	</div>
</div>

<div class="form-group row">
	<label class="col-md-2 col-form-label control-label">Kategori Produk</label>
	<div class="col-md-5">
		<select name="id_kategori" class="form-control">
			<?php foreach ($kategori as $kategori) { ?>
			<option value="<?php echo $kategori->id_kategori ?>">
				<?php echo $kategori->nama_kategori ?>
			</option>
			<?php } ?>
		</select>
	</div>
</div>
<div class="form-group row">
	<label class="col-md-2 col-form-label control-label">Harga</label>
	<div class="col-md-5">
		<input type="number" name="harga" class="form-control" placeholder="Harga"
			value="<?php echo set_value('harga'); ?>" required>
	</div>
</div>

<div class="form-group row">
	<label class="col-md-2 col-form-label control-label">Upload gambar produk</label>
	<div class="col-md-5">
		<input type="file" name="gambar" class="form-control" required="required">
	</div>
</div>
<div class="form-group row">
	<label class="col-md-2 col-form-label control-label">Status produk</label>
	<div class="col-md-5">
		<select name="status_produk" class="form-control">
				<option value="Publish">Publikasikan</option>
				<option value="Draft">Simpan sebagai draft</option>
		</select>
	</div>
</div>

<div class="form-group row">
	<label class="col-md-2 col-form-label"></label>
	<div class="col-md-5">
		<button class="btn btn-success btn-lg" name="submit" type="submit">
			<i class="fa fa-save"></i> Simpan
		</button>
		<button class="btn btn-info btn-lg" name="reset" type="reset">
			<i class="fa fa-times"></i> Reset
		</button>
	</div>
</div>
					
<?php echo form_close(); ?>
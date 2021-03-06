<p>
    <a href="<?= base_url('admin/transaksi/tambah') ?>" class="btn btn-success btn-lg">
        <i class="fa fa-plus"></i> Tambah Baru
    </a>
</p>


<?php
//notifikasi
if ($this->session->flashdata('sukses')) {
    echo '<div class="alert alert-success alert-dismissible">';
    echo '  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>';
    echo $this->session->flashdata('sukses');
    echo'</div>';
}
?>
<table class="table table-bordered" width="100%">
    <thead>
        <tr>
        <tr class="bg-success">
            <th>NO</th>
            <th>TANGGAL TRANSAKSI</th>
            <th>KODE TRANSAKSI</th>
            <th>PELANGGAN</th>
            <th>JENIS PEMBAYARAN</th>
            <th>STATUS PEMBAYARAN</th>
            <th width="25%">ACTION</th>
        </tr>
    </thead>
    <tbody>
        <?php $no=1; foreach($transaksi as $transaksi){ ?>
        <tr>
            <td><?= $no++ ?></td>

            <td><?= $transaksi->tanggal_transaksi ?></td>
            <td><?= $transaksi->kode_transaksi ?></td>
            <td><?= $transaksi->nama_pelanggan ?></td>
            <td> <?php if ($transaksi->id_jenis_pembayaran == '1') { ?>
                <span>Cash</span>
                <?php } elseif ($transaksi->id_jenis_pembayaran== '2') { ?>
                <span>Angsuran</span>
                <?php } ?>
            </td>
            <td>
                <?php if ($transaksi->id_jenis_pembayaran == '1') { ?>
                <?php if ($transaksi->total == $transaksi->bayar) { ?>
                <span>Lunas</span>
                <?php } else { ?>
                <span>Belum Lunas</span>
                <?php } ?>
                <?php } elseif ($transaksi->id_jenis_pembayaran== '2') { ?>
                <?php if ($transaksi->total == $transaksi->totalbayar) { ?>
                <span>Lunas</span>
                <?php } else { ?>
                <span>Belum Lunas</span>
                <?php } ?>
                <?php } ?>
            </td>

            <td>
                <div class="btn-group">
                    <a href="<?php echo base_url('admin/transaksi/detail/'.$transaksi->kode_transaksi) ?>"
                        class="btn btn-success btn-sm"><i class="fa fa-eye"></i>Detail</a>
                    <!-- <a href="<?php echo base_url('admin/transaksi/edit/'.$transaksi->kode_transaksi) ?>"
                        class="btn btn-warning btn-sm"><i class="fa fa-edit"></i>Edit</a> -->
                </div>
                <div class="btn-group">
                    <a href="<?php echo base_url('admin/transaksi/cetak/'.$transaksi->kode_transaksi) ?>"
                        target="_blank" class="btn btn-info btn-sm"><i class="fa fa-print"></i>Cetak</a>
                </div>
                <!-- <div class="clearfix"></div> -->
                <!-- <br> -->
                <div class="btn-group">
                    <a href="<?php echo base_url('admin/transaksi/pdf/'.$transaksi->kode_transaksi) ?>"
                        class="btn btn-danger btn-sm"><i class="fa fa-file-pdf-o"></i>Unduh PDF</a>

                </div>
            </td>
        </tr>
        <?php  } ?>
    </tbody>
</table>
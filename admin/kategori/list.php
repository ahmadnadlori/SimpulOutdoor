<?php
$data = $kategori->show();
?>
<section class="pcoded-main-container">
    <div class="pcoded-content">
        <div class="page-header">
            <div class="page-block">
                <div class="row align-items-center">
                    <div class="col-md-12">
                        <div class="page-header-title">
                            <h5 class="m-b-10">Data Kategori</h5>
                        </div>
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item"><a href="index.html"><i class="feather icon-home"></i></a></li>
                            <li class="breadcrumb-item"><a href="#!">Data Kategori</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-xl-12">
                <div class="card">
                    <div class="card-body">
                        <a href="index.php?halaman=tambahkategori" class="btn btn-primary"><i class="feather icon-plus"></i> Tambah</a>
                        <hr>
                        <table id="example" class="table table-striped table-bordered">
                            <thead>
                                <tr>
                                    <th>No.</th>
                                    <th>Nama Kategori</th>
                                    <th>Tindakan</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php foreach ($data as $key => $value) : ?>
                                    <tr>
                                        <td width="5%"><?= $key + 1 ?></td>
                                        <td><?= $value['nama_kategori'] ?></td>
                                        <td width="20%">
                                            <a href="index.php?halaman=ubahkategori&id=<?= $value['id_kategori'] ?>" class="btn btn-warning"><i class="feather icon-edit"></i> Ubah</a>
                                            <a href="index.php?halaman=hapuskategori&id=<?= $value['id_kategori'] ?>" class="btn btn-danger" onclick="return confirm('Apakah anda yakin?')"><i class="feather icon-trash"></i> Hapus</a>
                                        </td>
                                    </tr>
                                <?php endforeach ?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
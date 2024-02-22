<?php
include '../../config/class.php';
include '../../config/fungsi.php';
date_default_timezone_set("Asia/Jakarta");
$tahun = $_GET['tahun'];
$data = $laporan->laporansupppertahun($tahun);
$konfigurasi = $instansi->detail();
$tgl = date("Y-m-d");
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>.:: Laporan Transaksi Pertahun ::.</title>
  <style type="text/css">
    #judul {
      width: 100%;
      margin-bottom: 20px;
      text-align: center;
    }

    @media print {
      .no-print {
        display: none;
      }
    }
  </style>
  <link href="../css/style.default.css" rel="stylesheet" type="text/css" />
  <!-- Latest compiled and minified CSS -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

  <!-- Optional theme -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
</head>

<body>
  <div id='contentwrapper' class='contentwrapper'>
    <div id="judul">
      <br />
      <br />
      <font size="+2"><?= $konfigurasi['nama_instansi'] ?></font><br />
      <font size="+2"><u>LAPORAN TRANSAKSI SUPPLIER PERTAHUN</u></font><br /><br />
      <?= $konfigurasi['alamat_instansi'] ?>

      <hr color="#eee" />
    </div>
    <div class="container">
      <a href="#" class="no-print" onclick="window.print();"><button class="btn btn-success"><i class="glyphicon glyphicon-print"></i> Cetak/Print</button></a> <br><br>
      <table id="example" class="table table-striped table-bordered">
        <thead>
          <tr>
            <th>No.</th>
            <th>Kode Transaksi</th>
            <th>Nama Supplier</th>
            <th>Tanggal Masuk</th>
            <th>Total Belanja</th>
          </tr>
        </thead>
        <tbody>
          <?php foreach ($data as $key => $value) : ?>
            <tr>
              <td width="5%"><?= $key + 1 ?></td>
              <td width="15%"><?= $value['nomor_transaksi'] ?></td>
              <td width="30%"><?= $value['nama_supplier'] ?></td>
              <td width="30%"><?= $value['tanggal_transaksi'] ?></td>
              <td width="30%">Rp. <?= number_format($value['total']) ?></td>

            </tr>
          <?php endforeach ?>
        </tbody>
      </table>
      <table width="100%">
        <tr>
          <td></td>
          <td width="200px">
            <p>Kuningan, <?php echo tanggal_indo(date("Y-m-d")); ?><br>
              Pemilik,</p>
            <br>
            <br>
            <br>
            <p><u><?= $konfigurasi['pimpinan_instansi'] ?></u></p>
          </td>
        </tr>
      </table>
    </div>
  </div>
  </div>


</body>

</html>
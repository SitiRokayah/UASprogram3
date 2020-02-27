<?php
include('koneksi.php');
$tampil_satuan = mysqli_query("select * from satuan");
?>
<table border="1">
	<tr>
		<td> ID satuan</td>
		<td> Nama Satuan</td>
	</tr>
<?php while($data = mysqli_fetch_array($tampil_satuan)) { ?>
	<tr>
		<td><?php echo $data['id_satuan']; ?></td>
		<td><?php echo $data['nama_satuan']; ?></td>
	</tr>
<?php } ?>
</table>
<a href="menu.php">Menu Utama</a>

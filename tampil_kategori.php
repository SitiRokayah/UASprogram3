<?php
$tampil_kategori = mysqli_query("select * from kategori");
?>
<table border="1">
	<tr>
		<td>ID Kategori</td>
		<td>Nama Kategori</td>
	</tr>
<?php while ($data = mysqli_fetch_array($tampil_kategori)) { ?>
	<tr>
		<td><?php echo $data['id_kategori']; ?></td>
		<td><?php echo $data['nama']; ?></td>
	</tr>
<?php } ?>
</table>
<a href="menu.php">Menu Utama</a>
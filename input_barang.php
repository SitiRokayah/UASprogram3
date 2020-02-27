<?php
include("koneksi.php"); //fungsi untuk gabung file
if(isset($_POST['simpan'])){
	$query_tambah_data="insert into barang(id_barang,nama,kategori_id,satuan_id)values
	('".$_POST['id_barang']."',
	'".$_POST['nama']."',
	'".$_POST['kategori_id']."',
	 '".$_POST['satuan_id']."')";
	 $proses_data=mysqli_query($rumah,$query_tambah_data);
if($proses_data){
	echo 'tambah data berhasil';
}else{
	echo mysqli_error($rumah);
}

}
?>


<form method="POST" action=""> <!---form untuk kirim data ke DB-->
<table border="1"> <!--nama harus sama dengan database-->
	<tr>
		<td>id_barang</td>
		<td><input name="id_barang" type="text"></td>
	</tr>
	<tr>
		<td>nama</td>
		<td><input name="nama" type="text"></td>
	</tr>
	<tr>
		<td>kategori_id</td>
		<td><input name="kategori_id" type="text"></td>
	</tr>
	<tr>
		<td>satuan_id</td>
		<td><input name="satuan_id" type="text"></td>
	</tr>
	<tr>
		<td><input name="simpan" type="submit"></td>
	</tr>
</table>
</form>
		
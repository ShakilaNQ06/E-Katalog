<?php
 //load koneksi database
 include '../../koneksi.php';

 //ambil data dari form
 $id = $_POST['id'];
 $nama_slide = $_POST['nama_slide'];
 //
//proses upload gambar
$nama_file = $_FILES['gambar_post']['name'];
$source = $_FILES['gambar_post']['tmp_name'];
$folder = './gambar/';
move_uploaded_file($source, $folder . $nama_file);
//
 //update data ke database
 $update = mysqli_query($koneksi, "UPDATE slider SET
 nama_slide = '$nama_slide',
 pictures =  '$nama_file'
 WHERE id = '$id'");

 //cek apakah proses edit ke database berhasil
 if($update){
 //jika berhasil tampilkan pesan berhasil edit data
 echo "<script>
 alert('Data Berhasil Diubah');
 window.location.href='index.php';
 </script>";
 }else{
 //jika gagal tampilkan pesan gagal edit data
 echo "<script>
 alert('Data Gagal Diubah');
 window.location.href='index.php';
 </script>";
 }
 //

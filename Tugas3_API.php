<!DOCTYPE HTML>
<html>
<head>
	<title>Test API Azka Farrell</title>
</head>
<body>
	<div class="self">
		<form action="getSelf.php" method='get'>
			<h4>Data Record (Data lokal) [Tugas 2]</h4>
			<p>Pencarian berdasarkan ID: 1 - 26 </p>
			<p>tulis 'semua' untuk mendapatkan semua data</p>
			<input type="form" name='input'>
			<input type="submit"><br>
		</form>
	</div>
	<div class="other">
		<form action="getOthers.php" method='get'>
			<h4><b>Data URI Lain  [Tugas 3]</b></h4>
			<p>Masukkan URI terlebih dahulu</p>
			<p>Lihat tabel : masukkan URI, lalu kosongkan pencarian</p>
			<p>Lakukan pencarian spesifik : masukkan URI, lalu masukkan pencarian pada kolom pertama pada tabel</p>
			masukkan URI 	   : <input type="form" name='inputURI'><br>
			masukkan Pencarian : <input type="form" name='inputItem'><br>
			<input type="submit"><br><br>
			<p>URI tersedia:</p>
			<p> > http://localhost/protif/progin-itb/II3160-Tugas2-18211055-18211026/index.php/api/test/juses</p>
		</form>
	</div>
</body>
</html>

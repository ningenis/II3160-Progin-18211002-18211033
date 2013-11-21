<!DOCTYPE HTML>
<html>
<head>
	<title>Parsing XML</title>
</head>
<body>
	<div class="main" id="in">
		<form name="filename"	method="get" action="xmlparse_tugas2.php">
			<p>Data pencarian untuk nama file 'record.xml'</p><br>
		</form>
		<form method="get" action="xmlparse_tugas2.php">
			Pencarian Tabel : <input type="form" name="srch"><br>
			<input type="submit" name="submit_1">
		</form>
	</div>
	<div class="sec" id="out">
			<?php
				$in=$_GET['srch'];
				$submit=$_GET['submit_1'];
				if(isset($submit)){
					$xml=simplexml_load_file('record.xml');
					if(isset($in)){
						echo "<table border='1'>";
						echo "<tr><td>",$in,"</td></tr>";
						foreach($xml->children() as $key)
						{
							echo "<tr><td>",$key->$in,"</td></tr>";
						}
						echo "</table>";
					}else{
						foreach($xml->children() as $key){
							echo $key;
						}

					}
				}
			?>
	</div>
</body>
<?php
	
	$tombol = $_REQUEST['execute'];

	if (onclick)

?>
</html>

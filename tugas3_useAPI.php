<!DOCTYPE HTML>
<html>
<head>
	<title>Parsing XML</title>
</head>
<body>
	<div class="main" id="in">
			<p>	Created by: </p>
			<p> Farrell Yodihartomo		-	18211033</p>
			<p>	Azka Ihsan Nurrahman	-	18211016</p><br>
			<p>	Data pencarian untuk nama URI berikut (copy paste URI ke form)	:</p>
			<p>	>	progin-itb/II3160-Tugas1-Tugas2/tab2.xml</p>
			<p>	>	progin-itb/BintangAdinandra/menu.xml</p>
			<p> >	progin-itb/IPT-Assignments/data1.xml</p>
			<p> >	progin-itb/IPT-Assignments/data2.xml</p>
			<p> >	progin-itb/IPT-Assignments/data3.xml</p>
			<p> > 	progin-itb/BernadetteVina/DataXML.xml</p>
			<p> > 	progin-itb/BernadetteVina/myxmlfile.xml</p>
			<p> > 	progin-itb/BernadetteVina/output2.xml</p>
		<form method="get" action="tugas3_useAPI.php">
			masukkan URI	:<input type="form" name="nameURI"><br>
			<!-- Pencarian Tabel : <input type="form" name="srch"><br> -->
			<input type="submit" name="submit_1">
		</form>
	</div>
	<div class="sec" id="out">
			<?php
				// $in=$_GET['srch'];
				$submit=$_GET['submit_1'];
				$nameURI=$_GET['nameURI'];
				//echo "[$nameURI]";
				//die();
				if(isset($submit) && isset($nameURI)){
					$xml=simplexml_load_file("../$nameURI");
					// if(isset($in)){
						echo "<table border='1'>";
						echo "<tr>";
						// echo "<td>",$xml->children()->getName(),"</td>";

						foreach($xml->children()->children() as $key)
						{
							echo "<td>",$key->getName(),"</td>";
						}
						foreach ($xml->children() as $value) {
							echo "<tr>";
							foreach($value->children() as $key)
							{
								echo "<td>",$key,"</td>";
							}
							echo "</tr>";
						}
						echo "</tr></table>";
					// }else{
						// echo "<table border='1'>";
						// foreach($xml->children() as $key){
						// 	echo "<tr><td>",$key,"</td></tr>";
						// }
						// echo "</table>";
					// }
				}
			?>
	</div>
</body>
<?php
	
	$tombol = $_REQUEST['execute'];

	if (onclick)

?>
</html>

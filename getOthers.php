<?php 
	$nameURI = $_GET['inputURI'];
	$nameItem = $_GET['inputItem']; 
	$xml=simplexml_load_file("$nameURI");
	
	if (($nameItem == NULL || $nameItem == 'semua') && isset($nameURI)) {
		echo "<table border='1'>";
		echo "<tr>";
		// foreach($xml->children()->children() as $key)
		// {
		// 	echo "<td>",$key->getName(),"</td>";
		// }
		foreach ($xml->children() as $value) {
			echo "<tr>";
			foreach($value->children() as $key)
			{
				echo "<td>",$key,"</td>";
			}
			echo "</tr>";
		}
		echo "</tr></table>";
	} else if (isset($nameURI) && isset($nameItem)){
		echo "<table border='1'>";
		echo "<tr>";
		foreach($xml->children()->children() as $key)
		{
			echo "<td>",$key->getName(),"</td>";
		}
		foreach ($xml->children() as $value) {
			if($value->children() == $nameItem){
				echo "<tr>";
				foreach($value->children() as $key)
				{
					echo "<td>",$key,"</td>";
				}
				echo "</tr>";
			}
		}
		echo "</tr></table>";
	}	
 ?>

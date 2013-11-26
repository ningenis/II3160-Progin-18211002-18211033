<?php 
	$nameURI = $_GET['inputURI'];
	$nameItem = $_GET['inputItem']; 
	$xml=simplexml_load_file("$nameURI");
	
	if ($nameItem == NULL && isset($nameURI)) {
		echo "<table border='1'>";
		echo "<tr>";
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
	} else if (isset($nameURI) && isset($nameItem)){
		header("content-type: text/xml");
		echo "<".$xml->getName().">";
		if($nameItem == 'semua'){
			foreach ($xml->children() as $key) {
				echo "<".$key->getName().">";
					foreach ($key->children() as $nextkey) {
						echo "<".$nextkey->getName().">".$nextkey."</".$nextkey->getName().">";
					}
				echo "</".$key->getName().">";
			}
		} else {
			foreach ($xml->children() as $key) {
				if ($key->children() == $nameItem){
					echo "<".$key->getName().">";
					foreach ($key->children() as $nextkey) {
						echo "<".$nextkey->getName().">".$nextkey."</".$nextkey->getName().">";
					}
					echo "</".$key->getName().">";
				}
			}
		}
		echo "</".$xml->getName().">";
	}	
 ?>

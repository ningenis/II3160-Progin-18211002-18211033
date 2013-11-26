<?php 
	$input = $_GET['input'];
	$xml=simplexml_load_file("record.xml");
	header("content-type: text/xml");
	echo "<".$xml->getName().">";
	if($input == 'semua'){
		foreach ($xml->children() as $key) {
			echo "<".$key->getName().">";
				foreach ($key->children() as $nextkey) {
					echo "<".$nextkey->getName().">".$nextkey."</".$nextkey->getName().">";
				}
			echo "</".$key->getName().">";
		}
	} else {
		foreach ($xml->children() as $key) {
			if ($key->children() == $input){
				echo "<".$key->getName().">";
				foreach ($key->children() as $nextkey) {
					echo "<".$nextkey->getName().">".$nextkey."</".$nextkey->getName().">";
				}
				echo "</".$key->getName().">";
			}
		}
	}
	echo "</".$xml->getName().">";
 ?>

<!DOCTYPE HTML>
<html>
<head>
    <title>Konversi Data</title>
</head>
<body>
<p> konversi data berhasil, silakan kembali ke halaman utama</p>
<?php
echo $_POST['input'];

mysql_connect('localhost', 'root', '');
mysql_select_db('batik_komar');

$query=mysql_query("select * from pesanan")or die(mysql_error()); 
$xml="<libraray>\n\t\t";
while($data=mysql_fetch_array($query))
{

    $xml .="<data_pesanan>\n\t\t";
    $xml .= "<nomor>".$data['nomor_pesanan']."</nomor>\n\t\t";
    $xml .= "<id_karyawan>".$data['id_karyawan']."</id_karyawan>\n\t\t";
    $xml .= "<id_pelanggan>".$data['id_pelanggan']."</id_pelanggan>\n\t\t";
    $xml .= "<tanggal>".$data['tanggal_order']."</tanggal>\n\t\t";
    $xml .="</data_pesanan>\n\t";
}
$xml.="</libraray>\n\r";
$xmlobj=new SimpleXMLElement($xml);
$xmlobj->asXML("text.xml");

mysql_close();

/**
* Converts a CSV file to a simple XML file
*
* @param string $file
* @param string $container
* @param string $rows
* @return string
*/
function csv2xml($file, $container = 'data', $rows = 'row'){
     $r = "<{$container}>\n";
     $row = 0;
     $cols = 0;
     $titles = array();
     
     $handle = @fopen($file, 'r');
     if (!$handle) return $handle;
     
     while (($data = fgetcsv($handle, 1000, ',')) !== FALSE){
          if ($row > 0) $r .= "\t<{$rows}>\n";
          if (!$cols) $cols = count($data);
          for ($i = 0; $i < $cols; $i++){
               if ($row == 0){
                    $titles[$i] = $data[$i];
                    continue;
               }
               
               $r .= str_replace(' ', '-', strtolower("\t\t<{$titles[$i]}>"));
               $r .= $data[$i];
               $r .= str_replace(' ', '-', strtolower("</{$titles[$i]}>\n"));
          }
          if ($row > 0) $r .= "\t</{$rows}>\n";
          $row++;
     }
     fclose($handle);
     $r .= "</{$container}>";
     
     return $r;
        }
        
        $myXML=csv2xml('myData.csv','tickets','ticket');
        //echo $myXMl;
        
        
        //We retrieve the text from the online form
        if(!isset($myXML)){
                echo 'Nothing to write, please go back and enter something!';
        } else {
                //escape the blank spaces around the text
                $myXML= trim($myXML);
                $pathandfile='myData.xml';
                /*open the file and store the address into the variable $handle - 'w' means: open for writing only, create it if not existing (http://www.php.net/manual/en/function.fopen.php)*/
                if (!$handle = fopen($pathandfile, 'w')){
                        echo "Cannot open file ($pathandfile)";
                        exit;
                }
        
                //Write the content to the opened file.
                if(fwrite($handle,$myXML) === FALSE){
                        echo "Cannot write to file ($pathandfile)";
                        exit;
                }
        
                //echo 'Success, wrote the content to the file: '.$pathandfile;
                
                //we close the file
                fclose($handle);
        }
        
        echo("\n\n")
?>
<form action="." method="get">
<input type="submit">
</form>
</body>
</html>

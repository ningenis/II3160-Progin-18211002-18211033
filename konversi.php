<!DOCTYPE HTML>
<html>
<head>
    <title>Konversi Data</title>
</head>
<body>
<p> konversi data berhasil, silakan kembali ke halaman utama</p>
<?php
echo $_POST['input'];

//Konversi data dari SQL ke XML

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

// Konversi data dari CSV ke XML

function csv2xml($file, $container = 'data', $rows = 'row'){
     $r = "<{$container}>\n";
     $row = 0;
     $cols = 0;
     $titles = array();
     
     $handle = @fopen($file, 'r');
     if (!$handle) return $handle;
     //Menuliskan data dalam bentuk CSV
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
        //Baca file CSV
        $myXML=csv2xml('myData.csv','tickets','ticket');
        
        
        //Retrieve data CSV
        if(!isset($myXML)){
                echo 'Nothing to write, please go back and enter something!';
        } else {
                $myXML= trim($myXML);
                $pathandfile='myData.xml';
                //Buka file XML, jika belum ada, maka buat file XML yang disebutkan di baris sebelumnya
                if (!$handle = fopen($pathandfile, 'w')){
                        echo "Cannot open file ($pathandfile)";
                        exit;
                }
        
                //Tulis konten ke file yang telah dibuka
                if(fwrite($handle,$myXML) === FALSE){
                        echo "Cannot write to file ($pathandfile)";
                        exit;
                }
                
                //Tutup File
                fclose($handle);
        }
        
        echo("\n\n")
?>
<form action="." method="get">
<input type="submit">
</form>
</body>
</html>

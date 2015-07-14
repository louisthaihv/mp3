<?php
if(isset($_GET['id'])){
   require"config.php";
      $query = "SELECT duongdan FROM baihat WHERE id =". $_GET['id']. " LIMIT 1";
      $result = mysql_query($query) or die(mysql_error());
      $row = mysql_fetch_assoc($result);
      $file = $row['duongdan'];
      if (file_exists($file)) {
                  header('Content-Description: File Transfer');
                  header('Content-Type: audio/mpeg');
                  header('Content-Disposition: attachment;
                  filename='.basename($file));
                  header('Expires: 0');
                  header('Cache-Control: must-revalidate');
                  header('Pragma: public');
                  header('Content-Length: ' . filesize($file));
                  ob_clean();
                  flush();
                  readfile($file);
                  exit;
      }   
} else {
      echo "<center><h1>404 File Not Found!</h1></center>";
}
?>
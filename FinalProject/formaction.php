<?php
if(isset($_POST['submit']))
{
  if(isset( $_POST['gender']))
  {
    $gender_value = $_POST['gender'];
    if($gender_value == 'men')
    {
      $url = "http://google.com";
      header ("Location: $url");
    }
    else {
      echo "File not found.";
    }
  }
}
?>

<?php



include('core/models/classConexion.php');

if(!empty($_POST['user']) and !empty($_POST['pass'])) {
  $db = new Conexion();
  $data = $db->real_escape_string($_POST['user']);
  $pass = $_POST['pass'];
  $sql = $db->query("SELECT id_user FROM user WHERE (user='$data' OR mail='$data') AND password='$pass' LIMIT 1;");
  if($db->rows($sql) > 0) {
    /*if($_POST['sesion']) { ini_set('session.cookie_lifetime', time() + (60*60*24)); }
    $_SESSION['app_id'] = $db->recorrer($sql)[0];
    $_SESSION['time_online'] = time() - (60*6);*/
    echo 1;
  } else {
    echo 3;
  }
  $db->liberar($sql);
  $db->close();
} else {
  echo 2;
}

?>
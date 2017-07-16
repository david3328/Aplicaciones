<?php
/*
	$foros=[];
	$cont = 0;
	while ($cont<5) {
		$obj = ['id' => '1', 'nombre' => 'Sistemas'];
		array_push($foros, $obj);
		$cont ++;
	}
	echo json_encode($foros);*/


  include('core/models/classConexion.php');

  $db = new Conexion();
  $sql = $db->query("SELECT * FROM company");
  if($db->rows($sql) > 0) {
    while($data = $db->recorrer($sql)) {
      $company[$data['id']] = $data;
    }
  } else {
    $company = false;
  }
  $db->liberar($sql);
  $db->close();
  echo json_encode($company);
?>
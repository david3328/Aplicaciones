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
  $sql = $db->query("SELECT * FROM foros");
  if($db->rows($sql) > 0) {
    while($data = $db->recorrer($sql)) {
      $categorias[$data['id']] = $data;
    }
  } else {
    $categorias = false;
  }
  $db->liberar($sql);
  $db->close();
  echo json_encode($categorias);
?>
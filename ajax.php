<?php 
ini_set('display_errors', 0);
include_once 'db.php';
include_once 'controller.php';
//$data = $_POST['data'] or $_REQUEST['data'];
$db = new db();
$controller = new controller();
//print_r($array_explode);
$name = $_REQUEST['name'];
$array_explode = explode("_", $name);// explode string a_b to get b value and process
//print_r($array_explode);
switch ($array_explode[0]){
    case "numidlg": // luu logs
        $field['logs'] = $_REQUEST['value'];
        $phone = $array_explode[1];
        $db->UpdateTable("",$field," `phone`= '$phone'");
    break;   
    case "numid": // luu fullname
        $field['fullname'] = $_REQUEST['value'];
        $phone = $array_explode[1];
        $db->UpdateTable("",$field," `phone`= '$phone'");
    break;
}

/// add new record
//print_r($_REQUEST);
if($_REQUEST['phone']!=''){
    $input_array = array(
        'fullname'=>$_REQUEST['name'],
        'phone'=>$_REQUEST['phone'],
        'vendor'=>$_REQUEST['vendor'],
        'logs'=>$_REQUEST['logs']
        
    );
    $controller->insert_table_from_ajax($input_array);
}

?>
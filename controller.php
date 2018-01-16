<?php 
include_once 'db.php';
//$database = $GLOBALS["database"];

class controller
{
    
    // property declaration
    public $db;
    function __construct() {
        
        $this->db = new db();
    }
    
    
    
    public function get_list_table(){
        $list_table = $this->db->SelectTableRecords('Select ID, fullname, phone,vendor, logs From num_list order by date DESC ');
        return $list_table;
    }
    public function insert_table_from_file($array=array()){
        $database = 'num_list';
       // print_r($array);
        $array_insert = array(
            'fullname' =>   $array['number'],
            'phone' =>   $array['number'],
            'vendor' =>   $array['vendor'],
            'logs' =>   $array['logs'],
            'date' => time()
            
        );
        $field['fullname'] = $array['number'];
        $field['phone'] = $array['number'];
        $field['vendor'] = $array['vendor']!=''?$array['vendor']:'others';
        $field['logs'] = $array['logs'];
        $field['date'] = time();
        //     $array_insert = array(
        //         'fullname' =>   1,
        //         'phone' =>   2,
        //         'vendor' =>   3,
        //         'date' => time()
        
        //     );
        //print_r($array_insert);
        $db = new db;
        $error = $db->InsertInTable($database,$field);
        
       
        //if($error)die('Error with insert_talbe_from_file');
    }
    public function insert_table_from_ajax($array=array()){
        $database = 'num_list';
        // print_r($array);
       
        $field['fullname'] = $array['fullname'];
        $field['phone'] = $array['phone'];
        $field['vendor'] = $array['vendor'];
        $field['logs'] = $array['logs'];
        $field['date'] = time();
       
        $db = new db;
        $error = $db->InsertInTable($database,$field);
        
    }
    
}


?>
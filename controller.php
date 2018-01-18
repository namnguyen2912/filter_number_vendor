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
        $list_table = $this->db->SelectTableRecords('Select ID, fullname, phone,vendor From num_list order by date DESC ');
        return $list_table;
    }
    
    public function get_num_details_by_id($id){
        if(!$id)return;
        //echo 'Select ID, fullname, phone,vendor, logs From num_list WHERE ID = '.$id;
        $result = $this->db->SelectTableRecords('Select ID, fullname, phone,vendor From num_list WHERE ID = '.$id);
        return $result;
    }
    
    public function get_logs_by_id($id){
       
        if(!$id)return;
        $result = $this->db->SelectTableRecords('
        Select  logs.ID, text, user , logs.date
        FROM num_list
        INNER JOIN logs ON num_list.phone = logs.phone
        WHERE num_list.ID = '.$id.' ORDER BY logs.date DESC');
       
        return $result;
    }
    
    public function insert_table_from_file($array=array()){
        $database = 'num_list';
       // print_r($array);
        $array_insert = array(
            'fullname' =>   $array['number'],
            'phone' =>   $array['number'],
            'vendor' =>   $array['vendor'],
           
            'date' => time()
            
        );
        $field['fullname'] = $array['number'];
        $field['phone'] = $array['number'];
        $field['vendor'] = $array['vendor']!=''?$array['vendor']:'others';
       
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
        
        $field['date'] = time();
       
        $db = new db;
        $error = $db->InsertInTable($database,$field);
        return $error;
        
    }
    
    
    public function insert_table_logs($array=array()){
        $database = 'logs';
        // print_r($array);
        
        $field['text'] = $array['text'];
        $field['phone'] = $array['phone'];
        $field['user'] = $array['user'];
       
        $field['date'] = time();
        
        $db = new db;
        $error = $db->InsertInTable($database,$field);
        return $error;
    }
    
    public function insert_table_numlogs($array=array()){
        $database = 'num_list';
        // print_r($array);
        $array_insert = array(
            'fullname' =>   $array['number'],
            'phone' =>   $array['number'],
            'vendor' =>   $array['vendor'],
            
            'date' => time()
            
        );
        $field['fullname'] = $array['number'];
        $field['phone'] = $array['number'];
        $field['vendor'] = $array['vendor']!=''?$array['vendor']:'others';
        
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
    
    
    
    
    
    
}


?>
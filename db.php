<?php
// $host = "localhost";
// $user = "root";
// $pass = "";
// GLOBAL $database;
// $database = "num_list";

// $connect= mysqli_connect($host,$user,$pass);
// mysqli_select_db($database ,$connect);
date_default_timezone_set('Asia/Ho_Chi_Minh');

class db
{
    
    // property declaration
    
    public $host = "localhost";
    public $user = "root";
    public $pass = "";
    public $table = "num_list";// default table
    public $database = "numlistview";
    public $connect;
    function __construct() {
        
        $this->connect = mysqli_connect($this->host,$this->user,$this->pass,$this->database);
        
        mysqli_select_db($this->connect,$this->database );
        
        //$con = mysqli_connect("localhost", "root", "", $this->database);
        
        if (mysqli_connect_errno()) {
            printf("Connect failed: %s\n", mysqli_connect_error());
            exit();
        }
        
        
    }
    
    
    function InsertInTable($table,&$fields){
      
        $val = "insert into $table (`".implode("` , `",array_keys($fields))."`)";
        $val .= " values('";
        // echo $col;
        foreach($fields as $key => $value) {
            
            $fields[$key] = ($value);
            //echo $value.'<br>' ;
            
        }
        //print_r($fields);
        $val .= implode("' , '",array_values($fields))."');";
       // echo $val;
        if (mysqli_connect_errno())
        {
            echo "Failed to connect to MySQL: " . mysqli_connect_error();
        }
        
        
        $result = mysqli_query($this->connect,$val);
        if ( false===$result ) {
            //printf("error: %s\n", mysqli_error($this->connect));
        }
        else {
            //echo 'done.';
        }
        mysqli_close($this->connect);
        return;
        
    }
    
    
    function UpdateTable($table,&$fields,$condition) {
        $table = $table==''?$this->table:$table;
        $sql = "update $table set ";
        foreach($fields as $key => $value) {
            $fields[$key] = " `$key` = '".$value."' ";
        }
        $sql .= implode(" , ",array_values($fields))." where ".$condition.";";
   // echo $sql;
        $result = mysqli_query($this->connect,$sql);
        if ( false===$result ) {
            printf("error: %s\n", mysqli_error($this->connect));
        }
        
        $fields = array();
    }
    
    
    function SelectTableRecords($query){
       // $result = mysqli_query('SELECT * FROM num_list');
//         if (!$result) {
//             die('Invalid query: ' . mysqli_error());
//         }
//         $query = "SELECT * FROM num_list";
//         echo "<pre>Debug: $query</pre>\m";
//         $result = mysqli_query($this->connect, $query);
//         if ( false===$result ) {
//             printf("error: %s\n", mysqli_error($this->connect));
//         }
//         else {
//             echo 'done.';
//         }
        
        
        
        
        
        
        
        
        $result = mysqli_query ($this->connect, $query);
       
        $count = 0;
        $data = array();
        while ( $row = mysqli_fetch_array($result)){
            $data[$count] = $row;
            $count++;
        }
        return $data;
    }
    function DeleteRecord($query){
        $result = mysqli_query ($query);
        return true;
    }
    
}


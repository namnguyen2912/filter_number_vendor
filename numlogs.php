
<?php

// echo 1; 
// error_reporting(E_ALL);
 ini_set('display_errors', 0);
// list cac dau so di dong
 
 // get request
 
 include_once 'controller.php';
 $controller = new controller();
 
 include_once 'db.hp';
 $db = new db();
 
 $error = '';
 $id = $_REQUEST['id'];
 if($id==NULL || $id == 0){
     $readonly = '';
     
     if($_POST){
         if($_POST['phone']!=''&&$_POST['vendor']!=''){
             $input_array = array(
                 'fullname'=>$_POST['fullname'],
                 'phone'=>$_POST['phone'],
                 'vendor'=>$_POST['vendor']
                 
             );
             $error = $controller->insert_table_from_ajax($input_array);
             if(!$error){
                 $error = 'Success';
             }
         }else{
             $error = 'Problem has occur';
         }
         
         if($_POST['logs']!='' && $_POST['name_logs'] != ''){
             $input_array = array(
                 'phone'=>$_POST['phone'],
                 'text'=>$_POST['logs'],
                 
                 'user'=>$_POST['name_logs']
                 
                 
             );
             //print_r($input_array);
             $error = $controller->insert_table_logs($input_array);
             if(!$error){
                 $error = 'Success';
             }
         }else  $error = 'Problem has occur';
         
     }else{
         
     }
     
     //return false;
 }else{ 
     
     $readonly = 'readonly';
     //print_r($_POST);
     if($_POST){
         $field_fullname['fullname'] = $_POST['fullname'];
         $db->UpdateTable("num_list",$field_fullname," `ID`= '$id'");
         
         if($_POST['logs']!='' && $_POST['name_logs'] != ''){
             $input_array = array(
                 'phone'=>$_POST['phone'],
                 'text'=>$_POST['logs'],
                 
                 'user'=>$_POST['name_logs']
                 
                 
             );
             //print_r($input_array);
             $error = $controller->insert_table_logs($input_array);
             if(!$error){
                 $error = 'Success';
             }
         }
         
     }
 
 }




// insert information from ID




// end get information from ID



// get information from ID
$result_detail = $controller->get_num_details_by_id($id);
$r_fullname = $result_detail[0]['fullname'];
$r_phone = $result_detail[0]['phone'];
$r_vendor = $result_detail[0]['vendor'];

$result_list = $controller->get_num_details_by_id($id);
// end get information from ID



$html_list= '';
$i = 1;
//print_r($result_list);
$result_list = $controller->get_logs_by_id($id);
//print_r($result_list);
if($result_list){
    foreach($result_list as $key => $value){
      // print_r($value);
        if($value){
        $html_list .= '
                 <li>
                    <span></span>
                   
                    <div class="info">'.$value['text'].'</div>
                    <div class="name">- '.$value['user'].' -</div>
                    <div class="time">
                        <span>'.date("h:i:sa Y/m/d",$value['date']).'</span>
                        
                    </div>
                </li>
           
                
            ';
        $i++;
        }
    }
}else{
    $html_list= '';
}

        //html phan upload 
        echo '<!DOCTYPE html>
                <html>
    <link href="lib/bootstrap/bootstrap.css" rel="stylesheet">

   

    <script src="lib/libs/jquery/jquery-1.8.2.min.js"></script>
    <script src="lib/libs/bootstrap/js/bootstrap.min.js"></script>


    <link href="http://fonts.googleapis.com/css?family=Droid+Serif|Open+Sans:400,700" rel="stylesheet" type="text/css">

	<link rel="stylesheet" href="lib/logs/css/reset.css"> <!-- CSS reset -->
	<link rel="stylesheet" href="lib/logs/css/style.css"> <!-- Resource style -->
	<script src="lib/logs/js/modernizr.js"></script> <!-- Modernizr -->
  	
        <body>
                
                
             

<div class="container">
    <div class="row">
        
    <div class="col-md-6">
        <section  class="form-padding">
        <form action="" method="post">
          <p class="text-danger">'.$error.'</p>
          <div class="form-group">
           <label class="label label-default" for="fullname">Full name</label>
            <input type="fullname" name="fullname" class="form-control" id="fullname" aria-describedby="fullname" value="'.$r_fullname.'" placeholder="Fullname">
            
          </div>
          <div class="form-group">
           
            <input type="phone" name="phone" class="form-control" id="phone" aria-describedby="phone" value="'.$r_phone.'" placeholder="Phone" '.$readonly.'>
            
          </div>
          <div class="form-group">
           <label for="vendor">Vendor</label>
            <input type="vendor" name="vendor" class="form-control" id="vendor" aria-describedby="vendor" value="'.$r_vendor.'" placeholder="Vendor" '.$readonly.'>
            
          </div>
            <div class="form-group">
            <textarea class="form-control" name="logs" id="logs" rows="3" placeholder="Enter Logs"></textarea>
          </div>
         <div class="form-group">
            <input type="name_logs" name="name_logs" class="form-control" id="name_logs" aria-describedby="name_logs" placeholder="Editor">
            
          </div>
         

          <button type="submit" class="btn btn-primary">Submit</button>

<a class="btn btn-warning" href="index.php">Back</a>
           


        </form>
        </section>
    </div>
    <div class="col-md-6">
    	
<div class="box">
            <ul id="first-list">
                '.$html_list.'
                
            </ul>
                
               
            
            
            
            <script src="JavaScript/timeline-V2.js"></script>
        </div>
    </div>
</div>
</div>

                
                </body>
                </html>
';
    

?>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="lib/bootstrap/bootstrap.min.js"></script>
<script src="lib/logs/js/main.js"></script> 
<script>

</script>



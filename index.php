
<?php

// echo 1; 
// error_reporting(E_ALL);
 ini_set('display_errors', 0);
// list cac dau so di dong
 $num_mobile = array ( array( 'id' => "086", 'name' => 'viettel', ), array( 'id' => "096", 'name' => 'viettel', ), array( 'id' => "097", 'name' => 'viettel', ), array( 'id' => "098", 'name' => 'viettel', ), array( 'id' => "016", 'name' => 'viettel', ), array( 'id' => "090", 'name' => 'mobifone', ), array( 'id' => "093", 'name' => 'mobifone', ), array( 'id' => "0120", 'name' => 'mobifone', ), array( 'id' => "012", 'name' => 'mobifone', ), array( 'id' => "092", 'name' => 'vietnamobile', ), array( 'id' => "018", 'name' => 'vietnamobile', ), array( 'id' => "099", 'name' => 'gmobile', ), array( 'id' => "019", 'name' => 'gmobile', ), array( 'id' => "0123", 'name' => 'vinaphone', ), array( 'id' => "0124", 'name' => 'vinaphone', ), array( 'id' => "0125", 'name' => 'vinaphone', ), array( 'id' => "0127", 'name' => 'vinaphone', ), array( 'id' => "0129", 'name' => 'vinaphone', ), array( 'id' => "091", 'name' => 'vinaphone', ), array( 'id' => "094", 'name' => 'vinaphone', ), array( 'id' => "088", 'name' => 'vinaphone', ), );
GLOBAL $target_dir;
GLOBAL $create_dir;

include_once 'controller.php';
$controller = new controller();

$result_list = $controller->get_list_table();
$html_list= '';
$i = 1;
//print_r($result_list);
if($result_list){
    foreach($result_list as $key => $value){
      // print_r($value);
        if($value){
        $html_list .= '
                <tr>
                    <td>'.$i.'</td>
                    <td ><a href="#" id="numid_'.$value['phone'].'">'.$value['fullname'].'</a></td>
                    <td>'.$value['phone'].'</td>
                     <td>'.$value['vendor'].'</td>
                    <td>
    
        <span class="contents col-xs-12 col-sm-12 col-md-8"  id="numidlg_'.$value['phone'].'">'.$value['logs'].'</span>
    
    </td>
                    
                    
                </tr>
            ';
        $i++;
        }
    }
}else{
    $html_list= '';
}

/*
 * 
 * truoc khi upload thi tao cac folder mac dinh nhu ben duoi
 * folder uploads/ la thu muc de chua file upload len, dinh dang text .txt
 * folder export/ laf thu muc dung de download file 
 * 
 * file name index.php 
 * file name download.php la file dung de xu ly download file 
 */

$target_dir = "uploads/";
$create_dir = "export/";

/* xoa tat ca cac file cu trong download */
$files = glob($create_dir.'*'); // get all file names
foreach($files as $file){ // iterate files
    if(is_file($file))
        unlink($file); // delete file
}

// ham search chuoi trong array
function searchArrayKeyVal($sKey, $id, $array) {
    foreach ($array as $key => $val) {
        if ($val[$sKey] === $id) {
            return $key;
        }
    }
    return false;
}


// doc tung dong file

$target_file = $target_dir . basename($_FILES["fileToUpload"]["name"]);
$uploadOk = 1;
$imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));
// Check if image file is a actual image or fake image
if(isset($_POST["submit"])) {

    $check = getimagesize($_FILES["fileToUpload"]["tmp_name"]);
    if($check !== false) {
        echo "File is an image - " . $check["mime"] . ".";
        $uploadOk = 1;
    } else {
        
        $uploadOk = 0;
    }
}

if($imageFileType == "txt" ) {
  
    $uploadOk = 1;
}

// Check if $uploadOk is set to 0 by an error
if ($uploadOk == 0) {
    echo "Sorry, your file was not uploaded.";
} else {
    if (move_uploaded_file($_FILES["fileToUpload"]["tmp_name"], $target_file)) {
        echo "The file ". basename( $_FILES["fileToUpload"]["name"]). " has been uploaded.<br>";
        header("Refresh:0");

    } else {
        //html phan upload 
        echo '<!DOCTYPE html>
                <html>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

   

    <script src="lib/libs/jquery/jquery-1.8.2.min.js"></script>
    <script src="lib/libs/bootstrap/js/bootstrap.min.js"></script>

    <link href="lib/bootstrap-editable/css/bootstrap-editable.css" rel="stylesheet">
    <script src="lib/bootstrap-editable/js/bootstrap-editable.js"></script>


 
<link href="https://cdn.datatables.net/1.10.16/css/dataTables.bootstrap.min.css" rel="stylesheet">
<link href="https://cdn.datatables.net/responsive/2.2.1/css/responsive.bootstrap.min.css" rel="stylesheet">
    

<script src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.10.16/js/dataTables.bootstrap.min.js"></script>
<script src="https://cdn.datatables.net/responsive/2.2.1/js/dataTables.responsive.min.js"></script>
<script src="https://cdn.datatables.net/responsive/2.2.1/js/responsive.bootstrap.min.js "></script>
        <body>
                
                
 <style>

table, th, td {
    border: 1px solid black;
    border-collapse: collapse;
}
</style>              

<div class="container">
<form action="index.php" method="post" enctype="multipart/form-data">
                    Select file to upload:
                    <input type="file" name="fileToUpload" id="fileToUpload">
                    <input type="submit" value="Upload File" name="submit">
                </form>

  <h2>List phone number vendor</h2>
  
        <table id="datatable" class="table table-striped table-bordered dt-responsive nowrap" width="100%">
        <thead>
            <tr>
                <th>#</th>
                <th>Full name</th>
                <th>Phone</th>
                <th>Vendor</th>
                <th>Notes</th>
          
                
            </tr>
               
        </thead>
        <tfoot>
            
             <tr>
                <th></th>
                <th><input type="text" class="form-control" id="add_fullname"></th>
                <th><input type="text" class="form-control" id="add_phone"></th>
                <th><input type="text" class="form-control" id="add_vendor"></th>
                <th><input type="text" class="form-control" id="add_logs"> <button type="button" id="btn_add" class="btn btn-success">Add</button></th>
                </tr>

        </tfoot>
        <tbody>
            '.$html_list.'
            
            </tr>
        </tbody>
    </table>
  <tr>
                
 <p>
Full name and logs can edit, please click on that fields to edit

</p>








</div>

                
                </body>
                </html>
';
    }
}



/*
 * phan xu ly cac ham lien quan toi file
 * 
 * 
 * 
 */

// lay fil luu tru va xu ly
if ($handle = opendir($target_dir)) {
    
    while (false !== ($entry = readdir($handle))) {
        
        if ($entry != "." && $entry != "..") {
            
            
            $myfile = fopen($target_dir.$entry, "r") or die("Unable to open file!");
            
            
            while(!feof($myfile)) {
                $getFile = fgets($myfile);
                $makeRows = explode("\n",$getFile);
                foreach($makeRows as $tmp_row){
                    if(strlen(trim($tmp_row)) > 0){
                        // 3 so dau substr($tmp_row, 0, 3)
                        // 4 so dau substr($tmp_row, 0, 4)
                        // raw number
                        $rawnumb = preg_replace('/\s+/', '', $tmp_row);
                        $chuoibaso = substr(preg_replace('/\s+/', '', $tmp_row), 0, 3);
                        $chuoibonso = substr(preg_replace('/\s+/', '', $tmp_row), 0, 4);
                        $arrayKey3 = searchArrayKeyVal("id", $chuoibaso, $num_mobile);
                        $arrayKey4 = searchArrayKeyVal("id", $chuoibonso, $num_mobile);
                        
                        if ($arrayKey4!==false) {// cho phan 4 so nhu 0123,0124 cua vinaphone
                            $result = $chuoibonso.$num_mobile[$arrayKey4]['name'];
                            //tao file
                           // $myfile1 = fopen($create_dir.$num_mobile[$arrayKey4]['name'].".txt", "a+")or die("Unable to open file!");
                           // echo $rawnumb;
                            $controller->insert_table_from_file(array('vendor'=>$num_mobile[$arrayKey4]['name'],'number'=>$rawnumb));
                            
                            
                        }else if ($arrayKey3!==false) { // cac phan so con lai cua mobiphone, viettel....
                            $result = $chuoibonso.$num_mobile[$arrayKey3]['name'];
                           // $myfile1 = fopen($create_dir.$num_mobile[$arrayKey3]['name'].".txt", "a+")or die("Unable to open file!");
                            $controller->insert_table_from_file(array('vendor'=>$num_mobile[$arrayKey3]['name'],'number'=>$rawnumb));
                            
                            
                        }
                        else { // cac hang mang khac
                            
                            //$myfile1 = fopen($create_dir."other.txt", "a+")or die("Unable to open file!");
                            $controller->insert_table_from_file(array('vendor'=>$num_mobile['others']['name'],'number'=>$rawnumb));
                           
                            
                        }
                        
                    }
                }
                
            }
            
        }
        
    }
    
    
}


?>
<script>

$("#btn_add").click(function(){

	var fullname = $("#add_fullname").val();
	var phone = $("#add_phone").val();
	var logs = $("#add_logs").val();
	var vendor = $("#add_vendor").val();
	if(phone != '' && fullname != '' && logs != '' && vendor != ''){
        $.ajax({
        	type: "POST",
            url: "ajax.php", 
            data: { name: fullname, phone: phone, vendor: vendor, logs: logs },
            success: function(result){
            	$("#add_fullname").removeAttr('value') ;
            	$("#add_phone").removeAttr('value');
            	$("#add_logs").removeAttr('value') ;
            	$("#add_vendor").removeAttr('value');
            	alert('Add data succeess');
            	location.reload();
        	}
        })

	}else {alert("Please enter full data like Fullname, Phone, Vendor, Notes"); return;}
    
    
});
var table = $('#datatable').DataTable( {
	responsive: true,

	"createdRow": function ( row, data, index ) {
		
			$("a[id^='numid_']").editable({
			    type: 'text',
			    url: 'ajax.php',    
			    pk: 1,    
			    title: 'Enter username',
			    ajaxOptions: {
			        type: 'put'
			    }        
			});
		
		
		
    		$( "span[id^='numidlg_']" ).editable({
    		    type: 'text',
    		    url: 'ajax.php',    
    		    pk: 1,    
    		    title: 'Enter logs',
    		    ajaxOptions: {
    		        type: 'put'
    		    }        
    		});
		
    }
} );

</script>



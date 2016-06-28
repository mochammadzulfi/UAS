<?php

/*include "../config/koneksi.php";
ob_start();

if(isset($_POST['btnlogin'])){

	$username = $_POST['userid'];
	$password = md5($_POST['password']);
	
	$query = "SELECT * FROM admin WHERE username='$username' AND password='$password'";
	
	$hasil = mysql_query($query);
	$data = mysql_fetch_array($hasil);
	$cekhasil = mysql_num_rows($hasil);
	mysql_free_result($hasil);
	
	if($cekhasil >0){
	
		$_SESSION['username'] = $data['username'];
		$_SESSION['password'] = $data['password'];
		
		header('location:index.php?page=home');
	}
}*/
?>
<div class="container">
<section id="section-login">
	<p><br /></p>
	<div class="row">
    	<div class="col-lg-4"></div>
        <div class="col-lg-4">
        	<div class="panel panel-default">
  				<div class="panel-body">
                	
    				<table class="table table-hover">
            			<tr>
                			<td>
                    
                    	<div class="panel panel-primary">
                        	<div class="panel-heading">
                            	<h3 class="panel-title">Login</h3>
                            </div>
                            <div class="panel-body">
                            	<?php //$formaction= "$_SERVER[PHP_SELF]?page=login"; ?>
								<form class="form-horizontal" id="formlogin" >
                                	<div class="form-group">
                                    	<label for="userid" class="col-sm-3 control-label">Username</label>
                                        
                                        <div class="col-sm-12">
                                        	<input type="text" class="form-control" name="userid" id="userid">
                                        </div>
                                       </div>
                                       <div class="form-group">
                                       	<label for="password" class="col-sm-4 control-label">Password</label>
                                       <div class="col-sm-12">
                                       	<input type="password" class="form-control" name="password" id="password">
                                       </div>
                                      </div>
                                      <div class="form-group">
                                      	<div class="col-sm-offset-0 col-sm-12">
                                        	<button type="button" class="btn btn-success" id="btnlogin">Sign in</button>
                                            <button type="reset" class="btn btn-danger">Reset</button>
                                        </div>
                                      </div>
                                 </form>
                            </div>
                            <div class="panel-footer" align="center">
                            	<?php
									//if(isset($_POST['btnlogin']) && $cekhasil < 1){
//										echo "<p style='color:red'>Silahkan login kembali,Username atau Password anda salah !</p>";
//									}
								?>
								</div>
                               </div>
                               
                       </td>
                   </tr>
            </table>
  				</div>
			</div>
       </div>
    </div>
</section>
</div>

<script src="halaman/login/login_script.js" type="text/javascript"></script>
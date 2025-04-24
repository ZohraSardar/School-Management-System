



</html>

<?php
include('./maininclude/header.php');
?>

 <!-- start video background -->
 <div class="container-fluid remove-vid-marg">
            <div class="vid-parent">
                <video playsinline autoplay muted loop>
                    <source src="video/login1.mp4" >
                </video>
                <div class="vid-overlay"></div>
                 

            </div>
            <div class="vid-content">
            <h1  >Admin Login Form</h1>
            <br>
            
            <form 
 >
            
 

            <div class="form-group">
            <h3>  <i class="fas fa-envelope"></i>
    <label for="adminLogemail" class="pl-2 font-weight-bold">Email address</h3></label>
    <input type="email" class="form-control" id="adminLogemail" name="adminLogemail" placeholder="email">
    
<br>
  <div class="form-group">
  <h3> <i class="fas fa-key"></i> <label for="adminLogpass" class="pl-2 font-weight-bold">Password</h3></label>
    <input type="password" class="form-control" id="adminLogpass" name="adminLogpass" placeholder="Password">
  </div>
  <br>
  
  <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
        <button type="button" class="btn btn-primary" id="adminLoginBtn">Log In</button>


</form>
            </div>
        </div>
         <!-- end video background -->
        



<br>
<?php
include('./maininclude/footer.php');
?>

<!--end of login form -->




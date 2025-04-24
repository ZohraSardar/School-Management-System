<?php
include('./maininclude/header.php');
?>
<br>
<!--start course page banner -->

<div class="container-fluid bg-dark">

<div class="row">
    <img src="./images/course.jpeg" alt="courses" style="height:500px;width:100%;object-fit:cover;box-shadow:10px;"/>
</div>
</div>
<!--end course page banner -->
<div class="container">
    <h2 class="text-center my-4">Payment Status</h2>
    <form method="post" action="">
        <div class="form-group row">
        <h3 class="text-center my-4">Order ID</h3>
<div>
    <input type="text" class="form-control max-3" placeholder="order id">
</div>
        
        <div>
            <br>
            <input type="submit" class="btn btn-primary " value="Value">

        </div>
</div>
    </form>
</div>


<!-- contact us form         -->

<?php
include('./contact.php')
?>

<?php
include('./maininclude/footer.php');
?>
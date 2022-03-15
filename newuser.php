<?php

$insert=false;
if(isset($_POST['name']))
{
 $name = $_POST['name'];

 $email = $_POST['email'];

  $balance = $_POST['balance'];

 // Database connection
 $conn = new mysqli('localhost','root','','customers');
 if($conn->connect_error){
   echo "$conn->connect_error";
   die("Connection Failed : ". $conn->connect_error);
 } else {
   // tripagain is table name here
   $stmt = $conn->prepare("insert into customers(name,email,balance) values(?, ?, ?)");
   $stmt->bind_param("sss", $name, $email, $balance);
   $execval = $stmt->execute();
   echo $execval;
   $insert=true;
   $stmt->close();
   $conn->close();
 }
}

 ?>


 <!DOCTYPE html>

 <html lang="en" dir="ltr">
   <head>
     <meta charset="utf-8">
     <title>Newuser</title>

     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
     integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
     <script src="https://use.fontawesome.com/releases/v6.0.0/js/all.js"></script>
     <link rel="stylesheet" href="newuser.css" />
   </head>
   <body>



     <div class="container-fluid">
       <section id="title">

       <nav class="navbar navbar-expand-lg navbar-dark">
         <a class="navbar-brand" href="" style="font-size: 30px;">
           <i class="fa-solid fa-building-columns"></i> Janata Bank
         </a>
         <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
           <span class="navbar-toggler-icon"></span>
         </button>
         <div class="collapse navbar-collapse nav-style" id="navbarSupportedContent">
           <ul class="navbar-nav ms-auto">
             <li class="nav-item">
               <a class="nav-text nav-link" href="index.php">Home</a>
             </li>
             <li class="nav-item">
               <a class="nav-text nav-link" href="newuser.php">new user</a>
             </li>
             <li class="nav-item">
               <a class="nav-text nav-link" href="customers.php">Customers</a>
             </li>
             <li class="nav-item">
               <a class="nav-text nav-link" href="#cta">Send Money</a>
             </li>
             <li class="nav-item">
               <a class="nav-text nav-link" href="transactions.php">Transactions</a>
             </li>
             <li class="nav-item">
               <a class="nav-text nav-link" href="contact us.php">Contact us</a>
           </li>
           </ul>
         </div>
       </nav>

     </section>



     <div class="form-box">
     <div class="contact-div">

     <h1 class="contact">Create New user</h1>

     </div>
      <i class="fa-solid fa-user fa-4x"></i>

     <form action="newuser.php" method="post">
       <input type="text" name="name" id="name" placeholder="name" />
       <input type="email" name="email" id="email" placeholder="email" />
       <input type="number" name="balance" id="balance" placeholder="balance" />
      <div class="btn-div">

       <button type="submit" class="btn btn-light btn-lg btn-outline-dark">Submit</button>
       <button type="reset" class="btn btn-light btn-lg btn-outline-dark">Reset</button>


     </div>

   </div>
       <?php
       if($insert)
       {
         echo '<div class="subm">
         <i class="fa-solid fa-circle-check fa-2x" style="color: green"></i>
         <p>Submiited Sucessfully!</p>

         </div>';
       }
        ?>
     </form>



   </body>
 </html>

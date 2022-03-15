<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Send money</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://use.fontawesome.com/releases/v6.0.0/js/all.js"></script>
    <link rel="stylesheet" href="sendmoney.css" />
  </head>
  <body>
    <div class="container-fluid">

    <nav class="navbar navbar-expand-lg navbar-dark ">
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
            <a class="nav-text nav-link" href="sendmoney.php">Send Money</a>
          </li>
          <li class="nav-item">
            <a class="nav-text nav-link" href="transactions.php">Transactions</a>
          </li>
          <li class="nav-item">
            <a class="nav-text nav-link" href="contact us.php">Contact us</a>
        </li>
        </ul>
      </div>
    </div>

  </section>
    <div class="sendmoney">
      <h1>Send Money</h1>
      <form action="sendmoney.php" method="post">
        <h2>Sender's Email</h2><input type="email" name="send" placeholder="sender's email"
        value="<?php if(isset($_GET['reads'])){echo $_GET['reads'];} ?>">
        <h2>Amount</h2><input type="number" name="amount" placeholder="amount(RS)" />
        <h2>Receiver's Email</h2><input type="email" name="receive" placeholder="receiver's email">
        <button type="submit" class="btn btn-primary btn-lg">Submit</button>

      </form>
    </div>

  </body>
</html>








<?php
$insert=false;
$conn = mysqli_connect('localhost','root','','customers');
if(!$conn){
	die("Connection not established: ".mysqli_connect_error());
}else{

if($_SERVER['REQUEST_METHOD']== 'POST'){


    $sender = $_POST['send'];
    $amount = $_POST['amount'];
    $reciever = $_POST['receive'];


    $checkblcquery = "SELECT balance FROM customers where email='$sender'";
    $checkblc = mysqli_query($conn, $checkblcquery);
    $ava_blc = mysqli_fetch_assoc($checkblc)['balance'];

    if($ava_blc >= $amount){
    $sql1 = "UPDATE customers SET balance= balance-$amount WHERE email='$sender'";
    $sql2 = "UPDATE customers SET balance= balance+$amount WHERE email='$reciever'";
    $result1 = mysqli_query($conn, $sql1);
    $result2 = mysqli_query($conn, $sql2);
    if($result1 && $result2){
      echo '<div class="subm">
      <i class="fa-solid fa-circle-check fa-2x" style="color: green"></i>
      <p>Submiited Sucessfully!</p>

      </div>';

      $sqltran = "INSERT INTO `transactions` (`sender`, `receiver`, `amount`, `status`) VALUES ('$sender', '$reciever', '$amount', 'succeed')";
      $sqltransact = mysqli_query($conn, $sqltran);
    }else{
      echo '<div class="subm">
      <i class="fa-solid fa-circle-xmark fa-2x" style="color: red"></i>
      <p class="pone">Oops! Something Went Wrong!</p>

      </div>';
      $sqltran = "INSERT INTO `transactions` (`sender`, `receiver`, `amount`, `status`) VALUES ('$sender', '$reciever', '$amount', 'failed')";
      $sqltransact = mysqli_query($conn, $sqltran);
    }
}else{
  echo '<div class="subm">
  <i class="fa-solid fa-circle-xmark fa-2x" style="color: blue"></i>
  <p class="ptwo">Insufficient Balance!</p>

  </div>';
      $sqltran = "INSERT INTO `transactions` (`sender`, `receiver`, `amount`, `status`) VALUES ('$sender', '$reciever', '$amount', 'failed')";
      $sqltransact = mysqli_query($conn, $sqltran);
}
}
}
?>

<?php

//fetching data in descending order (latest entry first)
$conn = new mysqli('localhost','root','','customers');
$result = mysqli_query($conn, "SELECT * FROM transactions"); // using mysqli_query instead
?>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Customers</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://use.fontawesome.com/releases/v6.0.0/js/all.js"></script>
    <link rel="stylesheet" href="customers.css" />
  </head>

<body>
  <div class="container-fluid">
    <section id="title">

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
    </nav>

  </section>
  <div class="customers-border" style="padding-right:10px">

    <h1 style="padding: 15px padding-right: 25px">Transactions</h1>

  </div>
    <table width='80%'>
      <tr>

            <th>Sender</th>
            <th>Receiver</th>
            <th>Amount</th>
            <th>Status</th>


        </tr>
        <?php

        while($row = mysqli_fetch_assoc($result)){
        echo    '
            <tr>
              <td>'.$row['sender'].'</td>
              <td>'.$row['receiver'].'</td>
              <td>'.$row['amount'].'</td>
              <td>'; ?> <?php if($row['status'] == "succeed"){echo '<b><p style="color:green;">Succeed</p></b>';}else{echo '<b><p style="color:red;">Failed</p></b>';} ?>
              <?php echo '</td>
              </td>
            </tr>';
    }
        ?>
    </table>

  </body>

  </html>

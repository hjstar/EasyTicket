<?php
if (isset($_POST['signup']))
{
    $name=$_POST["username"];
    $password=$_POST["password"];

    $con=mysqli_connect("localhost","root","","project");
    $sql="INSERT INTO userdata VALUES ('$name','$password');";
    $var = $con->query($sql);
    if ($var)
    {
        session_start();
        $_SESSION["username"]=$name;
        $_SESSION["password"]=$password;
        header('Location: homepage after login.html');
        exit();
    }
    else{
        echo $con->error();
    }
}

?>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign Up</title>
    <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
    <style>
        *{
            margin:0;
            padding:0;
        }
        body
        {
            background-color:#f3bdb4;
        }
        .container
        {
            background-image: linear-gradient(135deg, #FAB2FF 10%, #1904E5 100%);
            border: 3px solid white;
            width: 50%;
            margin:auto;
            margin-top:100px;
            border-radius: 20px;
            font-family: "Open Sans", sans-serif;
        }
        .container h1
        {
            display:block;
            margin-top: 20px;
            text-align: center;
            color:white;
        }
        .container p
        {
            display:block;
            margin-top: 20px;
            text-align: center;
            color:white;
            font-size: 22px;
            font-weight: bold;

        }
        .container input
        {
            display:block;
            margin: auto;
            margin-top:30px;
            margin-bottom:30px;
            padding: 10px;
            width: 500px;
            border-radius: 20px;
            border: 1px darkcyan solid;
        }
        .container input[type=submit]
        {
            color:#ff1dd2;
            width:100px;
            cursor: pointer;
        }
        .container input[type=submit]:hover
        {
            color:plum;
        }

        .container a
        {
            width:23%;
            display: block;
            margin:auto;
            margin-bottom: 30px;
            text-decoration: none;
            color:aquamarine;
            font-weight: bold;
            font-size: 14px;
        }
        .container a:hover
        {
            color:white;
        }
        .logo{
            margin-left: 12%;
        }
        .bar{
            width: 100%;
            height: 100px;
            background-color: #d84e55;
        }

    </style>
</head>
<body>
<div class="bar">
        <img src="redrail-125.png" alt="" width="100" height="100" class="logo">
        
    </div>
    <div class="container">
        <p>Hello! Please Sign Up To Continue</p>
        <br>
        <h1>Create New Account</h1>
        <form method="post">
            <input type="email" name="username" placeholder="Email" required>
            <input type="password" name="password" placeholder="Password" required>
            <input type="submit" value="Sign Up" name="signup">
        </form>
        <a href="login.php">Already an User? Login</a>

    </div>
</body>
</html>
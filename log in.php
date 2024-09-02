<?php
$flag=0;
if(isset($_POST['submit'])){
    $username=$_POST['username'];
    $password=$_POST['password'];
    $con=mysqli_connect("localhost","root","","project");
    $sql="SELECT * FROM `userdata`;";
    $result=$con->query($sql);
    while($row=$result->fetch_assoc()){
        if($row['username']==$username && $row['password']==$password ){
            session_start();
            $_SESSION["username"]=$username;
            $_SESSION["password"]=$password;
            header('Location: homepage after login.html');
            exit();
        }
        else{
            $flag=1;
        }
    }

}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
    <style>
        .bar{
            width: 100%;
            height: 100px;
            background-color: #d84e55;
            position:sticky;
            top:0px;
        }
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
            width:20%;
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
        #error{
            color:red;
        }

    </style>
</head>
<body>
    <div class="bar">
        <img src="redrail-125.png" alt="" width="100" height="100" class="logo">
        
    </div>
    <div class="container">
        <p>Welcome Back! Please Login To Continue</p>
        <br>
        <p id="error"><?php if($flag==1) echo "OOPS! Incorrect Username or Password..."; ?></p>
        <h1>Login</h1>
        <form method="post">
            <input type="text" name="username" placeholder="Username" required>
            <input type="password" name="password" placeholder="Password" required>
            <input type="submit" value="Login" name="submit">
        </form>
        <a href="signup.php">Create New Account</a>

    </div>
</body>
</html>
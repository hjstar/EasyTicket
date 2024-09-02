<?php
session_start();
if(isset($_POST['submit'])){
    $tno=$_POST['tno'];
    if(isset($_SESSION['username']))
        $username=$_SESSION['username'];
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link href='https://fonts.googleapis.com/css?family=EB Garamond' rel='stylesheet'>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Booking Page</title>
    <style>
        body{
            font-family: 'EB Garamond';
            background-color:  #f3bdb4;
            margin: 0px;
            padding: 0px;
        }
        .bar{
            position: sticky;
            top:0px;
            width: 100%;
            height: 100px;
            background-color: #d84e55;
        }
        .logo{
            margin-left: 12%;
        }
        .book{
            width: 500px;
            border: 2px solid wheat;
            border-radius: 10px; 
            margin: auto;
            background-color: #d19b4a;
            padding: 10px;

        }
        h3{
            text-align:center;
        }
        .book input,select{
            margin-top: 27px;
            margin-left: 120px;
            width: 265px;
            height: 35px;
            border:2px solid yellowgreen;
            border-radius: 10px;
            text-align: center;
            background-color: whitesmoke;

        }
        #btn{
            margin-top: 27px;
            margin-left: 120px;
            width: 277px;
            height: 44px;
            border:2px solid yellowgreen;
            border-radius: 10px;
            text-align: center;
            color: yellow;
            background-color: red;
            cursor: pointer;

        }
        #btn:hover{
            background-color: brown;
        }


    </style>
</head>
<body>
    <div class="bar">
        <img src="redrail-125.png" alt="" width="100" height="100" class="logo">
        
    </div>
    <br><br>
    <div class="book">
        <h3>
            <?php
                if(isset($_POST['book'])){
                    $username=$_POST['username'];
                    $tno=$_POST['tno'];
                    $date=$_POST['date'];
                    $pname=$_POST['pname'];
                    $page=$_POST['page'];
                    $class=$_POST['class'];
                    $con=mysqli_connect("localhost","root","","project");
                    $sql="INSERT INTO `bookings` (`Ref no`, `Username`, `Train no`, `Date`, `Passenger name`, `Passenger age`,`class`) VALUES (NULL, '$username', '$tno', '$date', '$pname', '$page', '$class');";
                    $con->query($sql);
                    echo "Ticket Succeafully Booked"."<br>";
                    $sql="SELECT `Ref no` FROM `bookings` WHERE `Username`='$username' and `Passenger name`='$pname' and `Passenger age`='$page';";
                    $ref=$con->query($sql);
                    $row=$ref->fetch_assoc();
                    $sql="UPDATE `$tno` SET `$class`=`$class`-1 WHERE `$class`>0 and `Date`='$date';";
                    $con->query($sql);

                    echo "Your Reference number is ". $row['Ref no'].". <br>Note it down for furthure use.";

                }
            ?> 
        
        </h3>
        <form action="" method="post">
            <input type="email" name="username" id="" placeholder=" Enter Username" value="<?php if(isset($_SESSION['username'])) echo $username; ?>" >
            <br><input type="number" name="tno" id="" placeholder=" Enter Train Number" value="<?php echo $tno ?>">
            <br><input onfocus="(this.type='date')" name="date" id="" placeholder="Confirm Date Of Travel">
            <br><input type="text" name="pname" placeholder="Enter Passenger's Name">
            <br><input type="number" name="page" placeholder="Enter Passenger's Age">
            <br><select name="class">
                <option value="">Select Class</option>
                <option value="SL">SL</option>
                <option value="3A">3A</option>
                <option value="2A">2A</option>
                <option value="1A">1A</option>
            </select>
            <br><input type="submit" value="BOOK TICKET" id="btn" name="book">

        </form>
    </div>
</body>
</html>
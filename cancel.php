<?php
session_start();
$_SESSION['flag']=0;
$flag=0;
$con=mysqli_connect("localhost","root","","project");
if (isset($_POST['cancel']))
{
    $refno=$_POST["submit"];
    $sql="SELECT * FROM  `bookings` WHERE `Ref no`='$refno';";
    $result=mysqli_query($con,$sql);
    while($rowarray=$result->fetch_row())
    {
        if (in_array($refno,$rowarray))
        {
            $tno=$rowarray[2];
            $date=$rowarray[3];
            $class=$rowarray[6];
            $_SESSION['flag']=1;

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
    <title>Ticket Cancellation</title>
    <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
    <style>
        *{
            margin:0;
            padding:0;
        }
        body
        {
            background-color: rebeccapurple;
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

        #detail
        {
            color:white;
            margin:50px;
        }
        pre
        {
            display:inline;
        }
    </style>
</head>
<body>
    <div class="container">
        <p>Ticket Cancellation</p>
        <br>
        <h1>Enter Ticket Details</h1>
        <form method="post">
            <input type="text" name="submit" placeholder="Reference Number" required>
            <input type="submit" value="Proceed" name="cancel">
        </form>
        <div id="detail">
            <?php
                if(isset($_POST['submit'])){
                $flag=$_SESSION['flag'];
                if ($flag==0)
                {
                    echo("Reference Number Not Found!<br>");
                }
                else if ($flag==1)
                {
                    $result2=mysqli_query($con,$sql);
                    while($rowarray2=$result2->fetch_row())
                    {
                        echo("<strong>Ticket Details:</strong> <br>");
                        echo ("<br>");
                        echo ("<br>");
                        echo("Reference No.:<pre>     </pre>");
                        echo ($rowarray2[0]);
                        echo ("<br>");
                        echo ("<br>");
                        echo("Email:<pre>     </pre>");
                        echo ($rowarray2[1]);
                        echo ("<br>");
                        echo ("<br>");
                        echo("Train No.:<pre>     </pre>");
                        echo ($rowarray2[2]);
                        echo ("<br>");
                        echo ("<br>");
                        echo("Date:<pre>     </pre>");
                        echo ($rowarray2[3]);
                        echo ("<br>");
                        echo ("<br>");
                        echo("Name:<pre>     </pre>");
                        echo ($rowarray2[4]);
                        echo ("<br>");
                        echo ("<br>");
                        echo("Age:<pre>     </pre>");
                        echo ($rowarray2[5]);
                        echo ("<br>");
                        echo ("<br>");
                        echo("Class:<pre>     </pre>");
                        echo ($rowarray2[6]);
                        echo ("<br>");
                        echo ("<br>");
                    }
                    echo("<p>Cancel Ticket?</p>");
                }
                }
            ?>
        </div>
        <?php
            if($flag==1)
            {

        ?>
            <form action="js.php" method="post">

                <input type="hidden" name="refno" value="<?php echo $refno;?>">                
                <input type="hidden" name="tno" value="<?php echo $tno;?>">                
                <input type="hidden" name="date" value="<?php echo $date;?>">
                <input type="hidden" name="class" value="<?php echo $class;?>">
                <input type="submit" value="YES" name='confirm'>
            </form>
        <?php
        }
        ?>
        
    </div>
</body>
</html>
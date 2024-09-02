<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>search Results</title>
    <style>
        body{
            margin:0px;
            padding:0px;
            background-color:#e0e0e0;
        }
        h3{
            display: inline;
        }
        .result{
            margin: auto;
            width: 460px;
            height: 250px;
            Background-color:white;
            padding: 10px;
            padding-right: 2px;
        }
        .bar{
            width: 100%;
            height: 100px;
            background-color: #d84e55;
            position: sticky;
            top:0px;
        }
        .logo{
            margin-left: 12%;
        }
        #arr{
            font-size:xx-large;
            display:inline-block;
            text-align:left;
        }
        #time{
            font-size:large;
            display:inline-block;
            text-align:center;
        }
        #dep{
            font-size:xx-large;
            display:inline-block;
            text-align:right;
        }
        .ti{
            width:147px;

        }
        .search div{
            display:block;
        }
        .class{
            border:2px solid #ff9f1c;
            display:inline-block;
            width:105px;
            border-radius :10px;
            background-color:#eddee0;
            height: 88px;
        }
        .price{
            display:inline;
            float: right;
        }
        .type{
            display:inline;
            float:left;

        }
        .seats{
            display: block;
            float: left;
        }
        .btn{
            margin-right: 20px;
            float:right;
            margin-top: 20px;
            height: 28px;
            width: 80px;
            border: 2px solid red;
            border-radius: 10px;
            color:wheat;
            background-color:brown;
            cursor:pointer;
        }
    </style>
</head>
<body>
    <div class="bar">
        <img src="redrail-125.png" alt="" width="100" height="100" class="logo">
        
    </div>
    <br><br>

<?php
if(isset($_POST['btn'])){
    $start=$_REQUEST['start'];
    $end=$_REQUEST['end'];
    $date=$_REQUEST['date'];
    //echo "$start"."<br>";
    //echo "$end"."<br>";
    //echo "$date"."<br>";
    $day=date("l",strtotime($date));

    $con=mysqli_connect("localhost","root","","project");
    if(isset($con)){
        $sql="SELECT * FROM `trains`;";
        $result=$con->query($sql);
        if(isset($result)){
            while($row=$result->fetch_assoc()){
                $tno=$row['Train no'];
                $r=$con->query("SELECT * FROM `$tno` WHERE `Date`='$date';");
                $ro=$r->fetch_assoc();
                if(($row[$day]==1) && in_array($start,$row) && in_array($end,$row) && ((array_search($start,array_values($row)))<(array_search($end,array_values($row))) )){
                    $values=array_values($row);
                    $arrival=$values[array_search($start,$values)+2];
                    $departure=$values[array_search($end,$values)+1];
                    $distance1=$values[array_search($start,$values)+3];
                    $distance2=$values[array_search($end,$values)+3];
                    $t1=new DateTime($arrival);
                    $diff=$t1->diff(new DateTime($departure));
                    $arrival=substr($arrival,0,5);
                    $departure=substr($departure,0,5);
                    $distance=$distance2-$distance1;
                    
                    
                    ?>
    <div class="result">
        <h3><?php echo $row['Train name']." "; ?></h3>|<?php echo " ".$row['Train no'];?><br>
        <div id="arr" class="ti"><?php echo $arrival;?><br><?php echo $start ?></div>
        <div id="time" class="ti"><?php echo $diff->h."h".$diff->i."m";?></div>
        <div id="dep" class="ti"><?php echo $departure;?><br><?php echo $end ?></div>
        <div class="class">
            <p class="type"><b>SL</b></p>
            <p class="price"><b>Rs<?php echo" ".intval($distance*0.55); ?></b></p>
            <br><p class="seats"><?php echo $ro['SL']." SEATS";?><p>               
        </div>
        <div class="class">
            <p class="type"><b>3A</b></p>
            <p class="price"><b>Rs<?php echo" ".intval($distance*1.48); ?></b></p>
            <br><p class="seats"><?php echo $ro['3A']." SEATS";?></p>     
        </div>
        <div class="class">
            <p class="type"><b>2A</b></p>
            <p class="price"><b>Rs<?php echo" ".intval($distance*2.1); ?></b></p>
            <br><p class="seats"><?php echo $ro['2A']." SEATS";?></p>            
        </div>
        <div class="class">
            <p class="type"><b>1A</b></p>
            <p class="price"><b>Rs<?php echo" ".intval($distance*3.54); ?></b></p>
            <br><p class="seats"><?php echo $ro['1A']." SEATS";?><p>            
        </div>
        <form action="Bookings.php" method="post">
            <input type="hidden" name="tno" value="<?php echo $tno ?>">
            <input type="submit" name="submit" value="BOOK" class="btn">
        </form>
    </div>
    <br><br>
</body>
</html>

                    <?php

                }
            }


        }
        else{
            echo $con->error();
        }
    }
    else{
        die("ERROR:".mysqli_connect_error());
    }
}
?>

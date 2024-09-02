<?php
    if (isset($_POST["confirm"]))
    {
        $con=mysqli_connect("localhost","root","","project");
        $tno=$_POST['tno'];
        $date=$_POST['date'];
        $class=$_POST['class'];
        $refno=$_POST['refno'];
        $sql="DELETE FROM `bookings` WHERE `Ref no`='$refno';";
        mysqli_query($con,$sql);
        $sql="UPDATE `$tno` SET `$class`=`$class`+1 WHERE `Date`='$date'";
        mysqli_query($con,$sql);
    }
?>
<script>
    alert("Ticket Cancelled Successfully");
</script>
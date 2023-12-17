<?php
// dashboard.php
// Check if the lecturer is logged in and display the dashboard

// Start the session
session_start();

// Check if the lecturer is not logged in, redirect to login.php
if (!isset($_SESSION['email'])) {
    header("Location: login.php");
    exit();
}

// Display dashboard with lecturer details
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lecturer Dashboard</title>
    <link rel="stylesheet" type="text/css" href="styles.css">

</head>
<body>
<h2>Welcome to the Advanced Technological Institute - Batticaloa</h2>
        <!-- Add additional dashboard content as needed -->
        <p><b>
            Address – Main Street, KovilKulam, Arayampathi, Batticaloa<br>
            Telephone – 065-2247519/ 065-2247470<br>
            E-mail – atibatticaloa@sliate.ac.lk<br>
            Opening Hours: 8.30 am – 4.15 pm<br>
            Holidays: Closed
</b>
<p>
<a href="logout.php" class="logout-button">Logout</a>

</body>
</html>
<?php include('footer.php'); ?>
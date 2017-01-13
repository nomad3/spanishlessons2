<?php
    // Start the session
    ob_start();
    @session_start();

    // Check to see if actually logged in. If not, redirect to login page
    if (!isset($_SESSION['loggedIn']) || $_SESSION['loggedIn'] == false) {
        header("Location: index.php");
    }else
	{
        header("Location: spanish_lessons/index.php");
	}
?>

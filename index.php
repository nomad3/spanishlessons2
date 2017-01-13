<?php
include ('spanish_lessons/includes/config.php');
include ('spanish_lessons/includes/connect.php');

    // Start the session
    @session_start();

    // Error message
    $error = "";

    // Checks to see if the user is already logged in. If so, refirect to correct page.
    if (isset($_SESSION['loggedIn']) && $_SESSION['loggedIn'] == true) {
        $error = "success";
        header('Location: success.php');
    }   
        
    // Checks to see if the username and password have been entered.
    // If so and are equal to the username and password defined above, log them in.
    if (isset($_POST['username']) && isset($_POST['password'])) {
        // Defines username and password. Retrieve however you like,
        $username = $_POST['username'];
        $password = $_POST['password'];
        $sth = $db->prepare("SELECT * FROM users WHERE email = :login AND password = :password");
        $sth->execute(array(
            ':login' => $_POST['username'],
            ':password' => sha1(base64_encode($username).'-'.md5($password))));
        $data = $sth->fetch();
        $count =  $sth->rowCount();
        if ($count > 0) {
            $_SESSION['loggedIn'] = true;
            $_SESSION['first_name'] = $data['first_name'];
            $_SESSION['last_name'] = $data['last_name'];
            $_SESSION['email'] = $data['email'];
            header('Location: success.php');
        }
        else {
            $_SESSION['loggedIn'] = false;
            $error = "Invalid username and password!";
        }
    }
?>
<!DOCTYPE html> 
<html> 
	<head> 
	<title>Introductory Spanish Lessons | Introductory Spanish Lessons</title> 
	
	<meta name="viewport" content="width=device-width, initial-scale=1" /> 

	<link rel="stylesheet" href="http://code.jquery.com/mobile/1.0b2/jquery.mobile-1.0b2.min.css" />
    <link rel="stylesheet" href="spanish_lessons/assets/css/styles.css" />
	<script type="text/javascript" src="spanish_lessons/assets/js/jquery-1.6.2.min.js"></script>
	<script type="text/javascript" src="spanish_lessons/assets/js/jquery.mobile-1.0b2.min.js"></script>
</head> 
<body> 

<div data-role="page">

	<header data-role="header" data-theme="b">
	    <a href="./" data-icon="home" data-iconpos="notext" data-transition="fade">Home</a>
		<h1>Introductory Spanish Lessons</h1>
	</header>


	<div data-role="content">
        <!-- Output error message if any -->
        <?php echo $error; ?>
        <div align="center"> <h2>Enter Username and Password</h2></div>
		<div>
			<!-- form for login -->
			<form method="post" action="index.php" id="loginform" data-ajax="false">
				<div class="container" data-role="fieldcontain">
					<input type="text" name="username" id="username" placeholder="Username"><br/>
					<input type="password" name="password" id="password" placeholder="Password"><br/>
					<input type="submit" value="Log In!" id="submit">
				</div>
			</form>		
		</div>
	</div>

	<div data-role="footer" style="position: absolute !important;bottom: 0;width: 100%;" id="pageFooter">
		<h4>2017 &copy; Introductory Spanish Lessons</h4>
	</div>
</div>
</body>
</html>

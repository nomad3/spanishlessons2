<?php render('_header',array('title'=>$title))?>

<p>Welcome, <?php echo $_SESSION['first_name']." ".$_SESSION['last_name'];?>!</p>
<p></p>

<ul data-role="listview" data-inset="true" data-theme="c" data-dividertheme="b">
    <li data-role="list-divider">Choose a Lesson</li>
    <?php render($content) ?>
</ul>

<?php render('_footer')?>
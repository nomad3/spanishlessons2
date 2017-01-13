<?php
/* This controller renders the home page */

class HomeController{
	public function handleRequest(){
	
		Auth::handleLogin();
		
		// Select all the categories:
		$content = Category::find();
		
		render('home',array(
			'title'		=> 'Introductory Spanish Lessons',
			'content'	=> $content
		));
	}
}

?>
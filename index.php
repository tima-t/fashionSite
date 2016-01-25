<?php
//errrors
//ini_set('display_errors', 1);
//ini_set('display_startup_errors', 1);error_reporting(E_ALL);

session_start();

//header("location:html/about.html");
// lang

if(isset($_SESSION["BG"])){
	include "lang/BG.php";
	$l="bg";
}
else if(isset($_SESSION['EN'])){
	include "lang/EN.php";
	$l="en";
}
else{
	include "lang/BG.php";
	$l="bg";
}





date_default_timezone_set('Europe/Sofia');	

if (isset($_GET['action']))
{
	$action = $_GET['action'];
}
else
{
	$action = 'home';
}

function mondaytime()
{
	$time = time();
	$day = date('N');
	$time -= ($day - 1) * 24 * 60 * 60;
	
	return $time;
}



require_once("db/db.php");


$headerData=$mysqli->query("select * from banners_$l");

include('html/header.html');
switch ($action)
{
	case 'home':
		$data=$mysqli->query("select * from homeinf_$l");
		include('html/home.html');
		break;

	case 'about':
		$data=$mysqli->query("select * from about_$l");
		include('html/about.html');
		break;
		
	case 'portfolio':
		include('html/portfolio.html');
		break;
	case 'contacts':

		$data=$mysqli->query("select * from contacts_$l");
	include('html/contacts.html');
	break;
	case 'BGT':

		$_SESSION['BG']=true;
		unset($_SESSION['EN']);
		$_GET["action"]="home";
		echo("<script> window.location = 'index.php';</script>");


		break;

	case 'ENT':

		$_SESSION['EN']=true;
		unset($_SESSION['BG']);
		$_GET["action"]="home";
		echo("<script> window.location = 'index.php';</script>");



		break;

		
/*	case 'reservation':
		if (isset($_GET['week']))
		{
			$week = $_GET['week'];
		}
		else
		{
			$week = 0;
		}
	
		$result = $SQL->query("SELECT book FROM bookings WHERE book >= NOW()");
		$bookings = array();
		while ($row = $result->fetch_object())
		{
			$bookings[] = $row->book;
		}
		
		include('html/reservation.html');
		break;*/

	case 'price':


		$data=$mysqli->query("select * from price_$l");
		$head=$mysqli->query("select * from workt_$l");


		include('html/price.html');
		break;
/*	case 'book':
		$SQL->query("INSERT INTO bookings(name, email, book) VALUE('".$_POST['name']."', '".$_POST['email']."', '".$_POST['book']."')");
		echo '<h3>Successful reservation!!!</h3>';
		echo '<p>You have reserved for '.$_POST['book'].'</p>';
		break;*/
		
	/*case 'login':
		include('html/login.html');
		break;
		
	case 'logout':
	{
		if (isset($_SESSION['logged']))
		{
			unset($_SESSION['logged']);
		}
		header("location: index.php");
	}
	
	case 'auth':
		$result = $mysqli->query("SELECT id FROM admin WHERE user = '".$_POST['user']."' AND pass = md5('".$_POST['pass']."')");

		if ($result->num_rows)
		{
			$_SESSION['logged'] = true;
			//header("location: index.php");

		}
		else
		{
			echo '<span style="color: red;">Invalid username/password</span>';
			include('html/login.html');

		}
		break;*/
		
	/*case 'bookings':
		if (isset($_SESSION['logged']))
		{
			$result = $SQL->query("SELECT id, name, email, book FROM bookings WHERE book >= NOW() ORDER BY book");
			include('html/bookings.html');
		}
		break;
		
	case 'all_bookings':
		if (isset($_SESSION['logged']))
		{
			$result = $SQL->query("SELECT id, name, email, book FROM bookings ORDER BY book");
			include('html/bookings.html');
		}
		break;
		
	case 'past_bookings':
		if (isset($_SESSION['logged']))
		{
			$result = $SQL->query("SELECT id, name, email, book FROM bookings WHERE book < NOW() ORDER BY book");
			include('html/bookings.html');
		}
		break;
		
	case 'delete':
		if (isset($_SESSION['logged']))
			if (isset($_GET['id']))
			{
				$SQL->query("DELETE FROM bookings WHERE id = ".$_GET['id']);
				header("location: index.php?action=bookings");
			}
	*/
}



include('html/footer.html');
?>
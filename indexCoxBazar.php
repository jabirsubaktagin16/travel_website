<?php
	$msg="";
	if (isset($_POST['upload'])) {
		$target="images/".basename($_FILES['image']['name']);
		$db=mysqli_connect("localhost", "root", "", "vromon_bd");
		$addName=mysqli_real_escape_string($db, $_POST['destination']);
		$image=$_FILES['image']['name'];
		$text=mysqli_real_escape_string($db, $_POST['text']);

		$sql="INSERT INTO coxbazar (placeName, placeImage, placeDetails) VALUES ('$addName', '$image', '$text')";
		mysqli_query($db, $sql);
		if(move_uploaded_file($_FILES['image']['tmp_name'], $target)){
			$msg="Successfull";
		}else{
			$msg="Failed";
		}
	}
?>
<!DOCTYPE html>
<html>
<head>
	<title>Place Info Upload</title>
	<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<div id="content">
	<form method="post" action="indexCoxBazar.php" enctype="multipart/form-data">
		<input type="hidden" name="size" value="1000000">
		<div>
			<input type="text" name="destination">
		</div>
		<div>
			<input type="file" name="image">
		</div>
		<div>
			<textarea name="text" cols="40" rows="4" placeholder="Say Something about this place...">
			</textarea>
		</div>
		<div>
			<input type="submit" name="upload" value="Upload">
		</div>
	</form>
</div>
</body>
</html>
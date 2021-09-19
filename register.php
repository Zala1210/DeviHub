<!DOCTYPE html>
<html lang="en">
 <?php include 'assets/assets.php';?>

</head>
<body class="barber_version">

    <!-- LOADER -->
	<?php include 'assets/header.php';?>

        <!-- Page Content -->
        

            <div id="barbers" class="section lb">
                <div class="container-fluid">
                    <div class="section-title row text-center">
                        <div class="col-md-8 col-md-offset-2">
                        <small>DeviHub</small>
                        <h3>REGISTRATION</h3>
                        <hr class="grd1">
                        </div>
                    </div><!-- end title -->
					<div class="reg">
		<form id="registerform" method='POST'>
			<p>Please fill the form below to register your account.</p>
			<hr>
			<label for="usr"><b>Username</b></label>
			<input type="username"  name="usr" required>

			<label for="email"><b>Email</b></label>
			<input type="text"  name="email" required>

			<label for="psw"><b>Password</b></label>
			<input type="password"  name="psw" required>

			<label for="psw-repeat"><b>Repeat Password</b></label>
			<input type="password"  name="psw-repeat" required>
			<hr>

		
                    <table id='search-table'>
                        <tr>
                            <th> <input class='checkbox' type="checkbox" name="PHP" value="php"> PHP</th>
                            <th> <input class='checkbox'type="checkbox" name="JAVA" value="java"> JAVA</th>
                            <th> <input class='checkbox'type="checkbox" name="HTML" value="html"> HTML</th>
                            <th> <input class='checkbox'type="checkbox" name="JAVASCRIPT" value="js"> JAVASCRIPT</th>
                            <th> <input class='checkbox'type="checkbox" name="PYTHON" value="python"> PYTHON</th>
                            
                        </tr>
                        <tr>
                            <th> <input class='checkbox'type="checkbox" name="C++" value="`c++`"> C++</th>
                            <th> <input class='checkbox'type="checkbox" name="C" value="c"> C</th>
                            <th> <input class='checkbox'type="checkbox" name="Unity" value="unity"> Unity</th>
                            <th> <input class='checkbox'type="checkbox" name=".NET" value="`.net`"> .NET</th>
                            <th> <input class='checkbox'type="checkbox" name="JSP" value="java spring"> JSP</th>
                            
                        <tr>
                            <th> <input class='checkbox'type="checkbox" name="NODEJS" value="`node js`"> NODE JS</th>
                            <th> <input class='checkbox'type="checkbox" name="LARAVEL" value="laravel"> LARAVEL</th>
                            <th> <input class='checkbox'type="checkbox" name="PERL" value="perl"> PERL</th>
                            <th> <input class='checkbox'type="checkbox" name="COBOL" value="cobol"> COBOL</th>
                            <th> <input class='checkbox'type="checkbox" name="PASCAL" value="pascal"> PASCAL</th>

                        </tr>
                        <tr>
                            <th> <input class='checkbox' type="checkbox" name="MATHLAB" value="mathlab"> MATHLAB</th>
                            <th> <input class='checkbox'type="checkbox" name="CSS" value="css"> CSS</th>
                            <th> <input class='checkbox'type="checkbox" name="KOTLIN" value="kotlin"> KOTLIN</th>
                            <th> <input class='checkbox'type="checkbox" name="MVC" value="mvc"> MVC</th>
                            <th> <input class='checkbox'type="checkbox" name="C#" value="`c#`"> C#</th>
                            <th> <input class='checkbox'type="checkbox" name="SWIFT" value="swift"> SWIFT</th>
                            

                        </tr>
                    </table>
					</div>
					<button type="submit" class="registerbtn">Register</button>
                </form>

		<div class="container signin">
			<p>Already have an account? <a href="loginForm.php">Login here</a>.</p>
		</div>
</form>
                                
            </div>
                        

            <?php include 'assets/footer.php';?>
</body>
</html>
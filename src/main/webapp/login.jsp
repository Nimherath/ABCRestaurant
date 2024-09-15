<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ABC Restaurant</title>
    <link rel="stylesheet" href="css/login.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Cinzel:wght@400..900&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;700&family=Playfair+Display:wght@400;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
</head>
<body>
    <div class="wrapper active-popup">
        <span class="icon-close">
            <i class="fas fa-times"></i>
        </span>
        <div class="form-box login">
            <div class="message"></div>
            <h2>Login</h2>
            <form action="home.jsp" method="post">
                <div class="input-box">
                    <input type="email" name="email" required>
                    <label>Email</label>
                    <span class="icon"><i class="fas fa-envelope"></i></span>
                </div>
                <div class="input-box">
                    <input type="password" name="password" required>
                    <label>Password</label>
                    <span class="icon"><i class="fas fa-lock"></i></span>
                </div>
                <div class="remember-forgot">
                    <label><input type="checkbox" name="rememberMe">Remember me</label>
                    <a href="#">Forgot Password?</a>
                </div>
                <button type="submit" class="btn">Login</button>
                <div class="login-register">
                    <p>Don't have an account? <a href="#" class="register-link">Register</a></p>
                </div>
            </form>
        </div>
        <div class="form-box register">
            <div class="message"></div>
            <h2>Registration</h2>
      <form action="/ABCRestaurant/RegisterServlet" method="POST">


                <div class="input-box">
                    <input type="text" name="username" required>
                    <label>Username</label>
                    <span class="icon"><i class="fas fa-user"></i></span>
                </div>
                <div class="input-box">
                    <input type="email" name="email" required>
                    <label>Email</label>
                    <span class="icon"><i class="fas fa-envelope"></i></span>
                </div>
                <div class="input-box">
                    <input type="password" name="password" required>
                    <label>Password</label>
                    <span class="icon"><i class="fas fa-lock"></i></span>
                </div>
                <div class="remember-forgot">
                    <label><input type="checkbox" name="terms">I agree to the terms & conditions</label>
                </div>
                <button type="submit" class="btn">Register</button>
                <div class="login-register">
                    <p>Already have an account? <a href="#" class="login-link">Login</a></p>
                </div>
            </form>
        </div>
    </div>
    <script src="js/login.js"></script>
</body>
</html>

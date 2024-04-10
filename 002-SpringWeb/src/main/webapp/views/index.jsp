<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <style>
    body {
      font-family: "SF Pro Text", "SF Pro Icons", "AOS Icons", "Helvetica Neue", Helvetica, Arial, sans-serif, system-ui;
      background-color: #101010;
      color: #fff;
      margin: 0;
      padding: 0;
      display: flex;
      align-items: center;
      justify-content: center;
      min-height: 100vh;
    }

    .main {
      text-align: center;
      perspective: 1000px; /* Adding 3D perspective to the container */
    }

    .b1 {
      display: inline-block;
      text-decoration: none;
      padding: 1rem 2rem;
      background: linear-gradient(to right, #000, #333); /* Black to dark gray gradient */
      color: #fff;
      border-radius: 10px;
      position: relative;
      overflow: hidden;
      box-shadow: 0 0 10px rgba(255, 255, 255, 0.5); /* Light box shadow */
      transition: transform 0.3s, box-shadow 0.3s; /* Adding transition for smoother effects */
    }

    .b1::before {
      content: "";
      position: absolute;
      top: 0;
      left: 0;
      width: 100%;
      height: 100%;
      background: radial-gradient(ellipse at center, rgba(255, 255, 255, 0.2) 0%, rgba(255, 255, 255, 0) 100%);
      pointer-events: none;
    }

    .b1:hover {
      background: linear-gradient(to right, #222, #555); /* Dark gray to light gray gradient on hover */
      box-shadow: 0 0 20px rgba(255, 255, 255, 0.7); /* Increased box shadow on hover for depth effect */
      transform: translate3d(0, 0, 10px); /* Adding a slight translation along the z-axis for 3D effect on hover */
    }

    h2 {
      font-size: 40px;
    }
  </style>
</head>
<body>
  <div class="main">
    <h2>Welcome!</h2>
    <a href="login" class="b1">Click To Login</a>
    <br><br>
    <a href="reg" class="b1">Click To Register</a>
  </div>
</body>
</html>

<?php
require './assets/class/database.class.php';
require './assets/class/function.class.php';
?>
<!doctype html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title><?= @$title ?></title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">

    <link rel="icon" href="./assets/images/logo1.png">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
    

    <style>
        body {
            background: transparent;
            /* background: linear-gradient(to right, #FF4B2B, #FF416C); */
            margin: 0;
            align-items: center;
            justify-content: center;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        .form-signin {
            max-width: 380px;
            width: 100%;
            padding: 2rem;
            background-color:rgba(255, 255, 255, 0.9);
            border-radius: 16px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
            animation: fadeIn 0.5s ease-in-out;
        }

        .form-signin .form-floating:focus-within {
            z-index: 2;
        }

        .form-signin input[type="text"],
        .form-signin input[type="email"],
        .form-signin input[type="password"] {
            margin-bottom: 15px;
            border-radius: 8px;
            border: 1px solidrgb(255, 44, 44);
            transition: all 0.2s ease-in-out;
        }

        .form-signin input:focus {
            border-color: #ff4b2b;
            box-shadow: 0 0 0 0.2rem rgba(255, 75, 43, 0.25);
        }

        .btn-primary {
            background-color:rgb(0, 0, 0);
            border: none;
            transition: background-color 0.3s ease-in-out;
        }

        .btn-primary:hover {
            background-color:rgb(206, 75, 75);
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateY(30px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        a {
            color:rgb(0, 0, 0);
        }

        a:hover {
            color:rgb(206, 75, 75);
            text-decoration: underline;
        }
        #bg-video {
    position: fixed;
    top: 0;
    left: 0;
    min-width: 100vw;
    min-height: 100vh;
    object-fit: cover;
    z-index: -1;
    opacity: 2.00; /* Adjust based on visibility */
}

    </style>

</head>

<body class="">
    <video autoplay muted loop id="bg-video">
    <source src="./assets/video/red.mp4" type="video/mp4">
    Your browser does not support the video tag.
</video>



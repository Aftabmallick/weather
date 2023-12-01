<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="description" content="Weather Application Using HTML, CSS, JavaScript, JSP, Servlet">
    <meta name="author" content="Aftab Mallick">
    <meta property="og:title" content="Weather Application By Aftab Mallick" />
	<title>Weather Application</title>
	<link rel="stylesheet" href="style.css">
	<link class="fav" rel="shortcut icon" href="favicon/clear.ico" type="image/x-icon">
</head>
<body>
<div class="card">
        <form action="Myservlet" method="post" class="search">
        	
            <input type="text" placeholder="enter city name" spellcheck="false" name="city">
            <button><img src="images/search.png" alt="search-icon"></button>
        </form>
        <div class="error" >
            <p>Invalid city name</p>
        </div>
        <div class="weather">
            <img src="images/rain.png" alt="" class="weather-icon">
            <h1 class="temp">${temperature} °C</h1>
            <h2 class="city">${city}</h2>
            <div class="details">
                <div class="col">
                    <img src="images/humidity.png" alt="">
                    <div>
                        <p class="humidity">${humidity}</p>
                        <p>Humidity</p>
                    </div>
                </div>
                <div class="col">
                    <img src="images/wind.png" alt="">
                    <div>
                        <p class="wind">${windSpeed} Km/h</p>
                        <p>Wind Speed</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <span class="status" >${status}</span>
    <span class="weathercondition" >${weatherCondition}</span>
    <script >
    const status = document.querySelector(".status");
    const wc = document.querySelector(".weathercondition").innerHTML;
    const weatherIcon = document.querySelector(".weather-icon");
    const favIcon = document.querySelector(".fav");
    console.log(status.innerHTML);
    if(status.innerHTML == ""){
        document.querySelector(".error").style.display="block";
        document.querySelector(".weather").style.display="none";
        console.log("if");
    }
    else{
    	document.querySelector(".error").style.display="none";
        document.querySelector(".weather").style.display="block";
        console.log("else");
        if(wc=="Clouds"){
        weatherIcon.src = "images/clouds.png";
        favIcon.href="favicon/clouds.ico";
        }
        else if(wc=="Clear"){
        weatherIcon.src = "images/clear.png";
        favIcon.href="favicon/clear.ico";
        }
        else if(wc=="Rain"){
        weatherIcon.src = "images/rain.png";
        favIcon.href="favicon/rain.ico";
        }
        else if(wc=="Drizzle"){
        weatherIcon.src = "images/drizzle.png";
        favIcon.href="favicon/drizzle.ico";
        }
        else if(wc=="Mist"){
        weatherIcon.src = "images/mist.png";
        favIcon.href="favicon/mist.ico";
        }
    }
    </script>
</body>
</html>
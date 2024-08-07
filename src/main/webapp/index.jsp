<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HomePage</title>
<style>
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        background-image: url('https://cdn.pixabay.com/photo/2024/04/19/12/13/ai-generated-8706226_640.png');
        background-size: cover;
        background-repeat: no-repeat;
        background-attachment: fixed;
    }
    .sidebar {
        height: 100%;
        width: 250px;
        position: fixed;
        top: 0;
        left: 0;
        background-color: rgba(51, 51, 51, 0.9); /* Slightly transparent background */
        padding-top: 20px;
        box-shadow: 2px 0 5px rgba(0,0,0,0.5);
        transition: 0.3s;
    }
    .sidebar a {
        padding: 15px 20px;
        text-decoration: none;
        font-size: 20px;
        color: white;
        display: block;
        transition: 0.3s;
    }
    .sidebar a:hover {
        background-color: #575757;
        padding-left: 30px; /* Add a slight padding to the left on hover for a sliding effect */
    }
    .main {
        margin-left: 260px; /* Same as the width of the sidebar + some space */
        padding: 20px;
        background-color: rgba(255, 255, 255, 0.8); /* Slightly transparent background */
        border-radius: 10px; /* Optional: add some rounded corners */
        transition: margin-left 0.3s;
    }
    .sidebar .logo {
        font-size: 25px;
        color: white;
        text-align: center;
        padding: 10px 0;
        margin-bottom: 20px;
    }
    .toggle-btn {
        position: fixed;
        top: 20px;
        left: 20px;
        font-size: 30px;
        background-color: rgba(51, 51, 51, 0.9);
        color: white;
        border: none;
        padding: 5px 10px;
        cursor: pointer;
        z-index: 1000;
        border-radius: 5px;
        transition: left 0.3s;
    }
    .collapsed .sidebar {
        width: 0;
        padding-top: 60px;
        overflow-x: hidden;
    }
    .collapsed .main {
        margin-left: 60px; /* Adjust to the width of the button */
    }
    .collapsed .toggle-btn {
        left: 20px; /* Adjust the button's position */
    }
</style>
</head>
<body>

<button class="toggle-btn" onclick="toggleSidebar()">☰</button>

<div class="sidebar">
    <div class="logo">Library</div>
     <a href="index.jsp">Dashboard</a>
    <a href="addbook.jsp">Add Book</a>
    <a href="updatebook.jsp">Update Book</a>
    <a href="BookListServlet">Book List</a>
</div>

<div class="main">
    <h1>Welcome To Library..</h1>
</div>

<script>
    function toggleSidebar() {
        document.body.classList.toggle('collapsed');
    }
</script>

</body>
</html>

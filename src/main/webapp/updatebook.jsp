<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Book</title>
<style>
    @charset "UTF-8";
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        background-image: url('https://cdn.pixabay.com/photo/2024/04/19/12/13/ai-generated-8706226_640.png');
        background-size: cover;
        background-repeat: no-repeat;
        background-attachment: fixed;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        position: relative;
    }
    .sidebar {
        height: 100%;
        width: 250px; /* Default width of the sidebar */
        position: fixed;
        top: 0;
        left: 0;
        background-color: rgba(51, 51, 51, 0.9);
        padding-top: 20px;
        box-shadow: 2px 0 5px rgba(0,0,0,0.5);
        transition: width 0.3s;
        overflow-x: hidden;
        z-index: 1000;
    }
    .sidebar.hidden {
        width: 0;
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
        padding-left: 30px;
    }
    .main {
        margin-left: 250px; /* Default margin for main content */
        padding: 20px;
        transition: margin-left 0.3s;
    }
    .main.expanded {
        margin-left: 10px;
    }
    .sidebar .logo {
        font-size: 25px;
        color: white;
        text-align: center;
        padding: 10px 0;
        margin-bottom: 20px;
    }
    .toggle-btn {
        position: absolute;
        top: 20px;
        left: 20px;
        font-size: 30px;
        cursor: pointer;
        color: white;
        z-index: 1000;
    }
    .container {
        background-color: rgba(255, 255, 255, 0.8);
        padding: 20px;
        width: auto;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        text-align: center;
    }
    h1 {
        color: #333333;
        margin-bottom: 20px;
    }
    .book-form label {
        display: block;
        text-align: left;
        margin-bottom: 5px;
        color: #333333;
    }
    .book-form input[type="text"] {
        width: calc(100% - 110px); /* Adjust width for button space */
        padding: 10px;
        margin-bottom: 20px;
        border: 1px solid #ddd;
        border-radius: 4px;
        display: inline-block;
    }
   
    .button-container {
        display: flex;
        justify-content: space-between;
    }
    .book-form input[type="submit"],
    .book-form input[type="reset"],
    .book-list-form input[type="submit"] {
        background-color: #4CAF50;
        color: white;
        padding: 10px 20px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
    }
    .book-form input[type="submit"]:hover,
    .book-form input[type="reset"]:hover,
    .book-list-form input[type="submit"]:hover {
        background-color: #45a049;
    }
    .book-list-form {
        margin-top: 20px;
    }
</style>
</head>
<body>

<div class="toggle-btn" onclick="toggleSidebar()">&#9776;</div>

<div class="sidebar" id="sidebar">
    <div class="logo">Library</div>
    <a href="index.jsp">Dashboard</a>
    <a href="addbook.jsp">Add Book</a>
    <a href="updatebook.jsp">Update Book</a>
    <a href="BookListServlet">Book List</a>
</div>

<div class="main" id="main">
    <div class="container">
        <h1>Update Here Your Book</h1>
        <form action="UpdateBookServlet" method="post" class="book-form">
            <label for="bid">Id:</label>
            <input type="text" id="bid" name="bid"/>
            
           
            
            <label for="title">Title:</label>
            <input type="text" id="title" name="title"/><br><br>
            
            <label for="author">Author:</label>
            <input type="text" id="author" name="author"/><br><br>
            
            <label for="price">Price:</label>
            <input type="text" id="price" name="price"/><br><br>

            <div class="button-container">
                <input type="submit" value="Update"/>
                <input type="reset" value="Cancel"/>
            </div>
        </form>
    </div>
</div>

<script>
function toggleSidebar() {
    var sidebar = document.getElementById("sidebar");
    var main = document.getElementById("main");
    sidebar.classList.toggle('hidden');
    main.classList.toggle('expanded');
}


</script>

</body>
</html>

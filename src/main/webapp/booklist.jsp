<%@ page import="com.entity.Book" %>
<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Book List</title>
<!-- Include Font Awesome CSS -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
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
    .container {
        background-color: rgba(255, 255, 255, 0.8);
        padding: 20px;
        width: auto;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        text-align: center;
        margin-top: 0px;
    }
    h1 {
        color: #333333;
        margin-bottom: 20px;
    }
    table {
        width: 100%;
        border-collapse: collapse;
        margin-bottom: 20px;
    }
    table, th, td {
        border: 1px solid #ddd;
    }
    th, td {
        padding: 15px;
        text-align: left;
    }
    th {
        background-color: #f2f2f2;
    }
    .sidebar {
        height: 100%;
        width: 250px;
        position: fixed;
        top: 0;
        left: 0;
        background-color: rgba(51, 51, 51, 0.9);
        padding-top: 20px;
        box-shadow: 2px 0 5px rgba(0,0,0,0.5);
        transition: 0.3s;
        overflow-x: hidden;
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
        margin-left: 260px;
        padding: 20px;
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
        position: absolute;
        top: 20px;
        left: 20px;
        font-size: 30px;
        cursor: pointer;
        color: white;
        z-index: 1000;
    }
    .delete-icon {
        color: red;
        cursor: pointer;
    }
    .delete-icon:hover {
        color: darkred;
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
        <h1>Library Book List</h1>
        <table>
            <tr>
                <th>Book Id</th>
                <th>Title</th>
                <th>Author</th>
                <th>Price</th>
                <th>Action</th>
            </tr>
            <%
               List<Book> booklist = (List<Book>) request.getAttribute("books");
            if(booklist!=null) {
                for (Book book : booklist) {
            %>
            <tr>
                <td><%= book.getBid() %></td>
                <td><%= book.getTitle() %></td>
                <td><%= book.getAuthor() %></td>
                <td><%= book.getPrice() %></td>
                <td><a href="DeleteBookServlet?bid=<%=book.getBid()%>" class="delete-icon"><i class="fas fa-trash-alt"></i></a></td>
            </tr>
            <%
                }}
            %>
        </table>
       
    </div>
</div>

<script>
    function toggleSidebar() {
        var sidebar = document.getElementById("sidebar");
        var main = document.getElementById("main");
        if (sidebar.style.width === "0px") {
            sidebar.style.width = "250px";
            main.style.marginLeft = "260px";
        } else {
            sidebar.style.width = "0px";
            main.style.marginLeft = "10px";
        }
    }
</script>

</body>
</html>

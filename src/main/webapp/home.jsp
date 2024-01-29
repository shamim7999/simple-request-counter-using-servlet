<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Home Page</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

</head>
<body>

    <div class="text-center">
        <h1><%= "Hello Home!" %>
        </h1>
        <br/>


        <h3> Count is ${counter}</h3>
        <h1>
            <h1 style="color: <%= (Integer)request.getAttribute("counter") > 10 ? "red" : "black" %>;">
                Count is: <%= request.getAttribute("counter") %>
            </h1>
        </h1>
    </div>


    <div class="container">
        <form>
            <div class="form-group">
                <label for="exampleInputEmail1">Count of Request</label>
                <input type="text" value="${counter}" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
                <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
            </div>
            <div class="form-group">
                <label for="exampleInputPassword1">Local Date Time</label>
                <input type="text" value="${localDateTime}" class="form-control" id="exampleInputPassword1" placeholder="Password">
            </div>
            <div class="form-group">
                <label for="exampleInputPassword2">Local Date</label>
                <input type="text" value="${localDate}" class="form-control" id="exampleInputPassword2" placeholder="Password">
            </div>
            <div class="form-group">
                <label for="exampleInputPassword3">Local Time</label>
                <input type="text" value="${localTime}" class="form-control" id="exampleInputPassword3" placeholder="Password">
            </div>
            <div class="text-center">
                <a href="${pageContext.request.contextPath}/hello"><button type="submit" class="btn btn-primary">Smash</button></a>
            </div>
        </form>
    </div>



<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</body>
</html>
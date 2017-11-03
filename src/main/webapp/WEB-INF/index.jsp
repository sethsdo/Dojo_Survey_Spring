<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<div class="container" style="border: 1px solid black; width: 50%; padding: 20px; margin-top: 10%;">
		<h1>Survey Form</h1>
		<hr>
        <form action='/user' method='post'>
            <div class="form-group">
                Name:
                <input type='text' class="form-control" id="name" name='name'>
            </div>
            <div class="form-group">
                Dojo Location:
                <select name="location">
                    <option value="SL">Silicon Valley</option>
                    <option value="Sea">Seattle</option>
                    <option value="LA">Los Angeles</option>
                    <option value="dc">D.C</option>
                </select>
            </div>
            <div class="form-group">
                Favorite Location:
                <select name="language">
                    <option value="Python">Python</option>
                    <option value="Java">Java</option>
                    <option value="JavaScript">JavaScript</option>
                    <option value="Go">Go</option>
                </select>
            </div>
            <div class="form-group">
                <label for="comment">Comment(optional):</label>
                <textarea class="form-control" name="comment" rows="5" id="comment"></textarea>
            </div>
            <button type="submit" class="btn btn-default">Submit</button>
        </form>
    </div>
</body>
</html>
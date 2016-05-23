<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page pageEncoding="UTF-8"%>



<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
    <head>
        <title>Words counter</title>
		<meta charset="utf-8">
		<link href="${pageContext.request.contextPath}/css/styles.css" rel="stylesheet" type="text/css" />

		<script src="js/main.js">
			
		</script>

        
    </head>
 
    <body>
        <div class="container">
            <div class="content">

				<div class="images">
					<img class="help" width="20" height="20" src="images/help.png" alt="Help" title="The application counts the number of words in the text is repeated two or more times"></p>
				</div>
				<div class="data">
					<form action = "/result" method="post">

						<textarea name="inputText" id="inpText" cols="40" rows="10" placeholder="Введите текст"></textarea><br/>
						<br/>
						<input class="button"  type="submit" value="Submit" />

					</form>
				</div>


				<div class="data">
					<p>Or select the file (only txt):</p>


					<form  action = "/result" enctype="multipart/form-data" method="post">


						<input  type="file" id="selectFile" name="file" accept="text/plain"><br/>
						<br/>

						<input class="button" type="submit" value="Submit" />

					</form>
				</div>
				
				
			</div> <!-- end content -->
        </div> <!-- end conteiner -->
    </body>
</html>
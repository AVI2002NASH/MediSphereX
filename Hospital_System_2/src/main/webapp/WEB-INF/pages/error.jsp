<%@ page isErrorPage="true" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Error Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
        }
        .error-container {
            max-width: 800px;
            margin: 40px auto;
            padding: 20px;
            background-color: #fff;
            border: 1px solid #ddd;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .error-message {
            font-size: 24px;
            font-weight: bold;
            color: #red;
        }
        .error-details {
            font-size: 16px;
            color: #666;
        }
    </style>
</head>
<body>
    <div class="error-container">
        <h1 class="error-message">Error Occurred</h1>
        <p class="error-details">
            Sorry, an error occurred while processing your request. Please try again later.
        </p>
        <p class="error-details">
            Error Message: <%= exception.getMessage() %>
        </p>
        <p class="error-details">
            Error Stack Trace:
            <pre><%= exception.getStackTrace() %></pre>
        </p>
    </div>
</body>
</html>
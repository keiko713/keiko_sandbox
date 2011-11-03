<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Hello World! - Keiko's sandbox</title>
    <link rel="stylesheet" href="http://twitter.github.com/bootstrap/1.3.0/bootstrap.min.css">
    <style type="text/css">
        body {
            padding-top: 60px;
        }
    </style>
</head>
<body>

<jsp:include page="../header.jsp" />

<div class="container">

    <!-- Main hero unit for a primary marketing message or call to action -->
    <div class="hero-unit">
        <h1>${message}</h1>

        <p>The above message is the message from the server. Can you see that?</p>

    </div>

    <jsp:include page="../footer.jsp" />

</div>
<!-- /container -->

</body>
</html>
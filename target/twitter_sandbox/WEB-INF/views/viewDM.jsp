<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
    <title>DM of @keiko713 - Kiki's Twitter sandbox</title>
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

    <div class="row">
        <div class="span16">
            <table class="zebra-striped">
                <thead>
                <tr>
                    <th>Sender Name</th>
                    <th>Text</th>
                    <th>Created At</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="dm" items="${dMessages}">
                    <tr>
                        <td><code>${dm.senderScreenName}</code></td>
                        <td>${dm.text}</td>
                        <td>${dm.createdAt}</td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>

    <footer>
        <p>Kiki's Twitter sandbox</p>
    </footer>

</div>
<!-- /container -->

</body>
</html>
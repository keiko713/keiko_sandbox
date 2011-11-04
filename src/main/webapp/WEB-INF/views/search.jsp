<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <title>Search for some words on Twitter - Keiko's sandbox</title>
    <link rel="stylesheet" href="http://twitter.github.com/bootstrap/1.3.0/bootstrap.min.css">
    <style type="text/css">
        body {
            padding-top: 60px;
        }

        .grid {
            margin-top: 10px;
            margin-bottom: 10px;
            border-bottom: 1px solid #EBEBEB;
        }

        small {
            color: #BFBFBF;
        }

        .highlight {
            background-color: #FEE9CC;
        }

        .error {
            color: #CB4B16;
        }
    </style>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js"></script>
    <script type="text/javascript" src="http://johannburkard.de/resources/Johann/jquery.highlight-3.js"></script>
    <script type="text/javascript">
        $(function() {
            var keyword = "${keyword}";
            if (keyword != "") {
                $("#resultField").highlight(keyword);
            }
        });
    </script>
    <base href="${pageContext.request.contextPath}/" />
</head>
<body>

<jsp:include page="../header.jsp"/>

<div class="container">

    <div class="row">
        <div class="span5">
            <h3>Search for some words on Twitter</h3>
            Type in some words, and choose the language.
            After that, click the "search" button to start searching!<br>
            <form:form id="form" class="form-stacked" method="post" modelAttribute="tweetSearchBean">
                <div class="clearfix">
                    <label for="keyword">Search Keyword <strong class="error" id="error"><form:errors path="searchKeyword" /></strong></label>

                    <div class="input">
                        <form:input class="span4" id="keyword" size="15" path="searchKeyword"/>
                    </div>
                </div>

                <div class="clearfix">
                    <label for="mediumSelect">Choose language <form:errors path="langSelect" class="error" /></label>

                    <div class="input">
                        <form:select class="medium" path="langSelect" id="langSelect">
                            <form:option value="All"/>
                            <form:option value="English"/>
                            <form:option value="Japanese"/>
                        </form:select>
                    </div>
                </div>
                <div class="actions">
                    <input type="submit" class="btn primary" value="Search">
                    <button type="reset" class="btn">Clear</button>
                </div>

            </form:form>
        </div>
        <div class="span1">&nbsp;</div>
        <div class="span10" id="resultField">
            <c:choose>
                <c:when test="${empty tweets}">
                    No Results.
                </c:when>
                <c:otherwise>
                    <c:forEach var="tweet" items="${tweets}">
                        <div class="row grid">
                            <div class="span1">
                                <img class="thumbnail" src="${tweet.profileImageUrl}" alt="">
                            </div>
                            <div class="row">
                                <div class="span9">
                                    <strong>${tweet.fromUser}</strong><br>
                                        ${tweet.text}<br>
                                    <small><fmt:formatDate value="${tweet.createdAt}"
                                                           pattern="MMM dd yyyy hh:mm a"/></small>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </c:otherwise>
            </c:choose>
        </div>
    </div>

    <jsp:include page="../footer.jsp"/>

</div>
<!-- /container -->
<script type="text/javascript">
    $("form").submit(function() {
        if ($("#keyword").val() == null || $("#keyword").val() == "") {
            $("#error").html("may not be empty");
            return false;
        }
        return true;
    });
</script>
</body>
</html>
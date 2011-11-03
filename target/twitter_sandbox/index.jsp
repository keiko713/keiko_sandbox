<%--
  Created by IntelliJ IDEA.
  User: keiko
  Date: 10/22/11
  Time: 11:45 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Keiko's sandbox</title>
    <link rel="stylesheet" href="http://twitter.github.com/bootstrap/1.3.0/bootstrap.min.css">
    <style type="text/css">
        body, section, #home {
            padding-top: 60px;
        }
    </style>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js"></script>
    <script src="http://twitter.github.com/bootstrap/1.3.0/bootstrap-scrollspy.js"></script>

</head>
<body>
<jsp:include page="WEB-INF/header_top.jsp"/>

<div class="container">

    <!-- Main hero unit for a primary marketing message or call to action -->
    <div class="hero-unit" id="home">
        <h1>Hello, world!</h1>

        <p>This web site is Keiko's sandbox. Please enjoy!</p>

        <p><a class="btn primary large" href="/helloWorld/index.html">Go to Hello World Page! »</a></p>
    </div>

    <!-- Showcase -->
    <section id="showcase">
        <div class="page-header">
            <h1>Showcase
                <small>twitter app, etc</small>
            </h1>
        </div>
        <div class="row">
            <div class="span-one-third">
                <h3>Java & Twitter4j & Spring</h3>
                <ul class="media-grid">
                    <li>
                        <a href="/twitter/search.html"><img class="thumbnail" src="images/twittersearch.png" alt=""></a>
                    </li>
                </ul>

                <p>Let's search any words whatever you want to search on Twitter!
                    You can choose the particular language!</p>

                <p><a class="btn" href="/twitter/search.html">Let's go! »</a></p>
            </div>
            <div class="span-one-third">
                <h3>HTML5 & JavaScript</h3>
                <ul class="media-grid">
                    <li>
                        <a href="http://www.ayatonosaki.com/" target="_blank"><img class="thumbnail"
                                                                                   src="images/ayatonosaki.png" alt=""></a>
                    </li>
                </ul>
                <p>Web portfolio site for the photographer using HTML5, JavaScript, PHP, and CSS.</p>

                <p><a class="btn" href="http://www.ayatonosaki.com/" target="_blank">Let's go! »</a></p>
            </div>
            <div class="span-one-third">
                <h3>Comming Soon!</h3>
                <ul class="media-grid">
                    <li>
                        <a href="#"><img class="thumbnail" src="images/comingsoon.png" alt=""></a>
                    </li>
                </ul>
                <p>The new toy is coming soon.</p>

                <p><a class="btn" href="#">Let's go! »</a></p>
            </div>
        </div>
    </section>

    <!-- About -->
    <section id="about">
        <div class="page-header">
            <h1>About
                <small>who am I?</small>
            </h1>
        </div>
        <div class="row">
            <div class="span8">
                <h2>My name is Keiko!</h2>

                <p>
                    Hello. My name is Keiko. I'm from Ishikawa, Japan and I'm living in SF now.
                    I like interesting things especially about tech! I also like meeting new people and enjoying
                    conversation.
                </p>

                <ul class="media-grid">
                    <li>
                        <a href="http://maps.google.com/maps?f=q&source=s_q&hl=en&geocode=&q=Ishikawa+Prefecture,+Japan&aq=0&sll=37.4019,136.801354&sspn=18.536987,32.255859&vpsrc=0&ie=UTF8&hq=&hnear=Ishikawa+Prefecture,+Japan&t=v&z=8"
                           target="_blank"><img class="thumbnail" src="images/ishikawa.png" alt=""></a>
                    </li>
                </ul>


            </div>
            <div class="span8">
                <h2>What language do I use?</h2>

                <p>
                    I use Japanese and English everyday.
                    Java is the language that I've used the most. I'd used Java for 3 years when I was in a Japanese IT company.
                    Lately, I have been interested in Python and Ruby but I still like Java. That's why I use Java for making this web site!
                </p>

                <ul class="media-grid">
                    <li>
                        <a href="http://www.linkedin.com/pub/keiko-oda/22/295/234"
                           target="_blank"><img class="thumbnail" src="images/language.png" alt=""></a>
                    </li>
                </ul>

                <h2>Connection to me</h2>

                <p>
                    <a href="http://www.linkedin.com/pub/keiko-oda/22/295/234" style="text-decoration:none;"><span
                            style="font: 80% Arial,sans-serif; color:#0783B6;"><img
                            src="http://www.linkedin.com/img/webpromo/btn_in_20x15.png" width="20" height="15"
                            alt="View Keiko  Oda's LinkedIn profile" style="vertical-align:middle" border="0">View Keiko  Oda's profile</span></a>
                </p>

                <p>
                    <a href="https://twitter.com/keiko713" class="twitter-follow-button" data-show-count="false">Follow
                        @keiko713</a>
                    <script src="//platform.twitter.com/widgets.js" type="text/javascript"></script>
                </p>
                <p>
                    <a href="https://github.com/keiko713">My github account: keiko713</a>
                </p>

            </div>
        </div>
    </section>

    <jsp:include page="WEB-INF/footer.jsp"/>

</div>
<!-- /container -->
<script type="text/javascript">
    $(document).ready(function() {
        $(window).bind('load resize', function () {
            $('body > .topbar').scrollSpy()
        })
    });
</script>

</body>
</html>
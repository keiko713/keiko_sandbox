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
        body {
            background: url(images/bg_noise.png) top left repeat;
        }

        section {
            padding-top: 60px;
        }

        .jumbotron {
            min-width: 940px;
            padding-top: 40px;
        }

        .jumbotron .inner {
            padding: 25px 0;
        }

        .jumbotron h2 {
            font-size: 34px;
            line-height: 1;
            margin-bottom: 25px;
            text-align: center;
            text-shadow: 0 1px 2px rgba(0, 0, 0, .5);
        }

        .topphoto {
            margin: 0px;
        }

        .topphoto li {
            display: block;
            float: left;
            width: 100px;
            height: 75px;
            line-height: 75px;
            overflow: hidden;
            position: relative;
            z-index: 1;
            margin: 0px;
        }
    </style>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js"></script>
    <script src="http://twitter.github.com/bootstrap/1.3.0/bootstrap-scrollspy.js"></script>
    <script type="text/javascript">
        function changePic(picName) {
            photo = document.getElementById("photo");
            photo.src = "images/top/" + picName + ".jpg";
        }
        $(function() {
            $("#photo").attr("src", function() {
                var num = Math.floor(Math.random()*7) + 1;
                return "images/top/top" + num + ".jpg";
            });
        });
    </script>
    <base href="${pageContext.request.contextPath}/"/>
</head>
<body>
<jsp:include page="WEB-INF/header_top.jsp"/>

<header class="jumbotron subhead" id="home">
    <div class="inner">
        <div class="container">
            <h2>Welcome to Keiko's sandbox!</h2>

            <div class="row">
                <div class="span2">
                    <ul class="topphoto">
                        <li><img class="thumbnail" src="images/top/thumb_top1.jpg" alt="" onclick="changePic('top1')">
                        </li>
                        <li><img class="thumbnail" src="images/top/thumb_top2.jpg" alt="" onclick="changePic('top2')">
                        </li>
                        <li><img class="thumbnail" src="images/top/thumb_top3.jpg" alt="" onclick="changePic('top3')">
                        </li>
                        <li><img class="thumbnail" src="images/top/thumb_top4.jpg" alt="" onclick="changePic('top4')">
                        </li>
                    </ul>
                </div>
                <div class="span12">
                    <img id="photo" class="thumbnail" src="" alt="" width="700" height="300">
                </div>
                <div class="span2">
                    <ul class="topphoto">
                        <li><img class="thumbnail" src="images/top/thumb_top5.jpg" alt="" onclick="changePic('top5')">
                        </li>
                        <li><img class="thumbnail" src="images/top/thumb_top6.jpg" alt="" onclick="changePic('top6')">
                        </li>
                        <li><img class="thumbnail" src="images/top/thumb_top7.jpg" alt="" onclick="changePic('top7')">
                        </li>
                        <li><img class="thumbnail" src="images/top/thumb_top8.jpg" alt="" onclick="changePic('top8')">
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- /container -->
    </div>
</header>


<div class="container">

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
                        <a href="twitter/search.html"><img class="thumbnail" src="images/twittersearch.png" alt=""></a>
                    </li>
                </ul>

                <p>Let's search for anything you want on Twitter!
                    You can choose the language!</p>

                <p><a class="btn" href="twitter/search.html">Let's go! »</a></p>
            </div>
            <div class="span-one-third">
                <h3>HTML5 & JavaScript</h3>
                <ul class="media-grid">
                    <li>
                        <a href="http://www.ayatonosaki.com/" target="_blank"><img class="thumbnail"
                                                                                   src="images/ayatonosaki.png" alt=""></a>
                    </li>
                </ul>
                <p>Web portfolio site for a photographer using HTML5, JavaScript, PHP, and CSS.</p>

                <p><a class="btn" href="http://www.ayatonosaki.com/" target="_blank">Let's go! »</a></p>
            </div>
            <div class="span-one-third">
                <h3>Coming Soon!</h3>
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
                    Hello. My name is Keiko. I'm from Ishikawa, Japan, and I've been living in San Francisco since
                    February 2011.
                    I like learning new things, especially technology! I also like meeting new people and enjoying
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
                <h2>What languages do I use?</h2>

                <p>
                    I use Japanese and English everyday.
                    Java is the programming language that I've used the most. I had used Java for 3 years when I was
                    working at a Japanese IT company.
                    Lately, I have been interested in Python and Ruby, but I still like writing Java. That's why I'm
                    using Java to make this web site!
                </p>

                <ul class="media-grid">
                    <li>
                        <a href="http://www.linkedin.com/pub/keiko-oda/22/295/234"
                           target="_blank"><img class="thumbnail" src="images/language.png" alt=""></a>
                    </li>
                </ul>

                <h2>Connect with me</h2>

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

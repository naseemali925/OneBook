<%-- 
    Document   : Register
    Created on : 27 Oct, 2018, 6:48:53 PM
    Author     : Naseem
--%>

<%@page import="dit.DataModel"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="t"%>
<%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%
    if (request.getSession(false) != null) {
        if (request.getSession(false).getAttribute("username") != null) {
            response.sendRedirect("shop.jsp");
        }
    }
%>
<!DOCTYPE html>
<html class="no-js" lang="zxx">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="images/favicon.png" rel="icon" />
        <!--Title-->
        <title>Onebook - Register</title>
        <!-- CSS -->
        <!-- Bootstrap -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <!-- Font Awesome -->
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <!-- Simple Line Icons -->
        <link rel="stylesheet" href="css/simple-line-icons.min.css">
        <!-- Themify Icons -->
        <link rel="stylesheet" href="css/themify-icons.css">
        <!-- Owl Carousel -->
        <link rel="stylesheet" href="css/owl.carousel.min.css">
        <link rel="stylesheet" href="css/owl.theme.default.min.css">
        <!-- Magnific Popup -->
        <link rel="stylesheet" href="css/magnific-popup.css">
        <!-- Main Style -->
        <link rel="stylesheet" href="css/colors.css">
        <link rel="stylesheet" href="css/style.css" class="main-style">
    </head>
    <!--Body Start-->

    <body data-res-from="1025">

        <!--<div class="container">-->

        <!--Zmm Wrapper-->
        <div class="zmm-wrapper">
            <a href="#" class="zmm-close close"></a>
            <div class="zmm-inner bg-dark typo-white">
                <div class="text-center mobile-logo-part mb-4">
                    <a href="" class="img-before"><img src="images/onebook.png"/></a>
                </div>
                <div class="zmm-main-nav">
                </div>
            </div>
        </div>
        <div class="page-wrapper">
            <div class="page-wrapper-inner">
                <header>
                    <!--Mobile Header-->
                    <div class="mobile-header bg-dark typo-white">
                        <div class="mobile-header-inner">
                            <div class="sticky-outer">
                                <div class="sticky-head">
                                    <div class="basic-container clearfix">
                                        <ul class="nav mobile-header-items pull-left">
                                            <li class="nav-item"><a href="#" class="zmm-toggle img-before"><i class="fa fa-bars"></i></a></li>
                                        </ul>
                                        <ul class="nav mobile-header-items pull-center">
                                            <li>
                                                <a href="" class="img-before"><img src="images/onebook.png" class="img-fluid" alt="Logo" width="220" height="40"></a>
                                            </li>
                                        </ul>
                                        <ul class="nav mobile-header-items pull-right">
                                            <li class="nav-item"><a href="#" class="img-before overlay-search-switch"><i class="icon-magnifier icons"></i></a></li>
                                        </ul>
                                    </div>
                                    <!-- .basic-container -->
                                </div>
                                <!-- .sticky-head -->
                            </div>
                            <!-- .sticky-outer -->
                        </div>
                        <!-- .mobile-header-inner -->
                    </div>
                    <!-- .mobile-header -->
                    <!--Header-->
                    <div class="header-inner header-1">
                        <!--Topbar-->
                        <div class="topbar">
                            <div class="basic-container clearfix">
                                <ul class="nav topbar-items pull-left">
                                    <li class="nav-item">
                                        <ul class="nav header-info">
                                            <li class="nav-item">Phone: +91 7017416084</li>
                                            <li class="nav-item">E-mail:<a href="mailto:thisismenaseem@gmail.com"> thisismenaseem@gmail.com</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <!--Topbar-->
                        <!--Sticky part-->
                        <div class="sticky-outer">
                            <div class="sticky-head">
                                <!--Navbar-->
                                <nav class="navbar nav-shadow bg-light">
                                    <div class="basic-container clearfix">
                                        <div class="navbar-inner">
                                            <!--Overlay Menu Switch-->
                                            <ul class="nav navbar-items pull-left">
                                                <li class="list-item">
                                                    <a href="" class="img-before"><img src="images/onebook.png" class="img-fluid" alt="Logo" width="220" height="40"></a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </nav>
                            </div>
                            <!--sticky-head-->
                        </div>
                        <!--sticky-outer-->
                    </div>
                </header>
                <!-- header -->
                <!-- page-header -->
            </div>
        </div>
        <div class="container">
            <c:set var="hasError" value="${model.hasError()}"/>
            <div class="checkout-form-wrap" style="padding: 15px">
                <c:if test="${hasError}">
                    <div class="error-msg">
                        <i class="fa fa-times-circle"></i>
                        ${model.getMessage()}
                    </div>
                </c:if>
                <h3 class="mb-4">Register</h3>
                <!-- form inputs -->
                <t:form method="POST" action="/register">
                    <!-- row -->
                    <div class="row">
                        <!-- col -->
                        <div class="col-md-6">
                            <div class="checkout shop-checkout">
                                <!-- Contact Form -->
                                <div class="contact-form-4">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <input type="text" class="form-control" name="name" placeholder="Name" required/>
                                            </div>
                                            <div class="form-group">
                                                <input type="text" name="username" class="form-control" placeholder="Username" required/>
                                            </div>
                                            <div class="form-group">
                                                <input type="password" class="form-control" name="pwd" placeholder="Password" required/>
                                            </div>
                                            <div class="form-group">
                                                <input type="password" class="form-control" name="repwd" placeholder="Re-Enter Password" required/>
                                            </div>
                                            <div class="form-submit">
                                                <input type="reset" value="Reset" class="btn btn-warning" name="reset" id="reset" />
                                                <input type="submit" value="Register" class="btn btn-success" name="submit" id="submit" />
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- contact-form-7 -->
                            </div>
                        </div>
                    </div>
                    <label style="margin-top: 32px">Already have an account! Login <a href="/OneBook/Login.jsp">Here</a></label>
                </t:form>
                <span class="clearfix"></span>
                <!-- Checkout Form -->
            </div>
        </div>
        <!--CTA Section-->
        <div class="cta-section typo-white">
            <div class="container">
                <!-- CTA Wrap -->
                <div class="cta-wrapper cta-1 bg-theme pad-40 b-radius-10">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="text-center">
                                <h2 class="align-self-center mb-0">Find The Book That Best Suits Your Soul</h2>
                            </div>
                        </div>
                    </div>
                    <!-- Row -->
                </div>
                <!-- CTA Wrap -->
            </div>
            <!-- Container -->
        </div>
        <!--CTA Section-->
        <footer id="footer" class="footer footer-1 bg-dark">
            <!--Footer Widgets Columns Posibilities 4-->
            <div class="footer-widgets">
                <div class="footer-middle-wrap">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-6 widget text-widget">
                                <div class="mb-3">
                                    <img src="images/onebook.png" class="img-fluid mx-0 mb-4" alt="logo" width="186" height="40">
                                </div>
                                <!-- Text -->
                                <div class="pr-5">
                                    <p>A book can take your soul places you have never been before.</p>
                                </div>
                            </div>
                            <!-- Col -->
                            <div class="col-lg-6 widget contact-info-widget">
                                <div class="widget-title">
                                    <!-- Title -->
                                    <h3 class="title text-uppercase">Contact Info</h3>
                                </div>
                                <div class="contact-widget-info">
                                    <p class="pr-4">Have questions, comments or just want to say hello:</p>
                                    <p class="contact-address mb-3">
                                        <span class="fa icon-directions"></span>
                                        <span>South Civil Line Roorkee</span>
                                    </p>
                                    <p class="contact-phone mb-3">
                                        <span class="fa icon-screen-smartphone"></span>
                                        <span>+91 7017416084</span>
                                    </p>
                                    <p class="contact-email mb-3">
                                        <span class="fa icon-envelope"></span>
                                        <span>
                                            <a href="mailto:thisismenaseem@gmail.com">thisismenaseem@gmail.com</a>
                                        </span>
                                    </p>
                                </div>
                            </div>
                            <!-- Col -->
                        </div>
                    </div>
                </div>
            </div>
            <!--Footer Copyright Columns Posibilities 4-->
            <div class="footer-copyright">
                <div class="footer-bottom-wrap b-top py-4 typo-white">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12">
                                <ul class="footer-bottom-items pull-left">
                                    <li class="nav-item">
                                        <div class="nav-item-inner">
                                            © Copyright 2018 @ <a href="http://zozothemes.com/" class="theme-color">Zozothemes</a>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </footer>

        <!-- JS -->
        <script src="js/jquery.min.js"></script>
        <!-- Popper Js Support for Bootstrap -->
        <script src="js/popper.min.js"></script>
        <!-- Bootstrap Js -->
        <script src="js/bootstrap.min.js"></script>
        <!-- Easing Js -->
        <script src="js/jquery.easing.min.js"></script>
        <!-- Validator Js -->
        <script src="js/validator.min.js"></script>
        <!-- Carousel Js Code -->
        <script src="js/owl.carousel.min.js"></script>
        <!-- Isotope Js -->
        <script src="js/isotope.pkgd.min.js"></script>
        <!-- Magnific Popup Js -->
        <script src="js/jquery.magnific-popup.min.js"></script>
        <!-- Appear Js -->
        <script src="js/jquery.appear.min.js"></script>
        <!-- Smart Resize Js -->
        <script src="js/smartresize.min.js"></script>
        <!-- Theme Custom Js -->
        <script src="js/custom.js"></script>
    </body>
</html>

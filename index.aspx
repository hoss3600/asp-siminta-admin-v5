<%@ Page Language="C#" AutoEventWireup="True" CodeFile="index.aspx.cs" CodeBehind="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
        * {
            box-sizing: border-box
        }

        body {
            font-family: Verdana,sans-serif;
            margin: 0
        }

        .mySlides {
            display: none
        }

        /* Slideshow container */
        .slideshow-container {
            max-width: 1000px;
            position: relative;
            margin: auto;
        }

        /* Next & previous buttons */
        .prev, .next {
            cursor: pointer;
            position: absolute;
            top: 50%;
            width: auto;
            padding: 16px;
            margin-top: -22px;
            color: white;
            font-weight: bold;
            font-size: 18px;
            transition: 0.6s ease;
            border-radius: 0 3px 3px 0;
        }

        /* Position the "next button" to the right */
        .next {
            right: 0;
            border-radius: 3px 0 0 3px;
        }

            /* On hover, add a black background color with a little bit see-through */
            .prev:hover, .next:hover {
                background-color: rgba(0,0,0,0.8);
            }

        /* Caption text */
        .text {
            color: #f2f2f2;
            font-size: 15px;
            padding: 8px 12px;
            position: absolute;
            bottom: 8px;
            width: 100%;
            text-align: center;
        }

        /* Number text (1/3 etc) */
        .numbertext {
            color: #f2f2f2;
            font-size: 12px;
            padding: 8px 12px;
            position: absolute;
            top: 0;
        }

        /* The dots/bullets/indicators */
        .dot {
            cursor: pointer;
            height: 13px;
            width: 13px;
            margin: 0 2px;
            background-color: #bbb;
            border-radius: 50%;
            display: inline-block;
            transition: background-color 0.6s ease;
        }

            .active, .dot:hover {
                background-color: #717171;
            }

        /* Fading animation */
        .fade {
            -webkit-animation-name: fade;
            -webkit-animation-duration: 1.5s;
            animation-name: fade;
            animation-duration: 1.5s;
        }

        @-webkit-keyframes fade {
            from {
                opacity: .4
            }

            to {
                opacity: 1
            }
        }

        @keyframes fade {
            from {
                opacity: .4
            }

            to {
                opacity: 1
            }
        }

        /* On smaller screens, decrease text size */
        @media only screen and (max-width: 300px) {
            .prev, .next, .text {
                font-size: 11px
            }
        }
    </style>

    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <!--[if IE]>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <![endif]-->
    <title>Free Responsive Template Using Bootstrap : Revas  </title>
    <!-- BOOTSTRAP CORE STYLE CSS -->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FONT AWESOME STYLE CSS -->
    <link href="assets/font-awesome-4.1.0/css/font-awesome.min.css" rel="stylesheet" />
    <!-- CUSTOM STYLE CSS -->
    <link href="assets/css/style3.css" rel="stylesheet" />    
    <!-- GOOGLE FONT -->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />

</head>
<body data-spy="scroll" data-targeta=".navbar-fixed-top">

 
     <!--NAVBAR SECTION-->
    <div class="navbar navbar-inverse navbar-fixed-top scrollclass" >
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>

                <a href="#"><img src="assets/img/logo.png" /></a>
            </div>

            <div class="navbar-collapse collapse">
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="#home">Home</a></li>
                    <li><a href="#portfolio">About us</a></li>
                    <li><a href="#about">Our partners</a></li>
                    <li><a href="#footer">Client orders </a></li>
                    <li><a href="/Login2.aspx">E-System</a></li>
                </ul>
            </div>
           
        </div>
    </div>
   <!--END NAVBAR SECTION-->
        <!--HOME SECTION-->
    <section id="home">
        <div class="container">



            <div class="slideshow-container">

                <div class="mySlides ">
                    <div class="numbertext">1 / 3</div>
                    <img src="assets/img/p1.jpg" style="width:100%">
                    <div class="text">Caption Text</div>
                </div>

                <div class="mySlides ">
                    <div class="numbertext">2 / 3</div>
                    <img src="assets/img/p2.jpg" style="width:100%">
                    <div class="text">Caption Two</div>
                </div>

                <div class="mySlides">
                    <div class="numbertext">3 / 3</div>
                    <img src="assets/img/p3.jpg" style="width:100%">
                    <div class="text">Caption Three</div>
                </div>

                <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
                <a class="next" onclick="plusSlides(1)">&#10095;</a>

            </div>
            <br>

            <div style="text-align:center">
                <span class="dot" onclick="currentSlide(1)"></span>
                <span class="dot" onclick="currentSlide(2)"></span>
                <span class="dot" onclick="currentSlide(3)"></span>
            </div>

            <script>
                var slideIndex = 1;
                showSlides(slideIndex);

                function plusSlides(n) {
                    showSlides(slideIndex += n);
                }

                function currentSlide(n) {
                    showSlides(slideIndex = n);
                }

                function showSlides(n) {
                    var i;
                    var slides = document.getElementsByClassName("mySlides");
                    var dots = document.getElementsByClassName("dot");
                    if (n > slides.length) { slideIndex = 1 }
                    if (n < 1) { slideIndex = slides.length }
                    for (i = 0; i < slides.length; i++) {
                        slides[i].style.display = "none";
                    }
                    for (i = 0; i < dots.length; i++) {
                        dots[i].className = dots[i].className.replace(" active", "");
                    }
                    slides[slideIndex - 1].style.display = "block";
                    dots[slideIndex - 1].className += " active";
                }
            </script>


        </div>
       
        <!--END PORTFOLIO SECTION-->
        <!--ABOUT SECTION-->
    </section>

    <section id="portfolio">
        <div class="container">
            <div class="col-lg-6">
                <h2>About us</h2>
                <br />
                <h4>
                    optimized for learning, testing, and training. Examples might be simplified to improve reading <br />
                    and basic understanding. Tutorials, references, and examples are constantly reviewed to avoid errors, <br />
                    but we cannot warrant full correctness of all content. While using this site, you agree to have read and accepted
                </h4>

                <br />
                <br />
                <br />

                <h2>About the factory</h2>
                <br />
                <h4>
                    optimized for learning, testing, and training. Examples might be simplified to improve reading <br />
                    and basic understanding. Tutorials, references, and examples are constantly reviewed to avoid errors, <br />
                    but we cannot warrant full correctness of all content. While using this site, you agree to have read and accepted
                </h4>
            </div>
            <div class="col-lg-6">

                <img src="assets/img/team1.png" style="width:100%">

            </div>
        </div>
    </section>
    <!--END PORTFOLIO SECTION-->
    <!--ABOUT SECTION-->
    <section id="about">
        <div class="container">
            <div class="row text-center">
                <div class="col-md-12">
                    <h1>OUR PARTNES</h1>
                </div>
            </div>
            <div class="row  pad-top">
                <div class="col-md-4 col-sm-4 text-center">
                    <a href="#"> <img class="img-rounded" src="assets/img/ar.png" alt="" height="160" width="160" /> </a>
                    <h3><strong>Saudi-Aramco1</strong> </h3>
                    <p>
                        Saudi Aramco, officially the Saudi Arabian Oil Company,
                        most popularly known just as Aramco, is a Saudi Arabian national petroleum and natural gas company based in Dhahran
                    </p>
                    <!-- <a href="#" class="btn btn-primary"><i class="fa fa-facebook-square fa-3x"></i></a>
                    <a href="#" class="btn btn-primary"><i class="fa fa-linkedin-square fa-3x"></i></a>
                    <a href="#" class="btn btn-primary"><i class="fa fa-google-plus-square fa-3x"></i></a> -->
                    <br /><br />
                </div>

                <div class="col-md-4 col-sm-4 text-center">

                    <a href="#"> <img class="img-rounded" src="assets/img/sb.jpg" alt="" height="160" width="160" /></a>
                    <h3><strong>SABIC </strong> </h3>
                    <p>
                        SABIC is a Saudi diversified manufacturing company,
                        active in chemicals and intermediates, industrial polymers, fertilizers, and metals.
                    </p>
                    <!--<a href="#" class="btn btn-primary"><i class="fa fa-facebook-square fa-3x"></i></a>
                         <a href="#" class="btn btn-primary"><i class="fa fa-linkedin-square fa-3x"></i></a>
                         <a href="#" class="btn btn-primary"><i class="fa fa-google-plus-square fa-3x"></i></a> -->
                    <br /><br />
                </div>

                <div class="col-md-4 col-sm-4 text-center">

                    <a href="#"> <img class="img-rounded" src="assets/img/ar.png" alt="" height="160" width="160" /> </a>
                    <h3><strong>Saudi-Aramco 2</strong> </h3>
                    <p>
                        Saudi Aramco, officially the Saudi Arabian Oil Company, most popularly known just as Aramco,
                        is a Saudi Arabian national petroleum and natural gas company based in Dhahran
                    </p>
                    <!--<a href="#" class="btn btn-primary"><i class="fa fa-facebook-square fa-3x"></i></a>
                    <a href="#" class="btn btn-primary"><i class="fa fa-linkedin-square fa-3x"></i></a>
                    <a href="#" class="btn btn-primary"><i class="fa fa-google-plus-square fa-3x"></i></a>-->
                    <br /><br />
                </div>



                <div class="col-md-4 col-sm-4 text-center">

                    <a href="#"> <img class="img-rounded" src="assets/img/sb.jpg" alt="" height="160" width="160" /></a>
                    <h3><strong>SABIC </strong> </h3>
                    <p>
                        SABIC is a Saudi diversified manufacturing company,
                        active in chemicals and intermediates, industrial polymers, fertilizers, and metals.
                    </p>
                    <!--<a href="#" class="btn btn-primary"><i class="fa fa-facebook-square fa-3x"></i></a>
                    <a href="#" class="btn btn-primary"><i class="fa fa-linkedin-square fa-3x"></i></a>
                    <a href="#" class="btn btn-primary"><i class="fa fa-google-plus-square fa-3x"></i></a> -->
                    <br /><br />
                </div>



                <div class="col-md-4 col-sm-4 text-center">
                    <a href="#"> <img class="img-rounded" src="assets/img/ar.png" alt="" height="160" width="160" /> </a>
                    <h3><strong>Saudi-Aramco 3</strong> </h3>
                    <p>
                        Saudi Aramco, officially the Saudi Arabian Oil Company, most popularly known just as Aramco,
                        is a Saudi Arabian national petroleum and natural gas company based in Dhahran
                    </p>
                    <!--<a href="#" class="btn btn-primary"><i class="fa fa-facebook-square fa-3x"></i></a>
                    <a href="#" class="btn btn-primary"><i class="fa fa-linkedin-square fa-3x"></i></a>
                    <a href="#" class="btn btn-primary"><i class="fa fa-google-plus-square fa-3x"></i></a> -->
                    <br /><br />
                </div>

                <div class="col-md-4 col-sm-4 text-center">

                    <a href="#"> <img class="img-rounded" src="assets/img/sb.jpg" alt="" height="160" width="160" /></a>
                    <h3><strong>SABIC </strong> </h3>
                    <p>
                        SABIC is a Saudi diversified manufacturing company,
                        active in chemicals and intermediates, industrial polymers, fertilizers, and metals.
                    </p>
                    <!--<a href="#" class="btn btn-primary"><i class="fa fa-facebook-square fa-3x"></i></a>
                    <a href="#" class="btn btn-primary"><i class="fa fa-linkedin-square fa-3x"></i></a>
                    <a href="#" class="btn btn-primary"><i class="fa fa-google-plus-square fa-3x"></i></a> -->
                    <br /><br />
                </div>




            </div>
        </div>
    </section>
    <!--END ABOUT SECTION-->
    <!--CONTACT SECTION-->
         <section id="contact">
               <div class="container">
                     <div class="row text-center" >
               <div class="col-md-12">
                    <h2>Contact us</h2>
               </div>
                     </div>
           <div class="row text-left pad-top" >
            <div class="col-md-8 col-md-offset-2">
                <div class="row ">
                             <form>
                            <div class="col-md-12 ">
                                <div class="form-group">
                                    <h4><span class="label label-info">Email :</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;support@info.com</h4>
                                    <h4><span class="label label-info">Phone :</span>&nbsp;&nbsp;&nbsp;&nbsp; 056-XXX-XXXX</h4>
                                    <h4><span class="label label-info">Postbox :</span>&nbsp;&nbsp; 44621</h4>
                                    <h4><span class="label label-info">Address :</span> &nbsp;&nbsp;second industrial city in dammam</h4>

                                </div>

                            </div>
                             </form>

                        </div>
            </div>
               
               </div>
        </div>
        </section>




    
        <section id="footer" class="text-center">
            <div class="container">
                <div class="row text-center">
                    <div class="col-md-12">
                        <h2>Client orders</h2>
                    </div>
                </div>

           
                <div class="row text-left pad-top">
                    <div class="col-md-8 col-md-offset-2">
                        <div class="row ">
                            <form id="A" runat="server">
                                <div class="col-lg-6">

                                    <div class="form-group">
                                       
                                        
                                        <asp:TextBox ID="O_ID" class="form-control" runat="server" placeholder="Enter your order number"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="O_ID" CssClass="text-danger" runat="server" ErrorMessage="This field is requier"></asp:RequiredFieldValidator>


                                        <br />

                                        <label>Result :</label>

                                        <h3><span id="L1" runat="server" class="label label-default">Preparation</span></h3> 
                                        <h3><span id="L2" runat="server" class="label label-default">Fabrication</span></h3> 
                                        <h3><span id="L3" runat="server" class="label label-default">welding</span></h3>
                                        <h3><span id="L4" runat="server" class="label label-default">blasting and painting</span></h3> 

                                    </div>

                                </div>

                                <div class="col-lg-6">

                                    <div class="form-group">
                                      
                                 
                                       
                                        <asp:Button ID="CL_ID_S" class="btn btn-primary" runat="server" Text="Submit" OnClientClick="return, false" OnClick="CL_ID_S_Click" />

                                        <br /> <br />

                                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="true" OnClick="LinkButton1_Click">Face any problem ?</asp:LinkButton>

                                    <!-- <asp:HyperLink ID="HyperLink1" runat="server">HyperLink </asp:HyperLink>-->   

                                    </div>

                                </div>

                                <br />
                                <br />

                                <div class="col-md-12 " id="show" runat="server">

                                    <div class="form-group">

                                        
                                        <asp:TextBox ID="EM" class="form-control" runat="server" placeholder="Enter your Email"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="EM" CssClass="text-danger" runat="server" ErrorMessage="This field is requier"></asp:RequiredFieldValidator>


                                    </div>

                                    <div class="form-group">



                                        <textarea id="Report_Problem_Problem" cols="60" rows="5" runat="server" class="form-control" placeholder="Problem details"></textarea>
                                        <br />

                                         <asp:Button ID="CL_P_S" class="btn btn-primary" runat="server" Text="Submit" OnClick="CL_P_S_Click" />

                                    </div>

                                </div>



                            </form>

                        </div>
                    </div>

                </div>
            </div>
        </section>



       <a> Copyright &copy; 2017 | All Right Reserved </a>    
   
       
         

     <!--FOOTER SECTION-->
    <!-- JAVASCRIPT FILES PLACED AT THE BOTTOM TO REDUCE THE LOADING TIME  -->
    <!-- CORE JQUERY  -->
    <script src="assets/plugins/jquery-1.10.2.js"></script>
    <!-- BOOTSTRAP SCRIPTS  -->
    <script src="assets/plugins/bootstrap.js"></script>
     <!-- EASING SCROLL SCRIPTS PLUGIN  -->
    <script src="assets/plugins/jquery.easing.min.js"></script>
     <!-- CUSTOM SCRIPTS   -->
    <script src="assets/js/custom.js"></script>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="portfolio_now.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Faruk portfolio</title>
    <link rel="stylesheet" href="find/style.css">
    <script src="https://kit.fontawesome.com/290cdb0382.js" crossorigin="anonymous"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <div id="header">
        <div class="container">
            <nav>
                <img src="find/log.png" alt="logo" class="logo">
                <ul id="sidemenu">
                    <li><a href="#header">Home</a></li>
                    <li><a href="#About">About</a></li>
                    <li><a href="#portfolio">My work</a></li>
                    <li><a href="#contact">Contact</a></li>
                    <li><a href="login.aspx">Admin</a></li>
                    <i class="fa-solid fa-xmark" onclick="closemenu()"></i>
                </ul>
                <i class="fa-sharp fa-solid fa-bars" onclick="openmenu()"></i>
            </nav>
            <div class="profile">
                <div class="prf"> <img src="find/bg-modified.png" alt="profile" class="prfi" ></div>
                <div class="header-text">
                  <P class="ttle1">Hi,I am<br>Md. Umar Faruk</p>
                  <p class="ttle1">Student,Computer Science and Engineering,KUET</p>
                   <P>And I am also a <span id="typed-name"></span></P>
                 </div>
               </div>
        </div>
    </div>
    <!-- ...............about........ -->
   <div id="About">
       <div class="container">
        <div class="row">
            <div class="about-col-1">
                 <img src="find/about (1).jpeg" alt="about">
            </div>
            <div class="about-col-2">
               <h1 class="subtitle">About Me</h1>
               <p style="font-size: 20px; font-weight: bold; color: #fff; line-height: 1.5;">
                I am currently a 3rd year student in Computer Science and Engineering at KUET.
                I have a passion for  various aspects of technology, <br />including UI/UX designing, App development, Web development, and contest programming.
                My journey in the world of coding   <br />began in my first year, and I delved into development in my second year.
                <br />
                I completed my first project during my second year, which gave me valuable hands-on experience in software development.
                <br />
                In addition to development work, I actively participate in contest programming to sharpen my problem-solving skills.
                <br />
                I frequently practice on Codeforces, where my account is <a href="https://codeforces.com/profile/uf982" style="color: #ff004f;font-style: none;">uf982</a>.
                <br />
                Furthermore, I have achieved success in various inner programming contests held at my university, which has further fueled my passion for programming and problem-solving.
                <br />
                Exploring new technologies and finding innovative solutions to real-world problems is what drives me in my academic and professional journey.
            </p>
            
                <!-- <div class="tab-titles">
                    <p class="tab-links active-link" onclick="opentab('skills')">Skills</p>
                    <p class="tab-links"onclick="opentab('experience')">Experiencs</p>
                    <p class="tab-links"onclick="opentab('education')">Education</p>
                </div>
                <div class="tab-contents active-tab" id="skills">
                  <ul>
                    <li><span>UI/UX</span><br>Designig web/app interface</li>
                    <li><span>Android App</span><br>Designig web/app interface</li>
                    <li><span>Web Development</span><br>Designig web/app interface</li>
                  </ul>
                </div>
                <div class="tab-contents" id="experience">
                    <ul>
                      <li><span>3-1</span><br>Devoloping a website for railway management</li>
                      <li><span>2-2</span><br>Library management</li>
                      <li><span>2-1</span><br>Citizen-Search-Engine-Discovering-Voters-and-Non-Voters</li>
                    </ul>
                  </div>
                  <div class="tab-contents" id="education">
                    <ul>
                      <li><span>2020-current</span><br>An Undergraduate student in computer Science and Engineering,KUET,Khulna</li>
                      <li><span>2020</span><br>H.S.C from Notre Dame College,Dhaka</li>
                      <li><span>2018</span><br>S.S.C from Nazirpur High School,Natore</li>
                    </ul>
                  </div> -->
            </div>
        </div>
       </div>
    </div>
             <!------timeline-->
    <div id="timeline" class="timelineContainer">
       <section class="col">
          
          <div class="timelineContents">
            <header class="timelineTitle" style="font-size: 50px;margin-bottom: 30px;">
                Timeline
              </header>
              <div class="timelineBox">
                <h4>2007-2012</h4>
                <h3>Passed PSC</h3>
                <p>Ekannobiga Govt Primary School,Natore</p>
            </div>
            <div class="timelineBox">
                <h4>2012-2015</h4>
                <h3>Passed JSC</h3>
                <p>Nazirpur High School,Natore</p>
            </div>
            <div class="timelineBox">
                <h4>2015-2018</h4>
                <h3>Passed SSC</h3>
                <p>Nazirpur High School,Natore</p>
            </div>
            <div class="timelineBox">
                <h4>2018-2020</h4>
                <h3>Passed HSC</h3>
                <p>Notre Dame College,Dhaka</p>
            </div>
            <div class="timelineBox">
                <h4>2022-Current</h4>
                <h3>Undergraduate Student</h3>
                <p>Department of Computer Science and Engineering,KUET</p>
            </div>
          </div>
       </section>
    </div>
<!-- .......serivices...... -->
 
 <!-- ...............portfolio...................... -->
<div id="portfolio">
    <div class="container">
        <h1 class="sub-title">My Work</h1>
        <div class="work-list">
            <!-- <div class="work">
                <img src="image1.jpg" alt="1">
                <div class="layer">
                    <h3>Library App</h3>
                    <p>At my second year, I created an App for Desktop for Library management</p>
                    <a href="https://github.com/Faruk982/My-library"><i class="fa-solid fa-up-right-from-square"></i></a>
                </div>
            </div> -->
            <div class="work">
                <img src="find/image2.jpg" alt="1" >
                <div class="layer">
                    <h3>Library App</h3>
                    <p>At my second year, I created an App for Desktop for Library management</p>
                    <a href="https://github.com/Faruk982/My-library"><i class="fa-solid fa-up-right-from-square"></i></a>
                </div>
            </div>
            <div class="work">
                <img src="find/fimage3-1.jpg" alt="1" >
                <div class="layer">
                    <h3>Console project with C++</h3>
            <p>In my 2nd year 1st year,I had a console porject with the oop concept of C++.And during that time I created a voter management system</p>
                    <a href="https://github.com/Faruk982/Citizen-Search-Engine-Discovering-Voters-and-Non-Voters"><i class="fa-solid fa-up-right-from-square"></i></a>
                </div>
            </div>
        </div>
       
    </div>
 </div>
 <!-- ...........contact................. -->
 <div id="contact">
    <div class="container">
        <div class="row">
            <div class="contact-left">
                <h1 class="sub-title">Contact Me</h1>
                <p><i class="fa-sharp fa-solid fa-paper-plane"></i> <asp:Label ID="lblEmail" runat="server" Text=""></asp:Label></p>
               <p><i class="fa-solid fa-phone"></i> <asp:Label ID="lblPhoneNumber" runat="server" Text=""></asp:Label></p>
                <div class="social-icons">
                    <a href="https://www.facebook.com/profile.php?id=100075933993521"><i class="fa-brands fa-square-facebook"></i></a>
                    <a href="https://www.linkedin.com/in/umar-faruk-0791a72ab/"><i class="fa-brands fa-linkedin"></i></a>
                    <a href="https://github.com/Faruk982"><i class="fa-brands fa-square-github"></i></a>
                </div>
                <a href="find/resume.pdf" download class="btn btn2">Download CV</a>
            </div>
            <div class="contact-right">
               <asp:TextBox ID="txtName" runat="server" placeholder="Your Name"></asp:TextBox>
<asp:TextBox ID="txtEmail" runat="server" placeholder="Your email"></asp:TextBox>
<asp:TextBox ID="txtMessage" runat="server" placeholder="Your Message" TextMode="MultiLine" Rows="6"></asp:TextBox>
<asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" 
    Style="display: inline-block; background: #ff004f; padding: 14px 60px; font-size: 18px; margin-top: 20px; cursor: pointer;" />

                <span id="msg"></span>
            </div>
        </div>
    </div>
    <div class="copyright">
        <p>Made by Faruk <i class="fa-solid fa-heart-pulse"></i></p>
    </div>
 </div>
    <script src="find/node.js"></script>

        </div>
    </form>
</body>
</html>

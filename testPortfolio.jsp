<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge"> 
    <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
    <title>Fariziana Portfolio Website</title>
    <style>
        *{
            margin: 0;
            padding: 0;
            font-family: 'Poppins', sans-serif;
            box-sizing: border-box;
        }
        body {
            background: #FCF6F5;             
            color: #02343F;           
        }
        #header {
            width: 100%;
            height: 100vh;
            background-image: url(images/background_portfolio.png);
            background-size: cover;
            background-position: center;
            justify-content: space-between;
            padding: 0 10%;
        }
        .container {
            padding: 10px 10%;
        }
        nav {
            display: flex;
            align-items: center;
            justify-content: space-between;
            flex-wrap: wrap;
        }
        .logo {
            width: 140px;
        }
        nav ul li {
            display: inline-block;
            list-style: none;
            margin: 10px 20px;
        }
        nav ul li a {
            color: #02343F;           
            text-decoration: none;
            font-size: 18px;
            position: relative;
        }
        nav ul li a::after {
            content: '';
            width: 0;
            height: 3px;
            background: #D64161;                  
            position: absolute;
            left: 0;
            bottom: -6px;
            transition: 0.5s;
        }
        nav ul li a:hover::after {
            width: 100%;
        }  
		
        .header-text {
            margin-top: 20%;
            font-size: 30px;
        }
        .header-text h1 {
            font-size: 60px;
            margin-top: 20px;
        }
        .header-text h1 span {
            color: #D64161;                         
        }

        <!-----------------------------/* About Section */---------------------------------------->
        #about {
            padding: 80px 0;
            color: #ababab;
        }
        .row {
            display: flex;
            justify-content: space-between;
            flex-wrap: wrap;
        }
        .about .col-1 {
            flex-basis: 35%;
            margin-bottom: 20px;
        }
        .about .col-1 img {
            width: 100%;
            border-radius: 15px;   
        }
        .about .col-2 {
            flex-basis: calc(65% - 20px);
            margin-top: 20px;
        }
        .sub-title {
            font-size: 50px;
            font-weight: 600;
            color: #02343F; 
			margin: 0 10px 20px; 
        }
        .tab-titles {
            display: flex;
            margin: 30px 0 30px;
			padding: 10px;
        }
        .tab-links {
            margin-right: 50px;
            font-size: 18px;
            font-weight: 500;
            cursor: pointer;
            position: relative;
        }
        .tab-links::after {
            content: '';
            width: 0;
            height: 3px;
            background: #D64161;                       
            position: absolute;
            left: 0;
            bottom: -8px;
            transition: 0.5s;    
        }
        .tab-links.active-link::after {
            width: 50%;
        }
        .tab-contents ul li {
            list-style: none;
            margin: 10px 0;
        }
        .tab-contents ul li span {
            color: #D64161;
            font-size: 14px;   
        }
        .tab-contents {
            display: none;
        }
        .tab-contents.active-tab {
            display: block;
        }

        <!-----------------------/* Projects Section */------------------------------->
        #projects {
            padding: 30px 0;
        }
        .projects-list {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            grid-gap: 40px;
            margin-top: 50px;
        }
        .projects-list div {
            background: #FFFFFF;           
            padding: 43px;
            font-size: 13px;
            font-weight: 300;
            border-radius: 10px;
            transition: background 0.5s, transform 0.5s;
        }       
        .projects-list div i {
            font-size: 50px;
            margin-bottom: 30px;
			color: #D64161;
        }
        .projects-list div h2 {
            font-size: 30px;
            font-weight: 500;
            margin-bottom: 15px;
        }
        .projects-list div a {
            text-decoration: none;
            color: #FFFFFF;               
            font-size: 12px;
            margin-top: 20px;
            display: inline-block;
        }
        .projects-list div:hover {
            background: #FAD0C9;                        
            transform: translateY(-10px);
        }
		
        <!---------------------------/* Contact Section */------------------------>
        #contact {
            padding: 30px 0;
        }
        .contact-left {
            flex-basis: 35%;
        }
        .contact-right {
            flex-basis: 60%;
        }
        .contact-left p {
            margin-top: 30px;
        }
        .contact-left p i {
            color: #D64161;                        
            margin-right: 15px;
            font-size: 25px;
        }
        .social-icons {
            margin-top: 30px;
        }
        .social-icons a {
            text-decoration: none;
            font-size: 30px;
            margin-right: 15px;
            color: #D64161;
            display: inline-block;
            transition: transform 0.5s;
        }
        .social-icons a:hover {
            color: #02343F;                          
            transform: translateY(-5px);
        }
		.btn.btn1 {
            display: inline-block;
            width: 25%;
			height: 5vh;
			text-align: center;
		}
        .btn.btn2 {
            display: inline-block;
            background: #D64161;
			color: #FFFFFF;
            width: 10%;
			height: 4vh;
			text-align: center;
        }
        .contact-right form {
            width: 100%;
        }
        form input, form textarea {
            width: 100%;
            border: 0;
            outline: none;
            background: #FFFFFF;              
            padding: 15px;
            margin: 15px 0;
            color: #F96167;                          
            font-size: 18px;
            border-radius: 6px;
        }
        form.btn2 {
            padding: 14px 60px;
            font-size: 18px;
            margin-top: 20px;
            cursor: pointer;
        }
        .copyright {
            width: 100%;
            text-align: center;
            padding: 25px 0;
            background: #D64161;                    
            font-weight: 300;
            margin-top: 20px;
        }
        .copyright i {
            color: #FFFFFF;                            
        }

        <!----------------------/* Responsive Styles */----------------->
        nav .fas{
            display: none;
        }
    @media only screen and (max-width: 600px) {
		#header{
			background-image: url(images/phone_background.png);
		}
		.header-text{
			margin-top: 100%;
			font-size: 16px;
		}
		.header-text h1{
			font-size: 30px;
		}
        nav .fas{
            display: block;
			font-size: 25px;
        }
        nav ul {
            background: #FFFFFF;                       
            position: fixed;
            top: 0;
            right: -200px;
            width: 200px;
            height: 100vh;
            padding-top: 50px;
			z-index; 2;
			transition: right 0.5s;
        }
        nav ul li {
            display: block;
            margin: 25px;
        }
        nav ul .fas{
            position: absolute;
            top: 25px;
            left: 25px;
            cursor: pointer;
        }
		.sub-title{
			font-size: 40px;
		}
		.about-col-1, .about-col-2{
			flex-basis: 100%
		}
		.about-col-1{
			margin-bottom: 30px;
		}
		.about-col-2{
			font-size: 14px;
		}
		.tab-links{
			font-size: 16px;
			margin-right: 20px;
		}
		.contact-left, .contact-right{
			flex-basis: 100%;
		}
		.copyright{
			font-size: 14px;
		}
       
	}
    </style>

    <script src="https://kit.fontawesome.com/782056d3a0.js" crossorigin="anonymous"></script>
</head>
<body>
    <body>
    <div id="header">
	    <div class="container">
	        <nav>
		        <img src="images/final_logo.png" class="logo">
		            <ul id="sidemenu">
					    <li><a href="#header">Home</a></li>
                        <li><a href="#about">About Me</a></li>
                        <li><a href="#projects">Project</a></li>
                        <li><a href="#contact">Contact Me</a></li>
						<i class="fas fa-times" onclick="closemenu()"></i>
					</ul>
		            <i class="fas fa-bars" onclick="openmenu()"></i>
	        </nav>
			<div class="header-text">
			    <p>My Portfolio</p>
			    <h1>Hi! I'm <span>Fariziana</span><br>from SMTMIM</h1>
			</div>
	    </div>
	</body>	
    </div>
<!----------about--------->
    <div id="about">
        <div class="container">
            <div class="row">
                <div class="about col-1">
                    <img src="images/yes_passport.png">
                </div>
                <div class="about col-2">
                    <h1 class="sub-title">About Me</h1> 
                    <p>"Hello, I'm Fariziana Binti Mohammad, a 20-year-old student currently<br> in the third 
					semester of Sarjana Muda Teknologi Maklumat, specializing in Informatik Media.<br> I'm originally from Gua Musang, Kelantan and I'm passionate
					about exploring <br>the intersection of technology and media and look forward to the opportunities<br> 
					this academic year will bring."</p>
                    
                    <div class="tab-titles">
                        <p class="tab-links active-link" onclick="opentab('educations')">Educations</p>
                        <p class="tab-links" onclick="opentab('hobbies')">Hobbies</p>
                        <p class="tab-links" onclick="opentab('ambitions')">Ambitions</p>
                    </div>
                    <div class="tab-contents active-tab" id="educations">
                        <ul>
                            <li><span>2016-2020</span><br>Sekolah Menengah Sains Gua Musang(Pure Science)<br></li>
                            <li><span>2020-2021</span><br>Kolej Matrikulasi Kelantan(Life Science)<br></li>
                            <li><span>2022-2026</span><br>Universiti Sultan Zainal Abidin(Teknologi Maklumat(Informatik Media))<br></li>
                        </ul>	
                    </div>
                    <div class="tab-contents" id="hobbies">
                        <ul>
                            <li><span>Photography</span><br>Do family snaps and vlog<br></li>
                            <li><span>Journaling</span><br>Daily, gratitude, dream journal<br></li>
                            <li><span>Collection</span><br>Collecting beautiful brand tags<br></li>
                        </ul>	
                    </div>
                    <div class="tab-contents" id="ambitions">
                        <ul>
                            <li><span>Professional Video Editor</span><br>Work in marketing advertisement<br></li>
                            <li><span>UI/UX Designer</span><br>Web designing<br></li>
                        </ul>	
                    </div>					
                </div>
            </div>
        </div>
    </div>
<!-----------project----------->
<div id="projects">
    <div class="container">
	    <h1 class="sub-title">My Projects</h1>
		<div class="projects-list">
		    <div>
			    <i class="fa-solid fa-code"></i>
			    <h4>Web Design</h4>
				<h2>EasyRecipeWeb</h2>
				<p>EasyRecipeWeb is committed to developing a user-friendly platform for sharing and 
				discovering easy-to-follow recipes. The goal is to provide an accessible area where 
				people of all cooking abilities can locate and share simple recipes for excellent meals.</p>
				<a href="#"><u>Learn more</u></a>
		    </div>
			<div>
			    <i class="fa-solid fa-crop-simple"></i>
			    <h4>UI/UX Design</h4>
				<h2>Coffee Shop Interface</h2>
				<p>Creation of a modern Coffee Shop Interface Design Application to design a user-friendly 
				and visually appealing interface that improves the entire customer experience in coffee shops.</p>
				<a href="#"><u>Learn more</u></a>
		    </div>
			<div>
			    <i class="fa-brands fa-app-store-ios"></i>
			    <h4>App Design</h4>
				<h2>Task Tracker</h2>
				<p>Our current project involves the careful design and implementation of a Task Tracker application. 
				The major goal is to develop a simple, user-friendly application that enables individuals to successfully
				manage their everyday responsibilities.</p>
				<a href="#"><u>Learn more</u></a>
		    </div>
		</div> 
	</div>
</div>
<!------------contact------------------>
<div id="contact">
    <div class="container">
	    <div class="row">
		    <div class="contact-left">
			    <h1 class="sub-title">Contact Me</h1>
				<p><i class="fa-regular fa-paper-plane"></i> farizianamohammad@gmail.com</p>
				<p><i class="fa-solid fa-phone"></i> 0142948019</p>
				<div class="social-icons">
				    <a href="https://www.instagram.com/frzn.mohd/"><i class="fa-brands fa-instagram"></i></a>
					<a href="https://www.tiktok.com/@frzn_x?_t=8hk0XMwkkmA&_r=1"><i class="fa-brands fa-tiktok"></i></a>
					<a href="https://www.facebook.com/profile.php?id=100040935228367"><i class="fa-brands fa-facebook-f"></i></a>
					
				</div>
				<a href="images/MyCV.pdf" download class="btn btn1">Download CV</a>
		    </div>
			<div class="contact-right">
				<form name="submit-to-google-sheet">
				    <input type="text" name="Name" placeholder="Your Name" required>
					<input type="email" name="Email" placeholder="Your Email" required>
					<textarea name="Message" rows="6" placeholder="Your Message"></textarea>
					<button type="submit" class="btn btn2">Submit</button>
				</form>
				<span id="msg"></span>
			</div>
		</div> 
	</div>
    <div class="copyright">
		<p>Copyright @ Fariziana. Made with <i class="fa-solid fa-heart"></i> for my portfolio.</p>
	</div>
</div>
<script>
    var tablinks = document.getElementsByClassName("tab-links");
	var tabcontents = document.getElementsByClassName("tab-contents");
	
	function opentab(tabname){
		for(tablink of tablinks){
			tablink.classList.remove("active-link");
		}
		for(tabcontent of tabcontents){
			tabcontent.classList.remove("active-tab");
		}
		
            event.currentTarget.classList.add("active-link");
			document.getElementById(tabname).classList.add("active-tab");
	}
</script>

<script>
    var sidemeu = document.getElementById("sidemenu");
	
	function openmenu(){
		sidemeu.style.right = "0";
	}
	
	function closemenu(){
		sidemeu.style.right = "-200px";
	}
	
</script>

<script>
  const scriptURL = 'https://script.google.com/macros/s/AKfycbzh_2R5Wnn0VjXKWqQXTPBc0pfv-VtfThxDXWo63ov8D-VYLWirGeJTTlrUlZYlTwjKJg/exec '
  const form = document.forms['submit-to-google-sheet']
  const msg = document.getElementById("msg")
  form.addEventListener('submit', e => {
    e.preventDefault()
    fetch(scriptURL, { method: 'POST', body: new FormData(form)})
      .then(response =>{
		  msg.innerHTML = "Message sent successfully"
		  setTimeout(function(){
			  msg.innerHTML = ""
		  },5000)
		  form.reset()
	  })
      .catch(error => console.error('Error!', error.message))
  })
</script>
</body>
</html>

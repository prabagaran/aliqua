<%@ Page Title="Home - Home Page | Student's Site" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"%>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
<div class="wrap">
   
   <div class="container">
      <!-- aside -->
      <aside>
         <h3>Categories</h3>
         <ul class="categories">
            <li><span><a href="#">Programs</a></span></li>
            <li><span><a href="#">Student Info</a></span></li>
            <li><span><a href="#">Teachers</a></span></li>
            <li><span><a href="#">Descriptions</a></span></li>
            <li><span><a href="#">Administrators</a></span></li>
            <li><span><a href="#">Basic Information</a></span></li>
            <li><span><a href="#">Vacancies</a></span></li>
            <li class="last"><span><a href="#">Calendar</a></span></li>
         </ul>
         <form action="" id="newsletter-form">
            <fieldset>
            <div class="rowElem">
               <h2>Newsletter</h2>
               <input type="email" value="Enter Your Email Here" onFocus="if(this.value=='Enter Your Email Here'){this.value=''}" onBlur="if(this.value==''){this.value='Enter Your Email Here'}" >
               <div class="clear"><a href="#" class="fleft">Unsubscribe</a><a href="#" class="fright" onClick="document.getElementById('newsletter-form').submit()">Submit</a></div>
            </div>
            </fieldset>
         </form>
         <h2>Fresh <span>News</span></h2>
         <ul class="news">
            <li><strong>June 30, 2010</strong>
               <h4><a href="#">Sed ut perspiciatis unde</a></h4>
               Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque. </li>
            <li><strong>June 14, 2010</strong>
               <h4><a href="#">Neque porro quisquam est</a></h4>
               Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit consequuntur magni. </li>
            <li><strong>May 29, 2010</strong>
               <h4><a href="#">Minima veniam, quis nostrum</a></h4>
               Uis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae. </li>
         </ul>
      </aside>
      <!-- content -->
      <section id="content">
         <div id="banner">
            <h2>Professional <span>Online Education <span>Since 1992</span></span></h2>
         </div>
         <div class="inside">
            <h2>Our <span>Contacts</span></h2>
            <div class="address">
               <address>
               <strong>Zip Code:</strong>50122<br>
               <strong>Country:</strong>USA<br>
               <strong>Telephone:</strong>+354 5635600<br>
               <strong>Fax:</strong>+354 5635610
               </address>
               <div class="extra-wrap">
                  <h4>Miscellaneous info:</h4>
                  <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore.</p>
               </div>
            </div>
            <h2>Contact <span>Form</span></h2>
            <form id="contacts-form" action="">
               <fieldset>
               <div class="field">
                  <label>Your Name:</label>
                  <input type="text" value=""/>
               </div>
               <div class="field">
                  <label>Your E-mail:</label>
                  <input type="email" value=""/>
               </div>
               <div class="field">
                  <label>Your Website:</label>
                  <input type="text" value=""/>
               </div>
               <div class="field extra">
                  <label>Your Message:</label>
                  <textarea cols="1" rows="1"></textarea>
               </div>
               <div class="alignright"><a href="#" onClick="document.getElementById('contacts-form').submit()">Send Your Message!</a></div>
               </fieldset>
            </form>
         </div>
      </section>
   </div>
</div>
<!-- footer -->
<footer>
   <div class="container">
      <div class="inside">
         <div class="wrapper">
            <div class="fleft">24/7 Customer Service <span>8.800.146.56.7</span></div>
            <div class="aligncenter">Website template designed by <a class="new_window" href="http://www.templatemonster.com" target="_blank" rel="nofollow">www.templatemonster.com</a><br/>
               3D Models provided by <a class="new_window" href="http://www.templates.com/product/3d-models/" target="_blank" rel="nofollow">www.templates.com</a></div>
         </div>
      </div>
   </div>
</footer>
<script type="text/javascript"> Cufon.now(); </script>
</asp:Content>
<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="wrapper col3">
  <div id="featured_slide">
    <div id="featured_wrap">
     <div id="sliderFrame">
        <div id="slider">
            <a href="#" target="_blank">
                <img src="images/vvit3.jpg" alt="Welcome to Vidya Vikas" />
            </a>
            <a class="lazyImage" href="images/college-slider-0.png" title="Welcome to Vidya Vikas">Pure JavaScript</a>
            <a href="#"><b data-src="images/image-slider-3.jpg">Image Slider</b></a>
            <a class="lazyImage" href="images/image-slider-4.jpg" title="">Slide 4</a>
        </div>
        <!--thumbnails-->
        <div id="thumbs">
            <div class="thumb">
                <div class="frame"><img src="images/college-slider-0.png"/></div>
                <div class="thumb-content"><p>Vidya vikas</p>Explore your carrier here.</div>
                <div style="clear:both;"></div>
            </div>
            <div class="thumb">
                <div class="frame"><img src="images/thumb2.jpg" /></div>
                <div class="thumb-content"><p>Administration</p>The best Administration</div>
                <div style="clear:both;"></div>
            </div>
            <div class="thumb">
                <div class="frame"><img src="images/thumb3.jpg" /></div>
                <div class="thumb-content"><p>Success</p>patience then success.</div>
                <div style="clear:both;"></div>
            </div>
            <div class="thumb">
                <div class="frame"><img src="images/thumb4.jpg" /></div>
                <div class="thumb-content"><p>Admin success</p>Administration</div>
                <div style="clear:both;"></div>
            </div>
        </div>
         <br class="clear" />
        <!--clear above float:left elements. It is required if above #slider is styled as float:left. -->
        <div style="clear:both;height:0;"></div>
    </div>
    </div>
      
  </div>
</div>
</asp:Content>



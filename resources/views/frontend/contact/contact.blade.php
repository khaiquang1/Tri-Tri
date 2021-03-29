@extends('layouts.frontend.master')
@section('title')
<title>Liên hệ - Công ty cổ phần Trí Tri</title>
@endsection


@section('menu')
<li><a href="{{URL::to('/')}}" target="_self">Trang chủ</a></li>
      <li><a  href="{{URL::to('/about-us')}}" target="_self">Giới thiệu</a></li>
      <li><a href="{{URL::to('/fields-of-operation')}}" target="_self">Lĩnh vực hoạt động</a></li>
      <li><a href="{{URL::to('/news')}}" target="_self">Tin tức</a></li>
      <li><a href="{{URL::to('/recruitment')}}" target="_self">Tuyển dụng</a></li>
      <li><a class="active" href="{{URL::to('/contact')}}" target="_blank">Liên hệ</a></li> 
@endsection
@section('content')




 <div id="ctl00_divAlt1" class="altcontent1 cmszone">
	
                
                <!-- <div class="banner-pageWrap"> --><div class="Module Module-150"><div class="ModuleContent"><div class="banner-page">
  <div class="item">
    <img src="{{asset('assets/frontend/image/banner_page.png')}}" alt="">
  </div>
</div>
</div></div><div class="container"><div class="breadcrumb-wrap"><div class="title-bd"></div><div class="Module Module-151"><ol class="breadcrumb">
    
            <li itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="{{URL::to('/')}}" class="itemcrumb" itemprop="url"><span itemprop="title">Trang chủ</span></a></li>
        
            <li itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="#" class="itemcrumb active" itemprop="url"><span itemprop="title">Liên hệ</span></a></li>
        
    
</ol></div></div></div><!-- </div> -->
            
</div>




            <main class="main">
                
        <div id="ctl00_divCenter" class="middle-fullwidth">
  
          
          <div class="container"><div class="contact-wrap"><div class="row flex flex-wrap"><div class="col-xs-12 col-md-4"><div class="contact-info Module Module-53"><div class="ModuleContent"><h3>Trụ sở chính</h3>
<em class="fa fa-home" aria-hidden="true"></em> Địa chỉ: 59F Trần Bình Trọng, Phường 5, Quận Bình Thạnh, TPHCM, Việt Nam<br>
<em class="fa fa-phone" aria-hidden="true"></em> Điện thoại: Viber - Zalo (+84) 0915 489 819 /&nbsp; (+84) 0919 212 16<br>
Facebook: Trí Tri Group&nbsp;<br>
Email: ha.nguyen1@tritri.org<br>
<ul>
</ul></div></div></div><div class="col-xs-12 col-md-8"><!-- <section id="map" class="contact-maps"><div class="Module Module-54"><div class="ModuleContent"><iframe width="100%" scrolling="no" height="350" frameborder="0" marginheight="0" marginwidth="0" src="./Liên hệ - Công ty Cổ phần Trí Tri_files/maps.html"></iframe></div></div></section> --><div class="contact-form clearfix Module Module-93"><div class="ModuleContent"><h2 class="module-title">Vui lòng liên hệ với chúng tôi</h2>
<div class="form-wrap">
    <div id="ctl00_mainContent_ctl02_upContact">
    
            <div id="ctl00_mainContent_ctl02_pnlSend" onkeypress="javascript:return WebForm_FireDefaultButton(event, &#39;ctl00_mainContent_ctl02_btnSend&#39;)">
      
      <div class="row flex flex-wrap">
        <div class="form-group col-xs-12 col-sm-6">
          <div class="form-group ct-name">
            <label for="ctl00_mainContent_ctl02_txtName" class="label">Họ tên<span>*</span></label>
            <input name="ctl00$mainContent$ctl02$txtName" type="text" maxlength="100" id="ctl00_mainContent_ctl02_txtName" class="form-control">
            <span id="ctl00_mainContent_ctl02_reqName" title="Vui lòng nhập họ tên." class="fa fa-exclamation-triangle" style="display:none;"></span>
          </div>  
        </div>
        <div class="form-group col-xs-12 col-sm-6">
          
          <div class="form-group ct-email">
            <label for="ctl00_mainContent_ctl02_txtEmail" class="label">Email<span>*</span></label>
            <input name="ctl00$mainContent$ctl02$txtEmail" type="text" maxlength="255" id="ctl00_mainContent_ctl02_txtEmail" class="form-control">
            <span id="ctl00_mainContent_ctl02_reqEmail" title="Vui lòng nhập email." class="fa fa-exclamation-triangle" style="display:none;"></span>
            <span id="ctl00_mainContent_ctl02_regexEmail" title="Email không hợp lệ." class="fa fa-exclamation-triangle" style="display:none;"></span>
          </div>  
        </div>
        <div class="form-group col-xs-12 col-sm-6">
          
          <div class="form-group ct-phone">
            <label for="ctl00_mainContent_ctl02_txtPhone" class="label">Điện thoại</label>
            <input name="ctl00$mainContent$ctl02$txtPhone" type="text" maxlength="255" id="ctl00_mainContent_ctl02_txtPhone" class="form-control">
            
          </div>
          
        </div>
        <div class="form-group col-xs-12 col-sm-6">
          <div class="form-group ct-subject">
            <label for="ctl00_mainContent_ctl02_txtSubject" class="label">Tiêu đề</label>
            <input name="ctl00$mainContent$ctl02$txtSubject" type="text" maxlength="255" id="ctl00_mainContent_ctl02_txtSubject" class="form-control">
          </div>
        </div>
        <div class="form-group col-xs-12">
          <div class="form-group ct-message">
            <label for="ctl00_mainContent_ctl02_txtMessage" class="label">Nội dung<span>*</span></label>
            <textarea name="ctl00$mainContent$ctl02$txtMessage" rows="2" cols="20" id="ctl00_mainContent_ctl02_txtMessage" class="form-control"></textarea>
            <span id="ctl00_mainContent_ctl02_reqMessage" title="Vui lòng nhập nội dung liên hệ." class="fa fa-exclamation-triangle" style="display:none;"></span>
          </div>
          
        </div>
        <div class="btn-wrap col-xs-12">
          <input type="submit" name="ctl00$mainContent$ctl02$btnSend" value="Gửi" onclick="javascript:WebForm_DoPostBackWithOptions(new WebForm_PostBackOptions(&quot;ctl00$mainContent$ctl02$btnSend&quot;, &quot;&quot;, true, &quot;Contact93&quot;, &quot;&quot;, false, false))" id="ctl00_mainContent_ctl02_btnSend" class="ct-button btn btn-default">
        </div>
      </div>
            
    </div>            
            
        
  </div>
</div></div></div></div></div></div></div>
        
</div>
        
            </main>

           
            

@endsection
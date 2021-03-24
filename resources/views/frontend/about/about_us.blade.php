@extends('layouts.frontend.master')
@section('title')
<title>Giới thiệu- Công ty cổ phần Trí Tri</title>
@endsection


@section('menu')
<li><a href="{{URL::to('/')}}" target="_self">Trang chủ</a></li>
      <li><a class="active" href="{{URL::to('/about-us')}}" target="_self">Giới thiệu</a></li>
      <li><a href="{{URL::to('/fields-of-operation')}}" target="_self">Lĩnh vực hoạt động</a></li>
      <li><a href="{{URL::to('/news')}}" target="_self">Tin tức</a></li>
      <li><a href="{{URL::to('/contact')}}" target="_self">Tuyển dụng</a></li>
      <li><a href="{{URL::to('/contact')}}" target="_blank">Liên hệ</a></li> 
@endsection
@section('content')




 <div id="ctl00_divAlt1" class="altcontent1 cmszone">
	
                
                <!-- <div class="banner-pageWrap"> --><div class="Module Module-150"><div class="ModuleContent"><div class="banner-page">
  <div class="item">
    <img src="{{asset('assets/frontend/image/banner_page.png')}}" alt="">
  </div>
</div>
</div></div><div class="container"><div class="breadcrumb-wrap"><div class="title-bd"></div><div class="Module Module-151"><ol class="breadcrumb">
    
            <li itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="http://www.tritri.org/" class="itemcrumb" itemprop="url"><span itemprop="title">Trang chủ</span></a></li>
        
            <li itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="#" class="itemcrumb active" itemprop="url"><span itemprop="title">Giới thiệu</span></a></li>
        
    
</ol></div></div></div><!-- </div> -->
            
</div>




            <main class="main">
                
				<div id="ctl00_divCenter" class="middle-fullwidth">
	
					
					
    
<div class="Module Module-77"><div class="ModuleContent">
<div id="ctl00_mainContent_ctl00_ctl00_pnlInnerWrap">
		
    
    
    <div class="container">
  <section class="news-detail">
    <div class="row flex flex-wrap">
      <div class="col-xs-12 col-md-8 col-lg-9">
        <h1 class="title-page">{{$about->title}}</h1>
        <div class="share">
          <div class="face-like"><a class="fb-like fb_iframe_widget" data-href="http://www.tritri.org/gioi-thieu/gioi-thieu-1/gioi-thieu-1" data-send="false" data-layout="button_count" data-width="100" data-show-faces="false" fb-xfbml-state="rendered" fb-iframe-plugin-query="app_id=766305180482770&amp;container_width=0&amp;href=http%3A%2F%2Fwww.tritri.org%2Fgioi-thieu%2Fgioi-thieu-1%2Fgioi-thieu-1&amp;layout=button_count&amp;locale=en_US&amp;sdk=joey&amp;send=false&amp;show_faces=false&amp;width=100"><span style="vertical-align: bottom; width: 90px; height: 28px;"><iframe name="f4b596d5d5b34c" width="100px" height="1000px" data-testid="fb:like Facebook Social Plugin" title="fb:like Facebook Social Plugin" frameborder="0" allowtransparency="true" allowfullscreen="true" scrolling="no" allow="encrypted-media" src="{{asset('assets/frontend/like.html')}}" style="border: none; visibility: visible; width: 90px; height: 28px;" class=""></iframe></span></a></div>
          <div class="fb-share-button fb_iframe_widget" data-layout="button_count" fb-xfbml-state="rendered" fb-iframe-plugin-query="app_id=766305180482770&amp;container_width=0&amp;href=http%3A%2F%2Fwww.tritri.org%2Fgioi-thieu%2Fgioi-thieu-1&amp;layout=button_count&amp;locale=en_US&amp;sdk=joey"><span style="vertical-align: bottom; width: 77px; height: 20px;"><iframe name="fd4981b6b1a2f8" width="1000px" height="1000px" data-testid="fb:share_button Facebook Social Plugin" title="fb:share_button Facebook Social Plugin" frameborder="0" allowtransparency="true" allowfullscreen="true" scrolling="no" allow="encrypted-media" src="{{asset('assets/frontend/share_button.html')}}" style="border: none; visibility: visible; width: 77px; height: 20px;" class=""></iframe></span></div>
          <div class="tweet"><iframe id="twitter-widget-0" scrolling="no" frameborder="0" allowtransparency="true" allowfullscreen="true" class="twitter-share-button twitter-share-button-rendered twitter-tweet-button" style="position: static; visibility: visible; width: 60px; height: 20px;" title="Twitter Tweet Button" src="{{asset('assets/frontend/tweet_button.0edc1ef9f8b82d9b79c6115bda79f63f.vi.html')}}" data-url="http://www.tritri.org/gioi-thieu/gioi-thieu-1/gioi-thieu-1"></iframe></div>
          <div class="google"><div id="___plusone_0" style="position: absolute; width: 450px; left: -10000px;"><iframe ng-non-bindable="" frameborder="0" hspace="0" marginheight="0" marginwidth="0" scrolling="no" style="position:absolute;top:-10000px;width:450px;margin:0px;border-style:none" tabindex="0" vspace="0" width="100%" id="I0_1616400419651" name="I0_1616400419651" src="{{asset('assets/frontend/fastbutton.html')}}" data-gapiattached="true"></iframe></div><div class="g-plusone" data-size="medium" data-count="true" data-href="http://www.tritri.org/gioi-thieu/gioi-thieu-1/gioi-thieu-1" data-gapiscan="true" data-onload="true" data-gapistub="true"></div></div>
        </div>
        <div class="full-content">
          @if (!empty($about->about_image))
          <img alt="" src="{{ asset('uploads/img/about/'.$about->about_image) }}">
          @endif
          <p>@php echo html_entity_decode($about->desc); @endphp</p>

          @if (!empty($about->btn_name))
                            <a href="@if (!empty($about->btn_link)) {{ $about->btn_link }} @else # @endif" class="cs-btn-one btn-gradient-color btn-lg">{{ $about->btn_name }}</a>
                        @endif
        </div>
      </div>
      <div class="col-xs-12 col-md-4 col-lg-3">
      </div>
    </div>
  </section>
</div>

    
    

	</div></div></div>
				
</div>
				
            </main>

           
            

@endsection
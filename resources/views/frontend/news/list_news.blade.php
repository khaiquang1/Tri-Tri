@extends('layouts.frontend.master')
@section('title')
<title>Danh sách tin tức</title>
@endsection


@section('menu')
<li><a href="{{URL::to('/')}}" target="_self">Trang chủ</a></li>
      <li><a  href="{{URL::to('/about-us')}}" target="_self">Giới thiệu</a></li>
      <li><a href="{{URL::to('/fields-of-operation')}}" target="_self">Lĩnh vực hoạt động</a></li>
      <li><a class="active" href="{{URL::to('/news')}}" target="_self">Tin tức</a></li>
      <li><a href="{{URL::to('/contact')}}" target="_self">Tuyển dụng</a></li>
      <li><a href="{{URL::to('/contact')}}" target="_blank">Liên hệ</a></li> 
@endsection
@section('content')
 <div id="ctl00_divAlt1" class="altcontent1 cmszone">
	
                
                <!-- <div class="banner-pageWrap"> --><div class="Module Module-150"><div class="ModuleContent"><div class="banner-page">
  <div class="item">
    <img src="{{asset('assets/frontend/image/banner_page_news.png')}}" alt="">
  </div>
</div>
</div></div><div class="container"><div class="breadcrumb-wrap"><div class="title-bd"></div><div class="Module Module-151"><ol class="breadcrumb">
    
            <li itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="{{URL::to('/')}}" class="itemcrumb" itemprop="url"><span itemprop="title">Trang chủ</span></a></li>
        
            <li itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="http://www.tritri.org/tin-tuc" class="itemcrumb active" itemprop="url"><span itemprop="title">Danh sách tin tức</span></a></li>
        
    
</ol></div></div></div><!-- </div> -->
            
</div>
	 
            <main class="main">
              <div id="ctl00_divCenter" class="middle-fullwidth">
  
          
          <div class="container Module Module-162"><div class="ModuleContent"><div class="block-zoneFieldWork">
  <section class="fieldwork-news">
    <h2 class="title-page">Tin tức</h2>
    <div class="row flex flex-wrap">
  
  @foreach ($news as $recent_post)

    
      <div class="col-xs-12 col-sm-6 col-lg-4 item-newsWrap">
        <div class="item-news">
           @if (!empty($recent_post->blog_image))
          <figure>
             <a class="hv-zoom" target="_self" href="{{ url('news/'.$recent_post->slug) }}" ><img src="{{ asset('uploads/img/blogs/'.$recent_post->blog_image) }}" class="img-full" alt="blog image" ></a>
                     @else
                        <a class="hv-zoom" target="_self" href="{{ url('news/'.$recent_post->slug) }}"><img src="{{ asset('uploads/img/dummy/no-image.jpg') }}" class="img-full" alt="blog image"></a>
                 @endif
            <figcaption>
              <time class="time-news">{{ Carbon\Carbon::parse($recent_post->created_at)->isoFormat('DD') }} {{ Carbon\Carbon::parse($recent_post->created_at)->isoFormat('MMM') }} {{ Carbon\Carbon::parse($recent_post->created_at)->isoFormat('GGGG') }}</time>
              <h3 class="title">
                <a target="_self" href="{{ url('news/'.$recent_post->slug) }}" title="{{ $recent_post->title }}">{{ $recent_post->title }}</a>
              </h3>
              <div class="brief">
                <div class="autoCutStr_120">
                   <?php
                $feature_desc = $recent_post->desc;
                $desc = substr("$feature_desc",0,500);
            ?>
            @php echo html_entity_decode($desc)  @endphp
                </div>
              </div>
              <a class="btn-viewmore" target="_self" href="{{ url('news/'.$recent_post->slug) }}" title="{{ $recent_post->title }}">Xem thêm <i class="fa fa-angle-double-right" aria-hidden="true"></i></a>
            </figcaption>
          </figure>
        </div>
      </div>

  @endforeach
     
     
 
      
    </div>
  </section>
</div></div></div>
                
			<!-- 	<div id="ctl00_divCenter" class="middle-fullwidth">
	
					
					
    
<div class="Module Module-77"><div class="ModuleContent">
<div id="ctl00_mainContent_ctl00_ctl00_pnlInnerWrap">
		
    
    
    <div class="container">
  <section class="news-detail">
    <div class="row flex flex-wrap">
      <div class="col-xs-12 col-md-8 col-lg-9">
        <h1 class="title-page">Tin tức</h1>
      
        	
        	<div class="item-bignews">
    @foreach ($news as $recent_post)

                @if (!empty($recent_post->blog_image))
                 <figure>
                        <a class="hv-zoom" target="_self" href="{{ url('news/'.$recent_post->slug) }}" ><img src="{{ asset('uploads/img/blogs/'.$recent_post->blog_image) }}" class="img-full" alt="blog image" ></a>
                     @else
                        <a class="hv-zoom" target="_self" href="{{ url('news/'.$recent_post->slug) }}"><img src="{{ asset('uploads/img/dummy/no-image.jpg') }}" class="img-full" alt="blog image"></a>
                 @endif
                
                                                
      <figcaption>
        <time class="time-news"><span class="entry-date mrr-20"><i class="far fa-calendar-alt mrr-10 text-primary-color"></i>{{ Carbon\Carbon::parse($recent_post->created_at)->isoFormat('DD') }} {{ Carbon\Carbon::parse($recent_post->created_at)->isoFormat('MMM') }} {{ Carbon\Carbon::parse($recent_post->created_at)->isoFormat('GGGG') }}</span></time>
        <h1 class="title">
          <a target="_self" href="{{ url('news/'.$recent_post->slug) }}" title="{{ $recent_post->title }}">{{ $recent_post->title }}</a>
        </h1>
        <div class="brief"><span style="font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; float: none; display: inline !important; font-family: Roboto, sans-serif; color: #333333;">
            <?php
                $feature_desc = $recent_post->desc;
                $desc = substr("$feature_desc",0,500);
            ?>
            @php echo html_entity_decode($desc)  @endphp</span></div>
        <a class="btn-viewmore" target="_self" href="{{ url('news/'.$recent_post->slug) }}" title="{{ $recent_post->title }}">Xem thêm <i class="fa fa-angle-double-right" aria-hidden="true"></i></a>
      </figcaption>
    </figure>

    @endforeach 
  </div>
 




      </div>
      <div class="col-xs-12 col-md-4 col-lg-3">
      </div>
    </div>
  </section>
</div>

    
    

	</div></div></div>
				
</div> -->






				
            </main>








@endsection
@extends('layouts.frontend.master')
@section('title')
<title>Danh sách tin tức</title>
@endsection


@section('menu')
<li><a href="{{URL::to('/')}}" target="_self">Trang chủ</a></li>
      <li><a  href="{{URL::to('/about-us')}}" target="_self">Giới thiệu</a></li>
      <li><a class="active" href="{{URL::to('/fields-of-operation')}}" target="_self">Lĩnh vực hoạt động</a></li>
      <li><a  href="{{URL::to('/news')}}" target="_self">Tin tức</a></li>
      <li><a href="{{URL::to('/recruitment')}}" target="_self">Tuyển dụng</a></li>
      <li><a href="{{URL::to('/contact')}}" target="_blank">Liên hệ</a></li> 
@endsection
@section('content')
<div id="ctl00_divAlt1" class="altcontent1 cmszone">
	
                
                <div class="banner-pageWrap"><div class="Module Module-158"><div class="ModuleContent"><div class="banner-page">
  <div class="item">
    <img src="{{asset('assets/frontend/image/banner_page_news.png')}}" alt="">
  </div>
</div>
</div></div><div class="container"><div class="breadcrumb-wrap"><div class="title-bd"></div><div class="Module Module-151"><ol class="breadcrumb">
    
            <li itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="" class="itemcrumb" itemprop="url"><span itemprop="title">Trang chủ</span></a></li>
        
            <li itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="" class="itemcrumb" itemprop="url"><span itemprop="title">Lĩnh vực hoạt động</span></a></li>
            @foreach($categories as $cate)
            <li itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="" class="itemcrumb active" itemprop="url"><span itemprop="title">{{$cate->category_name}}</span></a></li>
        
            @endforeach
</ol></div></div></div></div>
            
</div>
            <main class="main">
                
				<div id="ctl00_divCenter" class="middle-fullwidth">
	
					
					<div class="container Module Module-162"><div class="ModuleContent"><div class="block-zoneFieldWork">
          @foreach($about_bu as $bu)
             <section class="desc-fieldWork">
              @php echo html_entity_decode($bu->desc)  @endphp
             </section>
             @endforeach
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
                $desc = substr("$feature_desc",0,200);
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



</div></div></div><div class="Module Module-161"><div class="ModuleContent"><div class="container">
  <div class="block-videoWrap">
    <h3 class="title-video">Video</h3>
    @foreach($videos as $video)
    <div class="col-xs-12 col-sm-6 col-lg-4 item-wrap">
      <div class="item">
        <figure>
          <a class="fancy-video hv-zoom" title="{{$video->title}}" href="{{$video->link}}">
           @if (!empty($video->image))
                     <img class="image-size img-fluid" src="{{ asset('uploads/img/videos/'.$video->image) }}" alt="blog image">
                      @else
                     <img class="image-size img-fluid" src="{{ asset('uploads/img/dummy/no-image.jpg') }}" alt="no image">
                      @endif
          </a>
          <figcaption>
            <h3>
              <a class="fancy-video" title="{{$video->title}}" href="{{$video->link}}" rel="">{{$video->title}}</a>
            </h3>
          </figcaption>
        </figure>
      </div>
    </div>
    
    @endforeach
  </div>
  
</div>
</div></div>
				
</div>
				
            </main>
@endsection
@extends('layouts.frontend.master')
@section('title')
<title>Tin tức</title>
@endsection

@section('menu')
<li><a href="{{URL::to('/')}}" target="_self">Trang chủ</a></li>
      <li><a  href="{{URL::to('/about-us')}}" target="_self">Giới thiệu</a></li>
      <li><a href="{{URL::to('/fields-of-operation')}}" target="_self">Lĩnh vực hoạt động</a></li>
      <li><a class="active" href="{{URL::to('/news')}}" target="_self">Tin tức</a></li>
      <li><a href="{{URL::to('/recruitment')}}" target="_self">Tuyển dụng</a></li>
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
        
            <li itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="http://www.tritri.org/tin-tuc" class="itemcrumb active" itemprop="url"><span itemprop="title">Tin tức</span></a></li>
        
    
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
      
       
        <h1 class="title-page">{{ $blog->title }}</h1>
       <time class="time-news">{{ Carbon\Carbon::parse($blog->created_at)->isoFormat('DD') }} {{ Carbon\Carbon::parse($blog->created_at)->isoFormat('MMM') }} {{ Carbon\Carbon::parse($blog->created_at)->isoFormat('GGGG') }}</time>
        
       <!--  <div class="share">
          <div class="face-like"><a class="fb-like fb_iframe_widget" data-href="http://www.tritri.org/tin-tuc/two-thirds-of-small-businesses-cant-spend-on-cybersecurity-study" data-send="false" data-layout="button_count" data-width="100" data-show-faces="false" fb-xfbml-state="rendered" fb-iframe-plugin-query="app_id=766305180482770&amp;container_width=0&amp;href=http%3A%2F%2Fwww.tritri.org%2Ftin-tuc%2Ftwo-thirds-of-small-businesses-cant-spend-on-cybersecurity-study&amp;layout=button_count&amp;locale=en_US&amp;sdk=joey&amp;send=false&amp;show_faces=false&amp;width=100"><span style="vertical-align: bottom; width: 90px; height: 28px;"><iframe name="f298b31fe7cdf4" width="100px" height="1000px" data-testid="fb:like Facebook Social Plugin" title="fb:like Facebook Social Plugin" frameborder="0" allowtransparency="true" allowfullscreen="true" scrolling="no" allow="encrypted-media" src="./Two-thirds of small businesses can&#39;t spend on cybersecurity_ study - Công ty Cổ phần Trí Tri_files/like.html" style="border: none; visibility: visible; width: 90px; height: 28px;" class=""></iframe></span></a></div>
          <div class="fb-share-button fb_iframe_widget" data-layout="button_count" fb-xfbml-state="rendered" fb-iframe-plugin-query="app_id=766305180482770&amp;container_width=0&amp;href=http%3A%2F%2Fwww.tritri.org%2Ftin-tuc&amp;layout=button_count&amp;locale=en_US&amp;sdk=joey"><span style="vertical-align: bottom; width: 83px; height: 20px;"><iframe name="f294e255df75998" width="1000px" height="1000px" data-testid="fb:share_button Facebook Social Plugin" title="fb:share_button Facebook Social Plugin" frameborder="0" allowtransparency="true" allowfullscreen="true" scrolling="no" allow="encrypted-media" src="./Two-thirds of small businesses can&#39;t spend on cybersecurity_ study - Công ty Cổ phần Trí Tri_files/share_button.html" style="border: none; visibility: visible; width: 83px; height: 20px;" class=""></iframe></span></div>
          <div class="tweet"><iframe id="twitter-widget-0" scrolling="no" frameborder="0" allowtransparency="true" allowfullscreen="true" class="twitter-share-button twitter-share-button-rendered twitter-tweet-button" style="position: static; visibility: visible; width: 60px; height: 20px;" title="Twitter Tweet Button" src="./Two-thirds of small businesses can&#39;t spend on cybersecurity_ study - Công ty Cổ phần Trí Tri_files/tweet_button.0edc1ef9f8b82d9b79c6115bda79f63f.vi.html" data-url="http://www.tritri.org/tin-tuc/two-thirds-of-small-businesses-cant-spend-on-cybersecurity-study"></iframe></div>
          <div class="google"><div id="___plusone_0" style="position: absolute; width: 450px; left: -10000px;"><iframe ng-non-bindable="" frameborder="0" hspace="0" marginheight="0" marginwidth="0" scrolling="no" style="position:absolute;top:-10000px;width:450px;margin:0px;border-style:none" tabindex="0" vspace="0" width="100%" id="I0_1616475242494" name="I0_1616475242494" src="./Two-thirds of small businesses can&#39;t spend on cybersecurity_ study - Công ty Cổ phần Trí Tri_files/fastbutton.html" data-gapiattached="true"></iframe></div><div class="g-plusone" data-size="medium" data-count="true" data-href="http://www.tritri.org/tin-tuc/two-thirds-of-small-businesses-cant-spend-on-cybersecurity-study" data-gapiscan="true" data-onload="true" data-gapistub="true"></div></div>
        </div> -->
        <div class="full-content">

          <img alt="" src="">

          @php echo html_entity_decode($blog->desc); @endphp
          <br>

          Tác giả: <strong ><b>{{ $blog->author }}</b></strong>

          <a href="{{ $blog->btn_link }}">{{ $blog->btn_link }} </a>
  </div>
      </div>



      <div class="col-xs-12 col-md-4 col-lg-3">
        <div class="news-other">
          <h3 class="title">Bài viết khác</h3>
          @foreach ($recent_posts as $recent_post)
          <div class="news-otherWrap">
            <div class="item-newsOther">
              <div class="thumb">
              

                  @if (!empty($recent_post->blog_image))

                      <a class="hv-zoom" href="{{ url('news/'.$recent_post->slug) }}"  target="_self">
                        <img src="{{ asset('uploads/img/blogs/'.$recent_post->blog_image) }}" alt="">
                      </a>
                  @else
                      <a class="hv-zoom" href="{{ url('news/'.$recent_post->slug) }}" target="_self">
                        <img src="{{ asset('uploads/img/dummy/no-image.jpg') }}" alt="">
                      </a>
                  @endif

              </div>
              <div class="content">
                <time class="time-news">{{ Carbon\Carbon::parse($recent_post->created_at)->isoFormat('DD') }} {{ Carbon\Carbon::parse($recent_post->created_at)->isoFormat('MMM') }} {{ Carbon\Carbon::parse($recent_post->created_at)->isoFormat('GGGG') }}</time>
                <h3>
                  <a href="{{ url('news/'.$recent_post->slug) }}" target="_self" title="">{{ $recent_post->title }}</a></h3>
              </div>

              
            </div>
  </div>
  @endforeach
        </div>
      </div>
    </div>
  </section>
</div>
  <!--   <div id="ctl00_mainContent_ctl00_ctl00_divPager" class="pages newsdetailpager">
        <div class="modulepager"><ul class="pagination">
			<li class="PagerCurrentPageCell active"><span class="SelectedPage" title="Đến trang 1">1</span> </li><li class="PagerOtherPageCells"><a class="ModulePager" href="http://www.tritri.org/tin-tuc?pagenumber=2" title="Đến trang 2">2</a> </li><li class="PagerOtherPageCells"><a class="ModulePager" href="http://www.tritri.org/tin-tuc?pagenumber=3" title="Đến trang 3">3</a> </li><li class="PagerOtherPageCells"><a class="ModulePager" href="http://www.tritri.org/tin-tuc?pagenumber=4" title="Đến trang 4">4</a> </li><li class="PagerOtherPageCells"><a class="ModulePager" href="http://www.tritri.org/tin-tuc?pagenumber=5" title="Đến trang 5">5</a> </li><li class="PagerOtherPageCells"><a class="ModulePager" href="http://www.tritri.org/tin-tuc?pagenumber=6" title="Đến trang 6">6</a> </li><li class="PagerOtherPageCells"><a class="ModulePager" href="http://www.tritri.org/tin-tuc?pagenumber=7" title="Đến trang 7">7</a> </li><li class="PagerOtherPageCells"><a class="ModulePager" href="http://www.tritri.org/tin-tuc?pagenumber=8" title="Đến trang 8">8</a> </li><li class="PagerOtherPageCells"><a class="ModulePager" href="http://www.tritri.org/tin-tuc?pagenumber=9" title="Đến trang 9">9</a> </li><li class="PagerOtherPageCells"><a class="ModulePager" href="http://www.tritri.org/tin-tuc?pagenumber=10" title="Đến trang 10">10</a> </li><li class="PagerSSCCells"><a class="ModulePager" href="http://www.tritri.org/tin-tuc?pagenumber=20" title="Đến trang 20">20</a> </li><li class="PagerOtherPageCells"><a class="ModulePager NextPage" href="http://www.tritri.org/tin-tuc?pagenumber=2" title="Chuyển đến trang 2">›</a> </li><li class="PagerOtherPageCells"><a class="ModulePager LastPage" href="http://www.tritri.org/tin-tuc?pagenumber=48" title="Trang cuối">»</a> </li>
		</ul></div>
    </div> -->
    

	</div></div></div>
				
</div>
				
            </main>
@endsection
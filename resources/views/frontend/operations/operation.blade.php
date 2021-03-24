@extends('layouts.frontend.master')
@section('title')

<title></title>
@endsection
@section('content')

 <div id="ctl00_divAlt1" class="altcontent1 cmszone">
	
                
                <div class="banner-pageWrap"><div class="Module Module-158"><div class="ModuleContent"><div class="banner-page">
  <div class="item">
    <img src="{{asset('assets/frontend/image/banner_page.png')}}" alt="">
  </div>
</div>
</div></div><div class="container"><div class="breadcrumb-wrap"><div class="title-bd"></div><div class="Module Module-151"><ol class="breadcrumb">
    
            <li itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="http://www.tritri.org/" class="itemcrumb" itemprop="url"><span itemprop="title">Trang chủ</span></a></li>
        
            <li itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="http://www.tritri.org/linh-vuc-hoat-dong" class="itemcrumb" itemprop="url"><span itemprop="title">Lĩnh vực hoạt động</span></a></li>
        
            <li itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="http://www.tritri.org/linh-vuc-hoat-dong/training-coaching" class="itemcrumb active" itemprop="url"><span itemprop="title"></span></a></li>
        
    
</ol></div></div></div></div>
            
</div>
            <main class="main">
                
				<div id="ctl00_divCenter" class="middle-fullwidth">
	
					
					<div class="container Module Module-162"><div class="ModuleContent"><div class="block-zoneFieldWork">
  <section class="fieldwork-news">
    <h2 class="title-page">Tin tức</h2>
    <div class="row flex flex-wrap">

     @foreach ($category as $cate)
      <div class="col-xs-12 col-sm-6 col-lg-4 item-newsWrap">
        <div class="item-news">
          <figure>
            <a class="hv-zoom" target="_self" href="http://www.tritri.org/linh-vuc-hoat-dong/training-coaching/tin-tuc-training-coaching/ma-tran-quan-tri-tuong-tac" title="Ma trận quản trị tương tác">
              <img src="" alt="Ma trận quản trị tương tác">
            </a>
            <figcaption>
              <time class="time-news">07.12.2020</time>
              <h3 class="title">
                <a target="_self" href="http://www.tritri.org/linh-vuc-hoat-dong/training-coaching/tin-tuc-training-coaching/ma-tran-quan-tri-tuong-tac" title="Ma trận quản trị tương tác">

                
                 {{ $cate->id}}
                
                </a> 
              </h3>
              <div class="brief">
                <div class="autoCutStr_120"></div>
              </div>
              <a class="btn-viewmore" target="_self" href="http://www.tritri.org/linh-vuc-hoat-dong/training-coaching/tin-tuc-training-coaching/ma-tran-quan-tri-tuong-tac" title="Ma trận quản trị tương tác">Xem thêm <i class="fa fa-angle-double-right" aria-hidden="true"></i></a>
            </figcaption>
          </figure>
        </div>
      </div>

  @endforeach
     
     
 
      
    </div>
  </section>
</div></div></div>


@endsection
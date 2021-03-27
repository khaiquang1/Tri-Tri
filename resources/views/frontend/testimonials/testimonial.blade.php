@extends('layouts.frontend.master')
@section('title')
<title>Ý kiến & Cảm nhận của khách hàng</title>
@endsection
@section('menu')
<li><a href="{{URL::to('/')}}" target="_self">Trang chủ</a></li>
      <li><a  href="{{URL::to('/about-us')}}" target="_self">Giới thiệu</a></li>
      <li><a href="{{URL::to('/fields-of-operation')}}" target="_self">Lĩnh vực hoạt động</a></li>
      <li><a  href="{{URL::to('/news')}}" target="_self">Tin tức</a></li>
      <li><a href="{{URL::to('/recruitment')}}" target="_self">Tuyển dụng</a></li>
      <li><a href="{{URL::to('/contact')}}" target="_blank">Liên hệ</a></li> 
@endsection
@section('content')

<div id="ctl00_divAlt1" class="altcontent1 cmszone">
	
                
                <!-- <div class="banner-pageWrap"> --><div class="Module Module-164"><div class="ModuleContent"><div class="banner-page">
  <div class="item">
    <img src="{{asset('assets/frontend/image/banner_page_ykcn.png')}}" alt="">
  </div>
</div>
</div></div><div class="container"><div class="breadcrumb-wrap"><div class="title-bd"></div><div class="Module Module-151"><ol class="breadcrumb">
    
            <li itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="http://www.tritri.org/" class="itemcrumb" itemprop="url"><span itemprop="title">Trang chủ</span></a></li>
        
            <li itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="http://www.tritri.org/y-kien-cam-nhan-cua-khach-hang" class="itemcrumb active" itemprop="url"><span itemprop="title">Ý kiến &amp; Cảm nhận của khách hàng</span></a></li>
        
    
</ol></div></div></div><!-- </div> -->
            
</div>
            <main class="main">
                
				<div id="ctl00_divCenter" class="middle-fullwidth">
	
					
					<div class="Module Module-145"><div class="ModuleContent"><div class="container">
  <section class="block-testimonialList">
    <h1 class="title-page">Ý kiến &amp; Cảm nhận của khách hàng</h1>
    <div class="testimonial-wrap">
    	@foreach ($projects as $project)
      <div class="item-tt">
        <div class="content">
        	{{$project->desc}}
        </div>
    
      </div>
  		@endforeach

    </div>
  </section>
</div>
<!-- <div id="ctl00_mainContent_ctl00_ctl00_divPager" class="pages newspager">
    <div class="modulepager"><ul class="pagination">
		<li class="PagerCurrentPageCell active"><span class="SelectedPage" title="Đến trang 1">1</span> </li><li class="PagerOtherPageCells"><a class="ModulePager" href="http://www.tritri.org/y-kien-cam-nhan-cua-khach-hang?pagenumber=2" title="Đến trang 2">2</a> </li><li class="PagerOtherPageCells"><a class="ModulePager NextPage" href="http://www.tritri.org/y-kien-cam-nhan-cua-khach-hang?pagenumber=2" title="Chuyển đến trang 2">›</a> </li><li class="PagerOtherPageCells"><a class="ModulePager LastPage" href="http://www.tritri.org/y-kien-cam-nhan-cua-khach-hang?pagenumber=2" title="Trang cuối">»</a> </li>
	</ul></div>
</div> --></div></div>
				
</div>
				
            </main>
@endsection
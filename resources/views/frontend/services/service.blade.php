@extends('layouts.frontend.master')
@section('title')
<title>Lĩnh vực hoạt động - Công ty cổ phần Trí Tri</title>
@endsection


@section('menu')
<li><a href="{{URL::to('/')}}" target="_self">Trang chủ</a></li>
      <li><a  href="{{URL::to('/about-us')}}" target="_self">Giới thiệu</a></li>
      <li><a class="active" href="{{URL::to('/fields-of-operation')}}" target="_self">Lĩnh vực hoạt động</a></li>
      <li><a  href="{{URL::to('/news')}}" target="_self">Tin tức</a></li>
      <li><a href="{{URL::to('/contact')}}" target="_self">Tuyển dụng</a></li>
      <li><a href="{{URL::to('/contact')}}" target="_blank">Liên hệ</a></li> 
@endsection
@section('content')
	<div id="ctl00_divAlt1" class="altcontent1 cmszone">
	
                
                <div class="banner-pageWrap"><div class="Module Module-157"><div class="ModuleContent"><div class="banner-page">
  <div class="item">
    <img src="{{asset('assets/frontend/image/banner_page_lvhd.png')}}" alt="">
  </div>
</div>
</div></div><div class="container"><div class="breadcrumb-wrap"><div class="title-bd"></div><div class="Module Module-151"><ol class="breadcrumb">
    
            <li itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="{{URL::to('/')}}" class="itemcrumb" itemprop="url"><span itemprop="title">Trang chủ</span></a></li>
        
            <li itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="http://www.tritri.org/linh-vuc-hoat-dong" class="itemcrumb active" itemprop="url"><span itemprop="title">Lĩnh vực hoạt động</span></a></li>
        
    
</ol></div></div></div></div>
            
</div>
            <main class="main">
                
				<div id="ctl00_divCenter" class="middle-fullwidth">
	
					
					<div class="container Module Module-146"><div class="ModuleContent"><div class="group-cate">
  <h2 class="title-group">Lĩnh vực hoạt động</h2>
  <div class="row flex flex-wrap">
    
    <div class="col-xs-12 col-sm-6 col-lg-3 item-wrap">
      @foreach($categories as $cate)
      <div class="item"><figure><!-- <a class="" href="" target="_self"> <img src="./Lĩnh vực hoạt động - Công ty Cổ phần Trí Tri_files/cm_group1.png" alt="Consulting"></a> --><figcaption><h1><!-- <a href="#" target="_self"> -->{{$cate->category_name}}<!-- </a> --></h1></figcaption></figure></div>
    @endforeach

    </div>
   
   
   
    
  
   
  </div>
</div></div></div>
				
</div>
				
            </main>

@endsection
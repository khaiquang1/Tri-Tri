<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Admin\Category;
use Mews\Purifier\Facades\Purifier;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\File;
use DB;
use Illuminate\Support\Facades\Redirect;

class VideoController extends Controller
{
    public function index(){
    	 $language = getLanguage();
    	$categories = Category::where('language_id', $language->id)->get();
    	$videos = DB::table('videos')->orderby('id','desc')->get();

    	return view('admin.counter.video', compact('categories','videos'));
    }


    public function store(Request $request){

    	$language = getLanguage();
    	$categories = Category::where('language_id', $language->id)->get();
   

    	$data = array();
    	$data['title']= $request->title_video;
    	$data['link']= $request->link_video;
    	$data['order']= $request->order;
    	$data['category_id']= $request->category_id;
   

    		$get_image = $request->file('video_image');
    		$get_name_image = $get_image->getClientOriginalName();
    		$name_image = current(explode('.', $get_name_image));
    		$new_image = $name_image.rand(0,99).'.'.$get_image->getClientOriginalExtension();
    		$get_image->move('uploads/img/videos/',$new_image);
    		$data['image'] = $new_image;
    	
        DB::table('videos')->insert($data);
        $videos = DB::table('videos')->orderby('id','desc')->get();

    	return view('admin.counter.video', compact('categories','videos'));
    }


    public function delete_video($id)
    {
        
         DB::table('videos')->where('id',$id)->delete();
         $language = getLanguage();
        $categories = Category::where('language_id', $language->id)->get();
        $videos = DB::table('videos')->orderby('id','desc')->get();

        return view('admin.counter.video', compact('categories','videos'));
    }
           
    
}

<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\Admin\About;
use App\Models\Admin\Blog;
use App\Models\Admin\BlogSection;
use App\Models\Admin\ColorOption;
use App\Models\Admin\Contact;
use App\Models\Admin\ContactSection;
use App\Models\Admin\Counter;
use App\Models\Admin\Faq;
use App\Models\Admin\FaqSection;
use App\Models\Admin\Feature;
use App\Models\Admin\GoogleAnalytic;
use App\Models\Admin\Page;
use App\Models\Admin\Price;
use App\Models\Admin\Project;
use App\Models\Admin\ProjectSection;
use App\Models\Admin\Service;
use App\Models\Admin\ServiceSection;
use App\Models\Admin\SiteInfo;
use App\Models\Admin\Skill;
use App\Models\Admin\SkillSection;
use App\Models\Admin\Slider;
use App\Models\Admin\Social;
use App\Models\Admin\Sponsor;
use App\Models\Admin\Team;
use App\Models\Admin\TeamSection;
use App\Models\Admin\Testimonial;
use App\Models\Admin\TestimonialSection;
use App\Models\Admin\Category;
use DB;

class HomeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        // Get site language
        $language = getSiteLanguage();

        // Retrieve models
        $site_info = SiteInfo::where('language_id', $language->id)->first();
        $google_analytic = GoogleAnalytic::first();
        $socials = Social::where('status', 1)->get();
        $color_option = ColorOption::first();
        $sliders = Slider::where('language_id', $language->id)->orderBy('order', 'asc')->get();
        $features = Feature::where('language_id', $language->id)->orderBy('order', 'asc')->take(1)->get();
        $about = About::where('language_id', $language->id)->first();
        $counters = Counter::where('language_id', $language->id)->orderBy('order', 'asc')->get();
        $service_section = ServiceSection::where('language_id', $language->id)->first();
        $services = Service::where('language_id', $language->id)->orderBy('order', 'asc')->get();
        $team_section = TeamSection::where('language_id', $language->id)->first();
        $teams = Team::where('language_id', $language->id)->orderBy('order', 'asc')->get();
        $skill_section = SkillSection::where('language_id', $language->id)->first();
        $skills = Skill::where('language_id', $language->id)->orderBy('order', 'asc')->get();
        $project_section = ProjectSection::where('language_id', $language->id)->first();
        $projects = Project::where('language_id', $language->id)->orderBy('order', 'asc')->take(3)->get();
        $sponsors = Sponsor::orderBy('order', 'asc')->get();
        $prices = Price::where('language_id', $language->id)->orderBy('order', 'asc')->get();
        $testimonial_section = TestimonialSection::where('language_id', $language->id)->first();
        $testimonials = Testimonial::where('language_id', $language->id)->orderBy('order', 'asc')->get();
        $faq_section = FaqSection::where('language_id', $language->id)->first();
        $faqs = Faq::where('language_id', $language->id)->orderBy('order', 'asc')->get();
        $blog_section = BlogSection::where('language_id', $language->id)->first();
        $recent_posts = Blog::join("categories", 'categories.id', '=', 'blogs.category_id')
            ->where('categories.language_id', $language->id)
            ->where('categories.status', 1)
            ->where('blogs.status', 1)
            ->orderBy('blogs.id', 'desc')
            // ->take(4)
            ->get();
        $categories = Category::where('language_id', $language->id)->orderBy('order', 'asc')->get();
        $new_posts = Blog::join("categories", 'categories.id', '=', 'blogs.category_id')
            ->where('categories.language_id', $language->id)
            ->orderBy('blogs.id', 'desc')
            ->take(3)
            ->get();  
        $videos = DB::table('videos')->take(8)->get(); 

        $contact_section = ContactSection::where('language_id', $language->id)->first();
        $contacts = Contact::where('language_id', $language->id)->orderBy('order', 'asc')->get();
        $pages = Page::where('language_id', $language->id)->where('status', 1)->orderBy('order', 'asc')->get();



        return view('frontend.home.index', compact( 'site_info', 'google_analytic',
            'socials', 'sliders', 'features', 'about', 'counters', 'service_section', 'services',
            'team_section', 'teams', 'skill_section', 'skills', 'project_section', 'projects',
            'sponsors', 'testimonial_section', 'testimonials', 'blog_section', 'recent_posts',
            'faq_section', 'faqs', 'prices', 'contact_section', 'contacts', 'pages', 'color_option', 'new_posts','categories', 'videos'));
    }

    public function about_us(){
        $language = getSiteLanguage();
        $about = About::where('language_id', $language->id)->first();
        return view('frontend.about.about_us', compact('about'));
    }

    public function services(){
         $language = getSiteLanguage();
         $categories = Category::where('language_id', $language->id)->orderBy('order', 'asc')->get();
        return view('frontend.services.service', compact('categories'));
    }

    public function testimonials(){
        $language = getSiteLanguage();
        $projects = Project::where('language_id', $language->id)->orderBy('order', 'asc')->get();
        return view('frontend.testimonials.testimonial', compact('projects'));
    }

    public function news(){
         $language = getSiteLanguage();

         $recent_posts = Blog::join("categories", 'categories.id', '=', 'blogs.category_id')
            ->where('categories.language_id', $language->id)
            ->where('categories.status', 1)
            ->where('blogs.status', 1)
            ->orderBy('blogs.id', 'desc')
            ->take(3)
            ->get();
        return view('frontend.news.new', compact('recent_posts'));
    }

    public function news_list(){
        $language = getSiteLanguage();
        $news = Blog::join("categories", 'categories.id', '=', 'blogs.category_id')
            ->where('categories.language_id', $language->id)
            ->orderBy('blogs.id', 'desc')
            ->get();
        return view('frontend.news.list_news',compact('news'));
    }

    public function new_leader($id){
        $language = getSiteLanguage();
         // $features = Feature::where('language_id', $language->id)->orderBy('order', 'asc')->take(1)->get();
         $new_leaders = Feature::where('features.id', '=', $id)
            ->firstOrFail();

        $recent_posts = Blog::join("categories", 'categories.id', '=', 'blogs.category_id')
            ->where('categories.language_id', $language->id)

            ->orderBy('blogs.id', 'desc')
            ->take(5)
            ->get();

        return view('frontend.news.new_leader', compact('new_leaders','recent_posts'));
    }
    public function contact_us(){
        $language = getSiteLanguage();

        return view('frontend.contact.contact');
    }


    public function recruitments(){
        $language = getSiteLanguage();
        $pages = Page::where('language_id', $language->id)->where('status', 1)->orderBy('order', 'asc')->take(1)->get();
       
        return view('frontend.page.recruitment', compact('pages'));
    }


    public function field($id){

        $language = getSiteLanguage();
        $videos = DB::table('videos')->where('category_id',$id)->get(); 
        $news = DB::table('blogs')
        ->where('category_id',$id)->get();
        $categories = Category::where('language_id', $language->id)->where('id',$id)->get();
        // $categories = DB::table('categories')->where('id',$id)->get();
        return view('frontend.fields.field', compact('videos', 'news', 'categories'));
    }

   
}

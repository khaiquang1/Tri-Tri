<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Admin\Team;
use App\Models\Admin\TeamSection;
use App\Models\Admin\Category;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\File;
use DB;

class TeamController extends Controller
{
    public function create()
    {
       // Retrieving a model
        $language = getLanguage();
        $teams = Team::where('language_id', $language->id)->orderBy('id', 'desc')->get();
        $team_section = TeamSection::where('language_id', $language->id)->first();
        $categories = Category::where('language_id', $language->id)->get();

        return view('admin.team.create', compact('teams', 'team_section', 'categories'));
    }


    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        // Form validation
       $data = array();
       $data['category_id'] = $request->category_id;
       $data['desc'] = $request->desc;
       DB::table('about_bus')->insert($data);



       $categories = DB::table('categories')->get();
       $BU = DB::table('about_bus')
       ->join('categories', 'categories.id', '=', 'about_bus.category_id')
       ->get();
       return view('admin.team.create', compact('BU', 'categories'));  
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        // Retrieving models
        $team = Team::findOrFail($id);

        return view('admin.team.edit', compact('team'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        // Form validation
        $request->validate([
            'team_image' => 'mimes:svg,png,jpeg,jpg|max:2048',
            'order' => 'required|integer',
        ]);

        // Get model
        $team = Team::find($id);

        // Get All Request
        $input = $request->all();

        if($request->hasFile('team_image')){

            // Get image file
            $team_image = $request->file('team_image');

            // Folder path
            $folder ='uploads/img/teams/';

            // Make image name
            $team_image_name =  time().'-'.$team_image->getClientOriginalName();

            // Delete Image
            File::delete(public_path($folder.$team->team_image));

            // Upload image
            $team_image->move($folder, $team_image_name);

            // Set input
            $input['team_image'] = $team_image_name;

        }

        // Record to database
        Team::find($id)->update($input);

        return redirect()->route('team.create')
            ->with('success', 'content.updated_successfully');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        // Retrieve a model
        $team = Team::find($id);

        // Folder path
        $folder = 'uploads/img/teams/';

        // Delete Image
        File::delete(public_path($folder.$team->team_image));

        // Delete record
        $team->delete();

        return redirect()->route('team.create')
            ->with('success', 'content.deleted_successfully');
    }

    public function delete_bu($id)
    {
         DB::table('about_bus')->where('category_id',$id)->delete();

            $categories = DB::table('categories')->get();
            $BU = DB::table('about_bus')
            ->join('categories', 'categories.id', '=', 'about_bus.category_id')
            ->get();
       return view('admin.team.create', compact('BU', 'categories'));  
    }
           
}

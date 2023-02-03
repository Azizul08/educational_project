<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Student_Info;
use DB;

class DashboardController extends Controller
{
    //

    public function contact(){
    	return view ('contact');
    }

    public function BlogArchive(){

        return view ('blog-archive');
    }

    public function BlogSingle(){

        return view ('blog-single');
    }

    public function CourseArchive(){

        return view ('course');
    }

    public function CourseDetail(){

        return view ('course-detail');
    }

    public function Gallery(){

        return view ('gallery');
    }


     public function StudentAdd(){

        return view ('student_add');
    }

    public function postStudentAdd(Request $request){

    	$request->validate([
            'name' => 'required',
            'fatherName' => 'required',
            'studentId' => 'required',
            'email' => 'required'
            
        ]);

        $student_info = new Student_Info();
            $student_info->name = $request->name;
            $student_info->fatherName = $request->fatherName;
            $student_info->studentId = $request->studentId;
            $student_info->email = $request->email;
            $student_info->subject = $request->subject;
            $student_info->session = $request->session;
            $student_info->save();

            // $request->session()->flash('add','Added successfully');
            // return redirect('/student-view');

    	return view ('student_add');
    }

    public function StudentView(Request $request){

    	$student_view=DB::table('student__infos')->get();

        $student_search=Student_Info::where([
            ['name','!=',Null],
            [function($query)use($request){
                if(($term=$request->term)){
                    $query->orWhere('name','LIKE','%'.$term.'%')->get();
                }
            }]
        ])
        ->orderBy("id","desc")
        ->paginate(10);

    	return view ('student_view',compact('student_view','student_search'))->with('i',(request()->input('page',1)-1)*5);


    }
}

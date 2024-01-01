<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Letter;
use Illuminate\Http\Request;
use Illuminate\support\Facades\Auth;
use Illuminate\support\Facades\Redirect;
use Illuminate\support\Facades\Redis;

class LetterController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $dataletters = Letter::paginate(10);
        $activeLetter = 'active';
        return view('dashboard', compact('dataletters', 'activeLetter'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //get Category
        $category = Category::all();

        return view('letter.form_letter', compact('category'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
            'nameletter' => 'required|min:3',
            'fileletter' => 'required|mines:pdf,doc,docx'
        ]);


        $data = new letter();

        $data->nameletter = $request->nameletter;
        $data->descriptionletter = $request->descriptionletter;
        $data->typeletter = $request->typeletter;
        $data->categories_id = $request->category_id;
        $data->user_id = Auth::user()->id;

        //handle file upload
        if($request->file('fileletter')){
            $file= $request->file('fileletter');
            $filename = hexdec(uniqid()).'.'.$file->getClientOriginalExtension();
            $file->move(public_path('upload/letter'), $filename);

            $data->fileletter = $filename;
        }

        if($request->file('coverletter')){
            $file= $request->file('coverletter');
            $filename = hexdec(uniqid()).'.'.$file->getClientOriginalExtension();
            $file->move(public_path('upload/cover'), $filename);

             $data->coverletter = $filename;
        }

        $data->save();

        return redirect()->back()->with('success', 'Data Berhasil disimpan');

    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //get data
        $edit = letter::find($id);

        $activeLetter = 'active';

        $category = Category::all();

        return view('letter.form_editletter', compact('category', 'edit', 'activeLetter'));

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
         $request->validate([
            'nameletter' => 'required|min:3'
        ]);


        $data = Letter::find($id);

        $data->nameletter = $request->nameletter;
        $data->descriptionletter = $request->descriptionletter;
        $data->typeletter = $request->typeletter;
        $data->categories_id = $request->category_id;
        $data->user_id = Auth::user()->id;

        //handle file upload
        if($request->file('fileletter')){
            //cek file exit
            if($data->fileletter != null){
                //remove old file
                @unlink(public_path('upload/letter/'.$data->fileletter));
            }

            $file= $request->file('fileletter');
            $filename = hexdec(uniqid()).'.'.$file->getClientOriginalExtension();
            $file->move(public_path('upload/letter'), $filename);

            $data->fileletter = $filename;
        }

        if($request->file('coverletter')){
            //cek file exit
            if($data->coverletter != null){
                //remove old file
                @unlink(public_path('upload/cover/'.$data->coverletter));
            }

            $file= $request->file('coverletter');
            $filename = hexdec(uniqid()).'.'.$file->getClientOriginalExtension();
            $file->move(public_path('upload/cover'), $filename);

             $data->coverletter = $filename;
        }

        $data->update();

        return redirect()->back()->with('success', 'Data Berhasil diperbarui');

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $letter = letter::find($id);
        $letter->delete();

        return redirect()->back()->with('success', 'Data Berhasil Dihapus');
    }
}

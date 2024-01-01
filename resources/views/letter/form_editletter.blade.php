@extends('layouts.admin_master')
@section('admincontent')

     <!-- Page Heading -->
                    <div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <h1 class="h3 mb-0 text-gray-800">Letter</h1>
                        <a href="{{route('letter.index')}}" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
                                class="fas fa-arrow-left fa-sm text-white-50"></i>kembali</a>
                    </div>

                    <!-- Content Row -->
                    <div class="row">
                    	<div class="col-md-12">
                        @include('notif')
                    		 <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">

                            <h6 class="m-0 font-weight-bold text-primary">Edit letter</h6>
                        </div>
                        <div class="card-body">
                            <form class="form" method="post" action="{{route('letter.update', $edit->id)}}"enctype="multipart/form-data"> 
                                @method('PUT')
                                @csrf
                                <div class="form-group">
                                    <label class="label">Name letter</label>
                                    <input type="text" name="nameletter" placeholder="enter name letter" class="form-control" value="{{$edit->nameletter}}">
                                </div>

                                 <div class="form-group">
                                    <label class="label">Type letter</label> <br>
                                    <input type="radio" name="typeletter" value="formal" <?php if ($edit->typeletter=='formal') echo "checked"; ?>> Formal
                                     <input type="radio" name="typeletter" value="nonformal" <?php if ($edit->typeletter=='nonformal') echo "checked"; ?>> Non Formal
                                </div>

                                <div class="form-group">
                                    <label class="label">File Letter
                                        @if($edit->fileletter != null) {{$edit->fileletter}} @endif
                                    </label>
                                    <input type="file" name="fileletter" class="form-control">
                                </div>

                                 <div class="form-group">
                                    <label class="label">Cover Letter
                                        @if($edit->coverletter != null) {{$edit->coverletter}} @endif
                                    </label>
                                    <input type="file" name="coverletter" class="form-control">
                                </div>

                                 <div class="form-group">
                                    <label class="label">Category</label>
                                    <select name="category_id" class="form-control">
                                        @foreach($category as $categ)
                                        <option value="{{ $categ->id }}" <?php if($categ->id == $edit->categories_id) echo "selected"; ?>> {{$categ->namecategory}}</option>
                                        @endforeach
                                    </select>

                                </div>

                                 <div class="form-group">
                                    <label class="label">Description</label>
                                    <textarea name="descriptionletter" class="form-control" rows="4"> {{$edit->descriptionletter}}</textarea>
                                </div>

                                <button class="btn btn-info" type="submit"> Update</button>

                            </form>
                            
                            </div>
                      </div>
                   </div>

 </div>
@endsection
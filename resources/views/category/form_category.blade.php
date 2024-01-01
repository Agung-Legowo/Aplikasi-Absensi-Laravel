@extends('layouts.admin_master')
@section('admincontent')

     <!-- Page Heading -->
                    <div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <h1 class="h3 mb-0 text-gray-800">Category</h1>
                        <a href="{{route('category.index')}}" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
                                class="fas fa-arrow-left fa-sm text-white-50"></i>kembali</a>
                    </div>

                    <!-- Content Row -->
                    <div class="row">
                    	<div class="col-md-12">
                        @include('notif')
                    		 <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">

                            <h6 class="m-0 font-weight-bold text-primary">Tambah Category</h6>
                        </div>
                        <div class="card-body">
                            <form class="form" method="post" action="{{route('category.store')}}"> 
                                @csrf
                                <div class="form-group">
                                    <label class="label">Name Category</label>
                                    <input type="text" name="namecategory" placeholder="enter name category" class="form-control">
                                </div>

                                 <div class="form-group">
                                    <label class="label">Description</label>
                                    <textarea name="description" class="form-control" rows="4">
                                    </textarea>
                                </div>

                                <button class="btn btn-info" type="submit"> Simpan</button>

                            </form>
                            
                            </div>
                      </div>
                   </div>

 </div>
@endsection
@extends('layouts.admin_master')
@section('admincontent')

     <!-- Page Heading -->
                    <div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <h1 class="h3 mb-0 text-gray-800">Category</h1>
                        <a href="{{route('category.create')}}" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
                                class="fas fa-download fa-sm text-white-50"></i> Tambah </a>
                    </div>

                    <!-- Content Row -->
                    <div class="row">
                    	<div class="col-md-12">

                    @include('notif')
                    		 <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">

                            <h6 class="m-0 font-weight-bold text-primary">Data Category</h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                        	<th>No</th>
                                            <th>Name</th>
                                            <th>Description</th>
                                            <th width="200px"></th>
                                        </tr>
                                    </thead>

                                    <tbody>
                                    	
                                    	@foreach($datacategory as $index => $row)
                                        <tr>
                                            <th>{{ $index + $datacategory->firstItem() }}</th>
                                            <td>{{ $row->namecategory}}</td>
                                            <td>{{ $row->description}}</td>
                                            <td class="d-flex"> 
                                            <a href="{{ route('category.edit', $row->id)}}">
                                                    <button class="btn btn-warning btn-sm">
                                                    <i class="fa fa-edit"></i> Edit
                                                </button>
                                                </a>
                                            &nbsp;
                                            <form method="post" action="{{route('category.destroy', $row->id)}}"> 
                                            @csrf
                                            @method('DELETE')
                                            <button type="submit" onclick="return confirm('ingin delete?')" class="btn btn-danger btn-sm">
                                                    <i class="fa fa-trash"></i> Delete
                                                </button>
                                            </form>
                                            	
                                            </td>
                                        </tr>
                                        @endforeach
                                      </tbody>
                                  </table>
                              </div>
                          </div>
                          {{ $datacategory->links('pagination::bootstrap-4') }}
                      </div>
                   </div>

 </div>
@endsection
@extends('layouts.master')

@section('content')
	<div class="">
	  <div class="box">
			<div class="box-header">
			  <h3 class="box-title">List Member</h3>
				<div class="box-tools">
				</div>
				<form action="{{ url('query')}}" method="GET">
				    <div class="input-group input-group-sm" style="width: 150px;">
				      <input type="text" name="cari" id="cari" class="form-control pull-right" placeholder="Search">

				      <div class="input-group-btn">
				        <button type="submit" class="btn btn-default"><i class="fa fa-search"></i></button>
				      </div>
				    </div>

			  	  </form>
				</div>
			  	
			</div>
			<!-- /.box-header -->
			<div class="box-body table-responsive no-padding">
			  	<table class="table table-responsive">
				  	<thead>
					    <tr>
						<th>No</th>
					      <th>ID</th>
					      <th>Nama</th>
					      <th>Alamat</th>
					      <th>Telepon</th>
					      <th>Email</th>
						  <th>Image</th>
						  <th style="text-align: center">Modify</th>
					    </tr>
				  	</thead>
				    <tbody>
				    	@foreach($hasil as $id => $list)
						    <tr @if ($loop->first) class="active" @endif>
							<td>{{ $loop->index + $hasil->firstItem() }}</td>
						    	<td>{{$list->id}}</td>
							    <td>{{$list->name}}</td>
							    <td>{{$list->alamat}}</td>
							    <td>{{$list->telepon}}</td>
							    <td>{{$list->email}}</td>
								<td>
  @if($list->image)
    <img src="{{ asset('upload/profile/' . $list->image) }}" alt="Gambar {{ $list->name }}" style="max-width: 100px; height: auto;">
  @else
    <span>Tidak ada gambar</span>
  @endif
</td>
								<td style="text-align: right">
							      	<button class="btn btn-info" data-toggle="modal" 
							      			data-fid="{{$list->id}}" 
							      			data-fname="{{$list->name}}"
							      			data-falamat="{{$list->alamat}}"
							      			data-ftelepon="{{$list->telepon}}"
							      			data-femail="{{$list->email}}"
							      			data-fimage="{{$list->image}}"
											  data-target="#editModal">
							      		Edit
							      	</button>
							      			/ 
							      	<!-- Tombol delete membuka modal sesuai ID user -->
							      	<button class="btn btn-danger" data-fid="{{$list->id}}" data-toggle="modal" data-target="#deleteModal">
							      		Delete
							      	</button> 
							  	</td>
							
							</tr>

					    @endforeach
					</tbody>
				</table>

			</div>
		<!-- /.box-body -->
			<div class="box-footer clearfix">
				<!-- Tambah Film -->
				<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#memberModal">
				  Add New Member
				</button>
	            <ul class="pagination pagination-sm no-margin pull-right">
	            	{{ $hasil->links() }}    
	            </ul>
	        </div>
		</div>
	</div>
	<!-- Button trigger modal -->
	<!-- Modal -->
	<div class="modal fade" id="memberModal" tabindex="-1" role="dialog" aria-labelledby="memberModal">
	  <div class="modal-dialog" role="document">
	    <div class="modal-content">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	        <h4 class="modal-title" id="memberModal">New Member</h4>
	      </div>
	      <form role="form" action="{{route('admin.store')}}" method="post" enctype="multipart/form-data" >
	      	{{csrf_field()}}
	      	<div class="modal-body">
	        	@include('admin-film.formuser')

	      	</div>
	      	<div class="modal-footer">
	        	<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
	        	<button type="submit" class="btn btn-primary">Save</button>
	      	</div>
	      </form>
	    </div>
	  </div>
	</div>
	<!-- Edit Film -->
	<div class="modal fade" id="editModal" tabindex="-1" role="dialog" aria-labelledby="editModal">
	  <div class="modal-dialog" role="document">
	    <div class="modal-content">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	        <h4 class="modal-title" id="memberModal">Edit Member</h4>
	      </div>
	      <form action="{{route('admin.update','test')}}" method="post" enctype="multipart/form-data">
	      	{{method_field('patch')}}
	      	{{csrf_field()}}
	      	<div class="modal-body">
	      		<input type="hidden" name="id" id="id" value="">
	        	
				@include('admin-film.formuser') 

	      	</div>

	      	<div class="modal-footer">
	        	<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
	        	<button type="submit" class="btn btn-primary">Save Changes</button>
	      	</div>
	      </form>
	    </div>
	  </div>
	</div>

	<!-- Delete Film -->
<!-- Modal Delete Khusus User Ini -->
<div class="modal modal-danger fade" id="deleteModal" tabindex="-1" role="dialog" aria-labelledby="deleteModalLabel">	  <div class="modal-dialog" role="document">
	    <div class="modal-content">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	        <h4 class="text-center modal-title" id="deleteModalLabel">Delete Confirmation</h4>
	      </div>
	      <form action="{{route('admin.destroy','test')}}" method="post">
	      	{{method_field('delete')}}
	      	{{csrf_field()}}
	      	<div class="modal-body">
			<p class="text-center">Yakin ingin menghapus user <strong id="deleteUserName"></strong>?</p>	      		<input type="hidden" name="id" id="deleteUserId" value="">
	        	
	      	</div>
	      	<div class="modal-footer">
	        	<button type="button" class="btn btn-success" data-dismiss="modal">Cancel</button>
	        	<button type="submit" class="btn btn-warning">Yes</button>
	      	</div>
	      </form>
	    </div>
	  </div>
	</div>

@endsection



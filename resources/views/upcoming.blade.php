@extends('layouts.app')


@section('content')

<!-- upcoming Grid -->
<div class="bg-light" style="margin-top: 50px">
  <br>
  <br>
  <h3 class="text-center">Upcoming</h3>
  <br>
</div>
<div class="bg-light" id="portfolio">
  <div class="container">
    <div class="row">
        @foreach($upcoming as $listUpcoming) 
          <div class="col-md-4 col-sm-6 portfolio-item">
             <a href="/upcoming/{{$listUpcoming->id_upcoming}}"> <img class="img-fluid img-thumbnail rounded"  src="{{asset('upload/images/'.$listUpcoming->image) }}" alt="" style="width: 100%; height: 350px;">
            </a>
              <div class="portfolio-caption">
              <h4>{{($listUpcoming->nama_film)}}</h4>
              <br>
				<p style="float: left;color: red;font-weight: bold;">{{($listUpcoming->tahun_produksi)}}</p>
				<p style="float: right;color: red;font-weight: bold;">{{($listUpcoming->kategori->kategori)}}</p>
</div>
          </div>
        @endforeach
    </div>
  </div>
</div>
  <div class="container">
    <div class="row">
      <div class="col-md-4">
      </div>
      <div class="col-xs-4 ml-auto mr-auto">
        <ul class="pagination pagination-md">
            {{ $upcoming->links() }}    
        </ul>
      </div>
      <div class="col-md-4">
      </div>
    </div>
  </div> 

<style type="text/css">
h3 {
  color: orange;
}
</style>
@endsection
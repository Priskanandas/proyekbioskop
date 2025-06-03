
@section('content')

<!-- Movie Grid -->
<div class="bg-light" style="margin-top: 50px">
  <br>
  <br>
  <h3 class="text-center">Now Playing</h3>
  <br>
</div>
<div class="bg-light" id="portfolio">
  <div class="container">
    <div class="row">
        @foreach($film as $listFilm) 
          <div class="col-md-4 col-sm-6 portfolio-item">
             <a href="/film/{{$listFilm->id_film}}"> <img class="img-fluid img-thumbnail rounded"  src="{{asset('upload/images/'.$listFilm->image) }}" alt="" style="width: 100%; height: 200px;">
            </a>
              <div class="portfolio-caption">
              <h4>{{($listFilm->nama_film)}}</h4>
              <br>
              <div class="mid-2 agile_mid_2_home">
				<p style="float: left;color: red;font-weight: bold;">{{($listFilm->tahun_produksi)}}</p>
				<p style="float: right;color: red;font-weight: bold;">{{($listFilm->kategori->kategori)}}</p>
				<div class="clearfix"></div>
              <a class="btn btn-outline-success btn-sm" role="button" href="/film/{{$listFilm->id_film}}">Buy Ticket</a>
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
            {{ $film->links() }}    
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
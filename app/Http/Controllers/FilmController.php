<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Input;
use \App\Film;
use \File;
use \Storage;
use \App\tb_genre_film;

class FilmController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $listFilm = \App\Film::paginate(7);
        return view('admin-film.index',compact('listFilm'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $image = $request->file('image');
        $filename = $image->getClientOriginalName();
        $image->move('upload\images', $filename, file_get_contents($request->file('image')->getRealPath()));

        $film = new Film;

        $film -> nama_film = $request->get('nama_film');
        $film->tahun_produksi = $request->get('tahun_produksi');
        $film->direksi = $request->get('direksi');
        $film->pemain = $request->get('pemain');
        $film->sinopsis = $request->get('sinopsis');
        $film->bahasa = $request->get('bahasa');
        $film->image = $filename;
        $film->id_genre_film = $request->get('id_genre_film');
        $film->id_kategori = $request->get('id_kategori');
        $film->status = 'on'; // ⬅️ tambahkan ini
        $film->save();
//['nama_film','tahun_produksi','direksi','pemain','sinopsis','bahasa','negara','id_genre_film','id_kategori'];
        //Film::create($request->all());
        //dd($request->all());
        return back();
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
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request)
    {
        //dd($request->all());

        $image = $request->file('image');
        if (empty($image)) {
            $film = Film::FindOrFail($request->id_film);
        
            $film -> nama_film = $request->get('nama_film');
            $film->tahun_produksi = $request->get('tahun_produksi');
            $film->direksi = $request->get('direksi');
            $film->pemain = $request->get('pemain');
            $film->sinopsis = $request->get('sinopsis');
            $film->bahasa = $request->get('bahasa');
            $film->id_genre_film = $request->get('id_genre_film');
            $film->id_kategori = $request->get('id_kategori');
            $film->status = $request->get('status'); // ⬅️ tambahkan ini
            $film->save();

            //$film_id->update($request->all());
            return back();
        } else {
            $filename = $image->getClientOriginalName();
            $image->move('upload\images', $filename, file_get_contents($request->file('image')->getRealPath()));

            $film = Film::FindOrFail($request->id_film);
        
            $film -> nama_film = $request->get('nama_film');
            $film->tahun_produksi = $request->get('tahun_produksi');
            $film->direksi = $request->get('direksi');
            $film->pemain = $request->get('pemain');
            $film->sinopsis = $request->get('sinopsis');
            $film->bahasa = $request->get('bahasa');
            $film->image = $filename;
            $film->id_genre_film = $request->get('id_genre_film');
            $film->id_kategori = $request->get('id_kategori');
            $film->status = $request->get('status'); // ⬅️ tambahkan ini
            $film->save();

            //$film_id->update($request->all());
            return back();
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request)
    {
        $film_id = Film::FindOrFail($request->id_film);
        $film_id->delete();
        return back();
    }

    public function show_film()
    {
          $film = \App\Film::where('status', 'on')->paginate(12);
        return view('/user_home',compact('film'));
    }

    public function search(Request $request)
    {
        $query = $request->get('cari');
        $hasil = Film::where('nama_film', 'LIKE', '%' . $query . '%')->paginate(7);

        return view('admin-film.result', compact('hasil', 'query'));
    }

    public function loadData(Request $request)
    {
        $film = DB::table('tb_film')->get();

        return view('/user_home',compact('film'));
    }

    public function userSearch(Request $request)
    {
        $query = $request->get('q');
        $film = Film::where('status', 'on')
                ->where('nama_film', 'LIKE', '%' . $query . '%')
                ->paginate(7);

        return view('user_home', compact('film', 'query'));
    }
}

<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Input;
use \App\Upcoming;
use \File;
use \Storage;
use \App\tb_genre_film;

class UpcomingController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $listUpcoming = \App\Upcoming::paginate(7);
        return view('admin-film.upcoming',compact('listUpcoming'));
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

        $upcoming = new Upcoming;

        $upcoming -> nama_film = $request->get('nama_film');
        $upcoming->tahun_produksi = $request->get('tahun_produksi');
        $upcoming->direksi = $request->get('direksi');
        $upcoming->pemain = $request->get('pemain');
        $upcoming->sinopsis = $request->get('sinopsis');
        $upcoming->bahasa = $request->get('bahasa');
        $upcoming->image = $filename;
        $upcoming->id_genre_film = $request->get('id_genre_film');
        $upcoming->id_kategori = $request->get('id_kategori');
        $film->status = 'on'; // ⬅️ tambahkan ini
        $upcoming->save();
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
            $upcoming = Upcoming::FindOrFail($request->id_upcoming);
        
            $upcoming -> nama_film = $request->get('nama_film');
            $upcoming->tahun_produksi = $request->get('tahun_produksi');
            $upcoming->direksi = $request->get('direksi');
            $upcoming->pemain = $request->get('pemain');
            $upcoming->sinopsis = $request->get('sinopsis');
            $upcoming->bahasa = $request->get('bahasa');
            $upcoming->id_genre_film = $request->get('id_genre_film');
            $upcoming->id_kategori = $request->get('id_kategori');
            $upcoming->status = $request->get('status'); // ⬅️ tambahkan ini
            $upcoming->save();

            //$upcoming_id->update($request->all());
            return back();
        } else {
            $filename = $image->getClientOriginalName();
            $image->move('upload\images', $filename, file_get_contents($request->file('image')->getRealPath()));

            $upcoming = Upcoming::FindOrFail($request->id_upcoming);
        
            $upcoming -> nama_film = $request->get('nama_film');
            $upcoming->tahun_produksi = $request->get('tahun_produksi');
            $upcoming->direksi = $request->get('direksi');
            $upcoming->pemain = $request->get('pemain');
            $upcoming->sinopsis = $request->get('sinopsis');
            $upcoming->bahasa = $request->get('bahasa');
            $upcoming->image = $filename;
            $upcoming->id_genre_film = $request->get('id_genre_film');
            $upcoming->id_kategori = $request->get('id_kategori');
            $upcoming->status = $request->get('status'); // ⬅️ tambahkan ini
            $upcoming->save();

            //$upcoming_id->update($request->all());
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
        $upcoming_id = Upcoming::FindOrFail($request->id_upcoming);
        $upcoming_id->delete();
        return back();
    }

    public function show_upcoming()
    {
        $upcoming = \App\Upcoming::paginate(12);
        return view('/upcoming',compact('upcoming'));
    }

    public function search(Request $request)
    {
        $query = $request->get('cari');
        $hasil = Upcoming::where('nama_film', 'LIKE', '%' . $query . '%')->paginate(7);

        return view('admin-film.result', compact('hasil', 'query'));
    }

    public function loadData(Request $request)
    {
        $upcoming = DB::table('upcoming')->get();

        return view('/user_home',compact('upcoming'));
    }

    public function userSearch(Request $request)
    {
        $query = $request->get('q');
        $upcoming = Upcoming::where('nama_film', 'LIKE', '%' . $query . '%')->paginate(7);

        return view('user_home', compact('upcoming', 'query'));
    }
}

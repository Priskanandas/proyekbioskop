<?php

namespace App\Http\Controllers;

use DateTime;
use DateTimeZone;
use DateInterval;

use App\Upcoming;
use App\Tayang;
use App\ListKursi;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class DetUpcomingController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index($upcoming_id)
    {
        //$query = $request->get('upcoming_id');
        $hasil = Upcoming::where('id_upcoming', $upcoming_id)->get();
  
        $date = new DateTime();
        $date->setTimeZone(new DateTimeZone('Asia/Hong_Kong'));

        $date_now = $date->format('Y-m-d H:i:s');
        //dd($hasil->all());
        return view('film.upcoming',compact('hasil','date_now'));
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
        //
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
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }

    public function kursi()
    {
            $id = $_GET['id'];
            $hasil = ListKursi::leftJoin('tb_kursi','tb_list_kursi.id_kursi','=','tb_kursi.id_kursi')
                            ->where('id_tayang', $id)
                            ->get();
            //dd($data->all());

            return $hasil;    
    }
}

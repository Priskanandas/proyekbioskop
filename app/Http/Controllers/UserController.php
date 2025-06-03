<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Hash;
use \App\User;
use \File;
use \Storage;
use \App\users;

class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $hasil = \App\User::where('admin',0)
        ->paginate(7);
        return view('admin-film.member',compact('hasil'));
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
     
   * public function store(Request $request)
    *{
     *   $image = $request->file('image');
      *  $filename = $image->getClientOriginalName();
       * $image->move('upload\profile', $filename, file_get_contents($request->file('image')->getRealPath()));
        *$user = new User;

      * $user -> name = $request->get('name');
      * $user->email = $request->get('email');
      * $user->password = $request->get('password');
      * $user->alamat = $request->get('alamat');
      * $user->telepon = $request->get('telepon');
      * $user->image = $filename;
     
      * $user->save();*/
//['nama_film','tahun_produksi','direksi','pemain','sinopsis','bahasa','negara','id_genre_film','id_kategori'];
        //Film::create($request->all());
        //dd($request->all());
     //   return back();
   // }
    public function store(Request $request)
{
    $request->validate([
        'name' => 'required|string|max:255',
        'email' => 'required|email|unique:users,email',
        'password' => 'required|string|min:6',
        'alamat' => 'required|string',
        'telepon' => 'required|string',
        'image' => 'required|image|mimes:jpg,jpeg,png|max:2048',
    ]);

    $image = $request->file('image');
    $filename = time() . '_' . $image->getClientOriginalName();
    $image->move(public_path('upload/profile'), $filename);

    $user = new User;
    $user->name = $request->get('name');
    $user->email = $request->get('email');
    $user->password = Hash::make($request->get('password'));
    $user->alamat = $request->get('alamat');
    $user->telepon = $request->get('telepon');
    $user->image = $filename;

    $user->save();

    return back()->with('success', 'Data member berhasil disimpan');
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
        $request->validate([
            'id' => 'required|exists:users,id',
            'name' => 'required|string|max:255',
            'email' => 'required|email|unique:users,email,' . $request->id,
            'alamat' => 'required|string',
            'telepon' => 'required|string',
            'image' => 'nullable|image|mimes:jpg,jpeg,png|max:2048',
        ]);
    
        $user = User::findOrFail($request->id);
    
        // Upload image jika ada file baru
        if ($request->hasFile('image')) {
            $image = $request->file('image');
            $filename = time() . '_' . $image->getClientOriginalName();
            $image->move(public_path('upload/profile'), $filename);
            $user->image = $filename;
        }
    
        $user->name = $request->get('name');
        $user->email = $request->get('email');
        $user->alamat = $request->get('alamat');
        $user->telepon = $request->get('telepon');
    
        // Hanya ubah password jika diisi
        if ($request->filled('password')) {
            $user->password = Hash::make($request->get('password'));
        }
    
        $user->save();
    
        return back()->with('success', 'Data member berhasil diperbarui');
    }
    

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */

    public function destroy(Request $request)
{
    $user = User::findOrFail($request->id);
    $user->delete();

    return back()->with('success', 'User berhasil dihapus');
}



}

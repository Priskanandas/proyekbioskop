<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Upcoming extends Model
{
	protected $primaryKey = 'id_upcoming';
	protected $table = 'upcoming';
    protected $fillable = ['nama_film','tahun_produksi','direksi','pemain','sinopsis','bahasa','negara','image','id_genre_film','id_kategori'];
public function genre()
{
	return $this->belongsTo('App\tb_genre_film', 'id_genre_film');

}
public function kategori()
{
	return $this->belongsTo('App\Kategori', 'id_kategori');

}
}
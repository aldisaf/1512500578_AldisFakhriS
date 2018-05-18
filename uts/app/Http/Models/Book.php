<?php
namespace App\Http\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Book extends Model
{
    use SoftDeletes;

//    public function CategoriesId()
//    {
//        return $this->hasMany('App\Http\Models\Category', 'categories_id');
//    }

    protected $fillable = [
        'category_id',
        'title',
        'isbn',
        'synopsis',
        'publisher',
        'author',
    ];

    protected $guarded = [
        'id'
    ];

    public function book(){
      return $this->belongsTo('App\Http\Models\Category','category_id');
    }
}

<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Letter extends Model
{
    use HasFactory;

    protected $table ="letters";

    protected $filable = [
    	'nameletter',
    	'typeletter',
    	'descriptionletter',
    	'fileletter',
    	'coverletter',
    	'categories_id',
    	'user_id'
    ];
}

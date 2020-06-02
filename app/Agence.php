<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Agence extends Model
{
    public function estates()
    {
        return $this->belongsToMany('App\estate');
    }
}

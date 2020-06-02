<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class estate extends Model
{
    public function getFormatedPrice()
    {
        $prix =$this->prix / 100;

        return number_format($prix, 2, ',', ' ') . '€';
    }

    public function categories()
    {
        return $this->belongsToMany('App\Category');
    }

    public function agences()
    {
        return $this->belongsToMany('App\Agence');
    }
}

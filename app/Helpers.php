<?php

function getPrice($prixInDecimal)
{
    $prix = floatval($prixInDecimal) / 100;

    return number_format($prix, 2, ',', ' ') . '€';

}
<?php

function square_of_the_sum($n){
    $sum = $n/2 * ($n + 1);
    return $sum * $sum;
}

function sum_of_the_squares($n){
    return $n/6 * ($n + 1) * (2 * $n +1);
}

print(square_of_the_sum(100) - sum_of_the_squares(100) . "\n");


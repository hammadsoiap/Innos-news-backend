<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class UserPreference extends Model
{
    use HasFactory;
    public $timestamps = false;
    public $primaryKey = 'user_id';
    protected $fillable = [
        'user_id',
        'source',
        'category',
        'author',
    ];
}

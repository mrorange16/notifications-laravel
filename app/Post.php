<?php

namespace App;

use App\Events\PostCreated;
use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    
    protected $guarded = [];
 
    protected $events = [
        'created' => PostCreated::class
    ];
}

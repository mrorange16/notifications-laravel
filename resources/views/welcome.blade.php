@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
 <example-component></example-component>
       
        <div class="col-md-8 col-md-offset-2">
            @foreach (App\Post::latest()->get() as $post)
                  <div class="panel panel-default">
              <div class="panel-heading">
                <a href="{{route('posts.show',$post)}}" title="">
               {{$post->title}}  
               </a>
           </div>
                  </div>

                 
            @endforeach
          
        </div>
    </div>
</div>

@endsection
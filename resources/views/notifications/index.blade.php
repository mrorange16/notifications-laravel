@extends('layouts.app')

@section('content')
<h1>Notificaciones</h1>
<div class="row">
	<div class="col-md-6">
		<h2>No leidas</h2>
		<ul class="list-group">
			@foreach ($unreadNotifications as $noti)
				<li class="list-group-item"> 
<a href="{{ $noti->data['link'] }}" >{{ $noti->data['text'] }}</a>
<form method="POST" action="{{route('notifications.read', $noti->id)}}" class="pull-right">
	{{method_field('PATCH')}}
	{{ csrf_field()}}
	<button class="btn btn-danger btn-xs">X</button>
	
	
</form>
			</li>
			@endforeach
		</ul>
	</div>
	<div class="col-md-6">
		<h2>leidas</h2>
		<ul class="list-group">
			@foreach ($readNotifications as $noti)
				<li class="list-group-item"> 
<a href="{{ $noti->data['link'] }}" >{{ $noti->data['text'] }}</a>
<form method="POST" 
action="{{route('notifications.destroy', $noti->id)}}" 
class="pull-right">
	{{method_field('DELETE')}}
	{{ csrf_field()}}
	<button class="btn btn-danger btn-xs">X</button>
	
	
</form>
			</li>
			@endforeach
		</ul>
	</div>
</div>
@endsection
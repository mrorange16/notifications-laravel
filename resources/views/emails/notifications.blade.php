<!DOCTYPE html>
<html>
<head>
	<title>Notificaciones test</title>
</head>
<body>
	<h1>{{$user->name}}</h1>
	<p>Has recibido un msg</p>
<a href="{{route('messages.show',$msg->id)}}">Clic aqui</a>
<p>Gracias</p>
</body>
</html>
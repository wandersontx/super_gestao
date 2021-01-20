<!DOCTYPE html>
<html lang="pt-br">
<head>
    <title>Super Gestão - @yield('title') </title>
    <meta charset="utf8">
    <link rel="stylesheet" href="{{ asset('css/estilo_basico.css') }}">
</head>
<body>
   @include('app.layouts._partials.topo')
   @yield('contentApp') 
</body>
</html>
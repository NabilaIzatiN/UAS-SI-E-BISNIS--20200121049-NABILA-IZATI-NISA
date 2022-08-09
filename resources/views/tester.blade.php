<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
    <H1>Pengujian Berhasil</H1>
    <form action="{{ url('/logout') }}" method="post">
        @csrf
        <button type="submit" name="logout" class="btn btn-warning">Logout</button>
    </form>
</body>
</html>

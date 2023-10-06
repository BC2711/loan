<html>
<head>
    <title>Pdf</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
    <h1>{{ $title }}</h1>
    <p>{{ $date }}</p>
   
  
    <table class="table table-bordered">
        <tr>
            <th>ID</th>
            <th>Full Name</th>
            <th>Date of Birth</th>
            <th>Gender</th>
            <th>Disability</th>
            <th>NRC</th>
            <th>Email</th>
            <th>Phone Number</th>
            <th>Tpin</th>
            <th>Province</th>
            <th>District</th>
            <th>Constituency</th>
            <th>Physical Address</th>
        </tr>
        @foreach($users as $user)
        <tr>
            <td>{{ $user->id }}</td>
            <td>{{ $user->name }}</td>
            <td>{{ $user->dob }}</td>
            <td>{{ $user->gender }}</td>
            <td>{{ $user->disability }}</td>
            <td>{{ $user->nrc }}</td>
            <td>{{ $user->email }}</td>
            <td>{{ $user->phone_number }}</td>
            <td>{{ $user->tpin }}</td>
            <td>{{ $user->province }}</td>
            <td>{{ $user->district }}</td>
            <td>{{ $user->constituency }}</td>
            <td>{{ $user->physical_address }}</td>
           
        </tr>
        @endforeach
    </table>
  
</body>
</html>
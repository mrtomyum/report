<!DOCTYPE html>
<html lang="th">

<head>
    <title>Nava Report Server Main Page.</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.5/css/bootstrap.min.css" integrity="sha384-AysaV+vQoT3kOAXZkl02PThvDr8HYKPZhNT5h/CXfBThSRXQ6jW5DO2ekP5ViFdi" crossorigin="anonymous">
</head>

<body>
<h1>ยินดีต้อนรับสู่ Nopadol Reporting Service!</h1>
<p>ระบบรายงานนี้มีเป้าหมายคือนำส่งรายงานสำคัญ ที่แต่ละตำแหน่งงาน (Role)  ได้ทำการสมัครเอาไว้ (Subscription)
หัวข้อรายงานจะปรากฏเฉพาะรายงานที่ถูกสมัครรับรายงานไว้ แถูกสร้างและนำส่งมาให้คุณเปิดอ่านได้ทันที
</p>
<h2>กรุณาเลือกรายงานที่ท่านต้องการ</h2>

<div class = "container">
    <h3>ขาย[Module]</h3>
    <table class="table table-hover table-condense">
        <tr>
            <th>ID</th>
            <th>Name</th>
        </tr>
        <tr>
            <td>{{ .id }}</td>
            <td>{{ .name }}</td>
        </tr>
    </table>
    <h3>ซื้อ[Module]</h3>
    <table class="table table-hover table-condense">
        <tr>
            <th>ID</th>
            <th>Name</th>
        </tr>
        <tr>
            <td>{{ .id }}</td>
            <td>{{ .name }}</td>
        </tr>
    </table>
    <h3>คลัง[Module]</h3>
    <table class="table table-hover table-condense">
        <tr>
            <th>ID</th>
            <th>Name</th>
        </tr>
        <tr>
            <td>{{ .id }}</td>
            <td>{{ .name }}</td>
        </tr>
    </table>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js" integrity="sha384-3ceskX3iaEnIogmQchP8opvBy3Mi7Ce34nWjpBIwVTHfGYWQS9jwHDVRnpKKHJg7" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.3.7/js/tether.min.js" integrity="sha384-XTs3FgkjiBgo8qjEjBk0tGmf3wPrWtA6coPfQDfFEY8AnYJwjalXCiosYRBIBZX8" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.5/js/bootstrap.min.js" integrity="sha384-BLiI7JTZm+JWlgKa0M0kGRpJbF2J8q+qreVrKBC47e3K6BW78kGLrCkeRX6I9RoK" crossorigin="anonymous"></script>
</body>

</html>

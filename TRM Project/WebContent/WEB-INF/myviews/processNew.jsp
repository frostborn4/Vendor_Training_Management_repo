<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Process New</title>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

</head>

<body>
    <div class="col-md-2 box">
        <div class="row">
            <label>Training Type:</label>
            <br>
            <div class="col-md-10 box" style="border:0px">
                <input type="radio" name="Training" value="Internal Training" checked><label>Internal</label><br>
                <input type="radio" name="Training" value="Developer Training"><label>Developer</label><br>
                <input type="radio" name="Training" value="Vendor Training"><label>Vendor</label>
            </div>
        </div>
        <div style="text-align: right">
            <button type="button" class="btn-small btn-info">Save</button>
        </div>
    </div>
</body>

</html>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>login</title>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<header>
    <div class="container">
        <div class="jumbotron">
            <h1>Training Request Management</h1>
        </div>
    </div>
</header>

<body>
    <div class="container">
        <form class="form-horizontal" action="/action_page.php">
            <div class="form-group">
                <label class="control-label col-md-2" for="email">Username:</label>
                <div class="col-md-4">
                    <input type="userName" class="form-control" id="userName" placeholder="" name="un">
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-md-2" for="password">Password:</label>
                <div class="col-md-4">
                    <input type="password" class="form-control" id="password" placeholder="" name="up">
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-offset-2 col-md-10">
                    <div class="dropdown">
                        <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Login Type
                            <span class="caret"></span></button>
                        <ul class="dropdown-menu">
                            <li><a href="#">PM</a></li>
                            <li><a href="#">IT</a></li>
                            <li><a href="#">DT</a></li>
                            <li><a href="#">VT</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-offset-2 col-md-10">
                    <button type="submit" class="btn btn-default">Submit</button>
                </div>
            </div>
        </form>
    </div>
</body>

<hr />
<footer class="page-footer font-small blue pt-4">
    Footer Content Goes Here
</footer>

</html>
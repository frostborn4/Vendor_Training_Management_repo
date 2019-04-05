<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Process In Progress</title>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css">
    <script src="https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>

    <link rel="stylesheet" href="../css/processInProgress.css">
    <script src="../js/processInProgress.js"></script>
</head>

<div class="container">
    <div class="col-md-6">
        <a href="#step1Collapse" class="btn btn-info steps" data-toggle="collapse">
            Step 1
        </a>
        <div id="step1Collapse" class="collapse">
            <form class="form-horizontal" action="">
                <div class="form-group">
                    <label for="trainers" class="control-label col-md-4">Available Trainers:</label>
                    <div class="col-md-6">
                        <select class="form-control" id="trainers">
                            <option>Andy</option>
                            <option>Ben</option>
                            <option>Cindy</option>
                            <option>Dan</option>
                        </select>
                    </div>

                    <div class="col-md-2">
                        <a href="#addTrainer" id="addTrainer" class="btn btn-info">
                            +
                        </a>
                    </div>
                </div>

                <div class="form-group" id="newTrainer">
                    <label class="control-label col-md-4" for="">New Trainer:</label>
                    <div class="col-md-8">
                        <input type="text" class="form-control" id="">
                    </div>
                </div>

                <div class="form-group">
                    <label for="trainingType" class="control-label col-md-4">Training Type:</label>
                    <div class="col-md-8">
                        <select class="form-control" id="trainingType">
                            <option>Java</option>
                            <option>.Net</option>
                            <option>Python</option>
                        </select>
                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label col-md-4" for="startDate">Start Date:</label>
                    <div class="col-md-8">
                        <input type="text" id="startDate">
                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label col-md-4" for="endDate">End Date:</label>
                    <div class="col-md-8">
                        <input type="text" id="endDate">
                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label col-md-4" for="startTime">Start Time:</label>
                    <div class="col-md-8">
                        <input type="text" class="form-control" id="requestDate">
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-4" for="endTime">End Time:</label>
                    <div class="col-md-8">
                        <input type="text" class="form-control" id="requestDate">
                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label col-md-4">Mode:</label>
                    <label class="radio-inline control-label">
                        <input type="radio" name="mode" id="classroom" checked>Classroom
                    </label>
                    <label class="radio-inline control-label">
                        <input type="radio" name="mode" id="virtual">Virtual
                    </label>
                </div>
                <div id="modeClassroom">
                    <div class="form-group">
                        <label class="control-label col-md-4" for="address">Address:</label>
                        <div class="col-md-8">
                            <input type="text" class="form-control" id="address">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-4" for="city">City:</label>
                        <div class="col-md-8">
                            <input type="text" class="form-control" id="city">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-4" for="room">Room:</label>
                        <div class="col-md-8">
                            <input type="text" class="form-control" id="room">
                        </div>
                    </div>
                </div>
                <div id="modeVirtual">
                    <div class="form-group">
                        <label class="control-label col-md-4" for="url">URL:</label>
                        <div class="col-md-8">
                            <input type="text" class="form-control" id="url">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-4" for="phone">Phone:</label>
                        <div class="col-md-8">
                            <input type="text" class="form-control" id="phone">
                        </div>
                    </div>
                </div>

            </form>
        </div>

        <div class="pending col-md-12">
            <div>
                <b>Pending Approval:</b>
            </div>
        </div>

        <a href="#step2Collapse" class="btn btn-info steps" data-toggle="collapse">
            Step 2
        </a>
        <div id="step2Collapse" class="collapse">
            <form>
                <div class="form-group" id="checkboxes">
                    <div class="checkbox">
                        <label><input type="checkbox" value="">Invite Sent</label>
                    </div>

                    <div class="checkbox">
                        <label><input type="checkbox" value="">Attendence</label>
                    </div>

                    <div class="checkbox">
                        <label><input type="checkbox" value="">Feedback</label>
                    </div>

                    <div class="checkbox">
                        <label><input type="checkbox" value="">Training Complete</label>
                    </div>
                </div>
            </form>
        </div>
    </div>

    <div class="col-md-6">
        <table class="table">
            <thead>
                <tr>
                    <th>Saved Request Info</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Trainer Id</td>
                    <td>12345</td>
                </tr>
                <tr>
                    <td>Start Date</td>
                    <td>5/5/5555</td>
                </tr>
                <tr>
                    <td>End Date</td>
                    <td>6/6/6666</td>
                </tr>
                <tr>
                    <td>Training Type:</td>
                    <td>Internal Training</td>
                <tr>
                    <td>Mode:</td>
                    <td>Classroom</td>
                </tr>
                <tr>
                    <td>URL:</td>
                    <td>www.something.com</td>
                </tr>
                <tr>
                    <td>Address</td>
                    <td>123 something Street</td>
                </tr>
                <tr>
                    <td>City</td>
                    <td>Phx</td>
                </tr>
                <tr>
                    <td>Room: </td>
                    <td>222</td>
                </tr>
            </tbody>
        </table>
    </div>
</div>

</html>
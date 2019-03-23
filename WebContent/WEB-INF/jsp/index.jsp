<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>

<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="author" content="Vendor TRM Team">

<title>Vendor TRM</title>

<!-- Bootstrap core CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

<!-- FontAwesome-->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.2/css/all.css"
	integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr"
	crossorigin="anonymous">

<!-- Custom styles-->
<link href="<c:url value="/resources/css/style.css"/>" rel="stylesheet">
<link href="<c:url value="/resources/css/vtm-modal.css"/>"
	rel="stylesheet">


<!-- Bootstrap core JavaScript -->
<script src="<c:url value="resources/vendor/jquery/jquery.min.js"/>"></script>
<script
	src="<c:url value="resources/vendor/bootstrap/js/bootstrap.bundle.min.js" /> "></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>


<!-- Local js scripts-->
<script src="<c:url value="resources/js/vtm.js" />"></script>
<script src="<c:url value="resources/js/trainingType.js" />"></script>

</head>
<body style="padding-top: 70px">

	<!-- Navigation -->
	<nav class="main-header navbar navbar-expand-lg navbar-dark fixed-top"
		style="background-color: #3c8dbc">
	<div class="container">
		<img src="../resources/img/AtosSyntelLogoMedWhite.png" height="30" />
		<a class="navbar-brand" href="#"> <!--<b>Atos</b>Syntel--> <i>Vendor
				<b>TRM</b>
		</i>
		</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarResponsive" aria-controls="navbarResponsive"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarResponsive">
			<ul class="navbar-nav ml-auto">
				<!-- Dashboard (HOME BUTTON) (Active Item)
            ----commented because single page app
            <li class="nav-item active">
            <a class="nav-link" href="#">Dashboard
              <span class="sr-only">(current)</span>
            </a>
          </li>
          -->
				<li class="nav-item py-1" style="padding-right: 5px"><input
					type="search" id="sb"
					style="color: white; border-radius: 15px; border: #fff 2px solid; background-color: #3c8dbc; padding-top: 2px; padding-bottom: 3px"
					required placeholder="  Filter..." /></li>
				<li class="nav-item"><a class="nav-link" href="#">Run
						Report</a></li>
				<li class="nav-item"><a class="nav-link" href="#" id="vm-open"
					data-toggle="modal" data-target="#vm-modal" data-backdrop="static">Vendor
						Management</a></li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
					role="button" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> <i class="fas fa-user-circle"
						style="float: none;"></i> Mahesh
				</a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<span class="dropdown-item">Welcome, SPOC</span> <span
							class="dropdown-item">Your Vertical: Logistics</span>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="login.html"> <b
							style="color: tomato">Logout</b>
						</a>
					</div></li>
			</ul>
		</div>
	</div>
	</nav>

	<!-- Page Content -->

	<table border="2" style="width: 50%">
		<tr>
			<td>Product ID</td>
			<td>Product Name</td>
			<td>Product Price</td>
			<td>Product Company</td>
		</tr>
		<c:forEach var="pro" items="${vendorTrainingRequestList}">
			<tr>
				<td>${pro.vendor_training_request_id}</td>
				<td>${pro.training_request_id}</td>
				<td>${pro.confirmed_vendor_id}</td>
				<td>${pro.vendor_trainer_id}</td>
				<tr>	
		</c:forEach>
	</table>
  <%-- <div class="container">
    <span style="float: right; margin-top: -10px; margin-bottom: 10px; color: #3c8dbc;">Toggle In Progress:
      <button type="button" class="btn btn-link " id="hidebutton">
        <i id="itog" class="fas fa-toggle-on fa-2x"></i>
      </button>
    </span>
    <br>
    <br>
    <div class="row text-left">
      <div class="col-md-3" style="border: 10px solid #FFFF66; border-style: none none none solid;">
        <h4>New</h4>
        <button type="button" class="btn btn-outline-warning " id="bpbutton"
          style="float: right; position: relative; top: -40px; margin-right: 10px;">to Processing</button>
        <div class="card" style="width: 13rem; margin-left: 10px; margin-top: 20px;" id="p1">
          <div class="cardcontainer">
            <input type="checkbox" class="form-check-input" id="check1">
            <div class="card-body">
              <h5 class="card-title">
                <span><i class="fa fa-id-card" aria-hidden="true" style="color:#3c8dbc; float: inherit;"></i> 455439</span>
                <span style="float: right;">
                	<img id="vendor_icon" style="margin-top:27px;" src="<c:url value="/resources/img/vendor-icon-placeholder.png" />" >
                </span>
   
              </h5>
              <hr style="width:75%;  border-color:#b9b9b9;">
              <p class="card-text">
                  <table style="margin-bottom:-15px;">
                      <tr>
                        <td style="text-align: center"><i class="fas fa-user" style="color:#ff3232; float: inherit;"></i></td>
                        <td style="text-align: left; padding-left:5px;"><a href="#" class="reset-a" id="hoverelement1">Proj Manager</a> </td>
                      </tr>
                      <tr>
                        <td style="text-align: center"><i class="fas fa-network-wired" style="float: inherit; color:#323232"></i></td>
                        <td style="text-align: left; padding-left:5px;"><a href="#" class="reset-a" id="hoverelement2">Module</a></td>
                      </tr>
                      <tr>
                        <td style="text-align: center"> <i class="fas fa-map-marker-alt" style="float: inherit; color:#323232"></i></td>
                        <td style="text-align: left; padding-left:5px;"><a href="#" class="reset-a" id="hoverelement3">Location</a></td>
                      </tr>
                      <tr>
                        <td style="text-align: center"><i class="fas fa-users" style="float: inherit; color:#323232"></i></td>
                        <td style="text-align: left; padding-left:5px;"> <a href="#" class="reset-a" id="hoverelement4">Participants</a></td>
                      </tr>
                      <tr>
                          <td style="text-align: center"><i class="fas fa-calendar-day" style="float: inherit;  color:#323232"></i></td>
                          <td style="text-align: left; padding-left:5px;"><a href="#" class="reset-a" id="hoverelement5">Start Date</a></td>
                        </tr>
                    </table>
              </p>
            </div>
            <div id="overlay1" class="vendor-overlay">
              <div class="cardtext">
                  <p style="font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: 400;">
                     More details about the module and some more details about the module.
                  </p>
              </div>
            </div>
          </div>
        </div>
        <br>
         --%>
				<!--
        <div class="card" style="width: 13rem; margin-left: 10px; margin-top: 20px;" id="p2">
          <input type="checkbox" class="form-check-input" id="check2">
          <div class="cardcontainer">
              <div class="card-body">
                  <h5 class="card-title">
                    <span><i class="fa fa-id-card" aria-hidden="true" style="color:#3c8dbc; float: inherit;"></i> 455440</span>
                    <span style="float: right;"><img id="vendor_icon2" style="margin-top:27px;" src="../resources/img/vendor-icon-placeholder.png" /></span>
                  </h5>
                  <hr style="width:75%;  border-color:#b9b9b9;">
                  <p class="card-text">
                  <table style="margin-bottom:-15px;">
                      <tr>
                        <td style="text-align: center"><i class="fas fa-user" style="color:#ff3232; float: inherit;"></i></td>
                        <td style="text-align: left; padding-left:5px;"><a href="#" class="reset-a" id="hoverelement1-2">Proj Manager</a> </td>
                      </tr>
                      <tr>
                        <td style="text-align: center"><i class="fas fa-network-wired" style="float: inherit; color:#323232"></i></td>
                        <td style="text-align: left; padding-left:5px;"><a href="#" class="reset-a" id="hoverelement2-2">Module</a></td>
                      </tr>
                      <tr>
                        <td style="text-align: center"> <i class="fas fa-map-marker-alt" style="float: inherit; color:#323232"></i></td>
                        <td style="text-align: left; padding-left:5px;"><a href="#" class="reset-a" id="hoverelement3-2">Location</a></td>
                      </tr>
                      <tr>
                        <td style="text-align: center"><i class="fas fa-users" style="float: inherit; color:#323232"></i></td>
                        <td style="text-align: left; padding-left:5px;"> <a href="#" class="reset-a" id="hoverelement4-2">Participants</a></td>
                      </tr>
                      <tr>
                          <td style="text-align: center"><i class="fas fa-calendar-day" style="float: inherit;  color:#323232"></i></td>
                          <td style="text-align: left; padding-left:5px;"><a href="#" class="reset-a" id="hoverelement5-2">Start Date</a></td>
                        </tr>
                    </table>
                  </p>
                </div>
          </div>
        </div>
      	-->
      
      </div>
      <div id="processing-col" class="col"
					style="border: 10px solid #FFC04C;  border-style: none none none solid;"
					id="pd">
        <h4>Processing</h4>
        <div class="row" id="hp">
          <div class="card"
							style="margin-left: 10px; margin-top: 20px; width: 14rem;">
            <div class="card-body">
              <h5 class="card-title">Vendor Request</h5>
              <h6 class="card-subtitle mb-2 text-muted">ID: 100560</h6>
              <p class="card-text">Big Data Training</p>

              <!-- Yosuf ElSaadany 3/14/2019 1:47 pm Integration of Modal- DOM for Modal -->
              <!-- <button style="float:right" class="btn btn-primary" data-toggle="modal" data-target="#myModal">
                Open
              </button> -->
              <i style="margin-left: 10px" id="modalIcons" title="Open"
									data-toggle="modal" data-target="#myModal"
									class="fas fa-external-link-alt"></i>
              <div class="modal" id="myModal">
                <div class="modal-dialog modal-xl">
                  <div class="modal-content">
                    <!-- Modal Header -->
                    <div class="modal-header">
                      <div class="col-lg-4">
                        <p>Training Request ID: 100558</p>
                      </div>
                      <div class="col-lg-4">
                        <p>Project Manager:</p>
                      </div>
                      <div class="col-lg-2">
                        <p>Training Type:</p>
                      </div>
                      <button type="button" class="close"
													data-dismiss="modal">&times;</button>
                    </div>
                    <div style="overflow-y: scroll" class="modal-body">
                      <div class="row">
                        <div class="col">
                          <!--Accordion start-->
                          <div class="accordion" id="accordionEx"
															role="tablist" aria-multiselectable="true">
                            <div class="card">
                              <!-- Card header -->
                              <div class="card-header" role="tab"
																	id="headingOne1">
                                <a style="text-decoration:none"
																		class="collapsed" data-toggle="collapse"
																		data-parent="#accordionEx" href="#collapseOne1"
																		aria-expanded="true" aria-controls="collapseOne1">
                                  <h5 class="mb-0">
                                    Shortlist Vendor
                                    <i id="modalIcons"
																				class="fas fa-angle-down rotate-icon"></i>
                                  </h5>
                                </a>
                              </div>
                              <!-- Card body -->
                              <div id="collapseOne1"
																	class="collapse show" role="tabpanel"
																	aria-labelledby="headingOne1"
																	data-parent="#accordionEx">
                                <div class="card-body">
                                  <a class="nav-link" href="#"
																			id="vm-open" data-toggle="modal"
																			data-target="#vm-modal" data-backdrop="static">Vendor Management</a>
                                </div>
                              </div>
                            </div>
                            <div class="card">
                              <!-- Card header -->
                              <div class="card-header" role="tab"
																	id="headingTwo2">
                                <a style="text-decoration:none"
																		class="collapsed" data-toggle="collapse"
																		data-parent="#accordionEx" href="#collapseTwo2"
																		aria-expanded="false" aria-controls="collapseTwo2">
                                  <h5 class="mb-0">
                                    Procurement Team Shortlist
                                    <i id="modalIcons"
																				class="fas fa-angle-down rotate-icon"></i>
                                  </h5>
                                </a>
                              </div>
                              <!-- Card body -->
                              <div id="collapseTwo2" class="collapse"
																	role="tabpanel" aria-labelledby="headingTwo2"
																	data-parent="#accordionEx">
                                <div class="card-body">
                                  Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson
                                  ad squid. 3 wolf moon officia aute,
                                  non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.
                                  Brunch
                                  3 wolf moon tempor, sunt aliqua put a bird on it squad single-origin coffee nulla
                                  assumenda
                                  shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred
                                  nesciunt
                                  sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft
                                  beer
                                  farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them
                                  accusamus
                                  labore sustainable VHS.
                                </div>
                              </div>
                            </div>
                            <div class="card">
                              <!-- Card header -->
                              <div class="card-header" role="tab"
																	id="headingThree3">
                                <a style="text-decoration:none"
																		class="collapsed" data-toggle="collapse"
																		data-parent="#accordionEx" href="#collapseThree3"
																		aria-expanded="false" aria-controls="collapseThree3">
                                  <h5 class="mb-0">
                                    PM Approval
                                    <i id="modalIcons"
																				class="fas fa-angle-down rotate-icon"></i>
                                  </h5>
                                </a>
                              </div>
                              <!-- Card body -->
                              <div id="collapseThree3" class="collapse"
																	role="tabpanel" aria-labelledby="headingThree3"
																	data-parent="#accordionEx">
                                <div class="card-body">
                                  Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson
                                  ad squid. 3 wolf moon officia aute,
                                  non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod.
                                  Brunch
                                  3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla
                                  assumenda
                                  shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred
                                  nesciunt
                                  sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft
                                  beer
                                  farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them
                                  accusamus
                                  labore sustainable VHS.
                                </div>
                              </div>
                            </div>
                            <div class="card">
                              <!-- Card header -->
                              <div class="card-header" role="tab"
																	id="headingFour4">
                                <a style="text-decoration:none"
																		class="collapsed" data-toggle="collapse"
																		data-parent="#accordionEx" href="#collapseFour4"
																		aria-expanded="false" aria-controls="collapseFour4">
                                  <h5 class="mb-0">
                                    Training Schedule
                                    <i id="modalIcons"
																				class="fas fa-angle-down rotate-icon"></i>
                                  </h5>
                                </a>
                              </div>
                              <!-- Card body -->
                              <div id="collapseFour4" class="collapse"
																	role="tabpanel" aria-labelledby="headingFour4"
																	data-parent="#accordionEx">
                                <div class="card-body">
                                  <form>
                                    <!-- <label>Training Dates</label> -->
                                    <div class="form-group">
                                      <div class="row">
                                        <div class="col-4">
                                          <label>Start Date</label>
                                        </div>
                                        <input type="date"
																						class="form-control-sm" id="startDate">
                                      </div>
                                      <div style="margin-top: 0.4rem;"
																					class="row">
                                        <div class="col-4">
                                          <label>End Date</label>
                                        </div>
                                        <input type="date"
																						class="form-control-sm" id="endDate">
                                      </div>
                                    </div>
                                    <hr>
                                    <div class="form-group">
                                      <div class="row">
                                        <div class="col-4">
                                          <label>Participants</label>
                                          <!-- <i class="fas fa-users"></i> -->
                                        </div>
                                        <input type="number"
																						placeholder="Participants Count"
																						class="form-control-sm" id="participants">
                                      </div>
                                    </div>
                                    <hr>
                                    <label>Training Type</label>
                                    <div class="form-check">
                                      <input class="form-check-input"
																					type="radio" name="exampleRadios" id="classRoom"
																					value="option1">
                                      <label class="form-check-label"
																					for="classRoom">
                                        Class Room
                                      </label>
                                    </div>
                                    <div class="form-check">
                                      <input class="form-check-input"
																					type="radio" name="exampleRadios" id="online"
																					value="option2">
                                      <label class="form-check-label"
																					for="online">
                                        Online
                                      </label>
                                    </div>
                                    <div id="classRoomForm"
																				class="form-group">
                                      <div class="row">
                                        <div class="col">
                                          <br>
                                          <input id="city"
																							placeholder="City" type="text"
																							class="form-control">
                                        </div>
                                      </div>
                                      <div style="margin-top: 0.4rem;"
																					class="row">
                                        <div class="col">
                                          <input id="state"
																							placeholder="State" type="text"
																							class="form-control">
                                        </div>
                                      </div>
                                      <div style="margin-top: 0.4rem;"
																					class="row">
                                        <div class="col">
                                          <input id="country"
																							placeholder="Country" type="text"
																							class="form-control">
                                        </div>
                                      </div>
                                      <div style="margin-top: 0.4rem;"
																					class="row">
                                        <div class="col">
                                          <input id="zipcode"
																							placeholder="Zipcode" type="number" pattern="\d*"
																							max="99999" class="form-control">
                                        </div>
                                      </div>
                                      <div style="margin-top: 0.4rem;"
																					class="row">
                                        <div class="col">
                                          <input id="location"
																							placeholder="Location" type="text"
																							class="form-control">
                                        </div>
                                      </div>
                                      <div style="margin-top: 0.4rem;"
																					class="row">
                                        <div class="col">
                                          <input id="room"
																							placeholder="Room Number" type="text"
																							class="form-control">
                                        </div>
                                      </div>
                                    </div>
                                    <div id="onlineForm"
																				class="form-group">
                                      <div class="row">
                                        <div class="col">
                                          <br>
                                          <input id="url"
																							placeholder="Training URL" type="text"
																							class="form-control">
                                        </div>
                                      </div>
                                      <div style="margin-top: 0.4rem;"
																					class="row">
                                        <div class="col">
                                          <input id="audio"
																							placeholder="Training Audio" type="text"
																							class="form-control">
                                        </div>
                                      </div>
                                    </div>
                                    <button style="float: right"
																				type="submit" class="btn btn-primary">Submit</button>
                                    <br>
                                  </form>
                                </div>
                              </div>
                            </div>
                          </div>
                          <!-- Accordion end -->
                        </div>
                        <div class="col">
                          <div id="card" class="card">
                            <div id="card-body" class="card-body">
                              <h5 class="card-title">Progress</h5>
                              <p class="card-text">Summary of the progress of this training request is shown below</p>
                            </div>
                            <ul class="list-group list-group-flush">
                              <li class="list-group-item">Shortlist Vendor
                                <span id="completed" title="Completed"
																	class="dot"></span>
                              </li>
                              <li class="list-group-item">Procurement Team Shortlist
                                <span id="completed" title="Completed"
																	class="dot"></span>
                              </li>
                              <li class="list-group-item">PM Approval
                                <span id="inprogressdot"
																	title="In Progress" class="dot"></span>
                              </li>
                              <li class="list-group-item">Training Schedule
                                <span id="pending" title="Pending"
																	class="dot"></span>
                              </li>
                            </ul>
                          </div>
                        </div>
                      </div>
                    </div>
                    <!-- Modal footer -->
                    <div class="modal-footer">
                      <button class="btn btn-primary">Save</button>
                    </div>
                  </div>
                </div>
              </div>

              <!-- Yosuf ElSaadany 3/15/2019 11:06 pm Adding Approval Email Popup -->
              <i id="modalIcons" title="Upload" data-toggle="modal"
									data-target="#approval" class="fas fa-upload"></i>
              <div class="modal" id="approval">
                <div class="modal-dialog modal-md">
                  <div class="modal-content">
                    <!-- Modal Header -->
                    <div class="modal-header">
                      <div class="modal-title">Attach Approval Email</div>
                      <button type="button" class="close"
													data-dismiss="modal">&times;</button>
                    </div>
                    <!-- Modal body -->
                    <div class="modal-body">
                      <input type="file" />
                    </div>
                    <!-- Modal footer -->
                    <div class="modal-footer">
                      <button class="btn btn-primary">Upload</button>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="card"
							style="margin-left: 10px; margin-top: 20px; width: 14rem;">
            <div class="card-body">
              <h5 class="card-title">Vendor Request</h5>
              <h6 class="card-subtitle mb-2 text-muted">ID: 100561</h6>
              <p class="card-text">Some sample text</p>
            </div>
          </div>
          <div class="card"
							style="margin-left: 10px; margin-top: 20px; width: 14rem;">
            <div class="card-body">
              <h5 class="card-title">Vendor Request</h5>
              <h6 class="card-subtitle mb-2 text-muted">ID: 100562</h6>
              <p class="card-text">Quick sample text</p>
            </div>
          </div>
          <div class="card"
							style="margin-left: 10px; margin-top: 20px; width: 14rem;">
            <div class="card-body">
              <h5 class="card-title">Vendor Request</h5>
              <h6 class="card-subtitle mb-2 text-muted">ID: 100563</h6>
              <p class="card-text">Some other sample text</p>
            </div>
          </div>
          <div class="card"
							style="margin-left: 10px; margin-top: 20px; width: 14rem;">
            <div class="card-body">
              <h5 class="card-title">Vendor Request</h5>
              <h6 class="card-subtitle mb-2 text-muted">ID: 100564</h6>
              <p class="card-text">More sample text</p>
            </div>
          </div>
          <div class="card"
							style="margin-left: 10px; margin-top: 20px; width: 14rem;">
            <div class="card-body">
              <h5 class="card-title">Vendor Request</h5>
              <h6 class="card-subtitle mb-2 text-muted">ID: 100565</h6>
              <p class="card-text">Quick sample text</p>
            </div>
          </div>
          <div class="card"
							style="margin-left: 10px; margin-top: 20px; width: 14rem;">
            <div class="card-body">
              <h5 class="card-title">Vendor Request</h5>
              <h6 class="card-subtitle mb-2 text-muted">ID: 100566</h6>
              <p class="card-text">Quick sample text</p>
            </div>
          </div>
          <div class="card"
							style="margin-left: 10px; margin-top: 20px; width: 14rem;">
            <div class="card-body">
              <h5 class="card-title">Vendor Request</h5>
              <h6 class="card-subtitle mb-2 text-muted">ID: 100567</h6>
              <p class="card-text">Quick sample text</p>
            </div>
          </div>
        </div>
      </div>
      <div id="inprogress" class="col-md-3"
					style="border: 10px solid lightgreen;  border-style: none none none solid;">
        <h4>In Progress</h4>
        <div class="card" style="margin-top: 20px; width: 14rem;">
            <div class="card-body">
                <h5 class="card-title">
                  <span><i class="fa fa-id-card"
									aria-hidden="true" style="color:#3c8dbc; float: inherit;"></i> 454664</span>
                  <span style="float: right;"><img
									id="vendor_icon2" style="margin-top:27px;"
									src="../resources/img/vendor-icon-placeholder.png" /></span>
                </h5>
                <hr style="width:75%;  border-color:#b9b9b9;">
            <h6 class="card-subtitle mb-2 text-muted"> <i
									class="fas fa-network-wired"
									style="float:none; margin-right: 5px;"></i>Module Name</h6>
            <p class="card-text">Take attendence.</p>
          </div>
        </div>
        <br>
      </div>
    </div>
    <br>
    <br>
    <br>
  </div>
  <!-- /.container -->

  <!-- Begin Ryan's Vendor Modal Code -->
  <!-- 3/15/2019 -->

  <!-- Begin VM Modal container-->
  <div class="container">
    <!-- The Modal -->
    <div class="modal" id="vm-modal">
      <div class="modal-dialog modal-xl">
        <!-- Modal content-->
        <div class="modal-content vm-mc" style="display:block;">

          <!-- Modal header -->
          <div class="modal-header vm-mh"
									style="background-color: #3c8dbc">


            <div class="container-fluid"
										style="background-color: #3c8dbc">
              <nav
											class="navbar navbar-expand-lg navbar-dark justify-content-end"
											style="background-color: #3c8dbc">
                <ul class="nav navbar-nav">
                  <li class="nav-item">

                    <h3 class="navbar-brand"
													style="color:white; position: absolute; left: 5px;">
                      Vendor Training Management</h3>

                  </li>
                  <li class="nav-item">
                    <a class="nav-link" data-dismiss="modal"
												id="close_modal">
                      <i class="fas fa-times"
													style="float: left; margin-top: 4px; margin-right: 5px;"></i>
                      Close</a>
                  </li>
                </ul>
              </nav>
            </div>
          </div>

          <!-- Modal body -->
          <div class="modal-body vm-mb">

            <!-- Vendor List Page -->
            <div class="vendor-list-pg">

                <input type="search" id="v-search" required
											placeholder="    Search" />

                <button type="button" class="btn btn-info" id="nv-btn">New Vendor</button>


              <br><br><br>
              <div class="container-fluid vm-grid-container">
                <div class="row vm-row">
                  <div class="col vm-col chkbox-col">
                    <label class="chkbox-container">
                      <input type="checkbox">
                      <span class="checkmark"></span>
                    </label>
                  </div>
                  <div class="col vm-col">Fedex</div>
                  <div class="col vm-col">Info1</div>
                  <div class="col vm-col">Info2</div>
                  <div class="col vm-col">Info3</div>
                  <div class="col vm-col">Edit</div>
                  <div class="col vm-col-del">Delete</div>
                  <div class="col vm-col">Trainers</div>
                  <div class="col vm-col">All Info</div>
                </div>
                <div class="row vm-row">
                  <div class="col vm-col chkbox-col">
                    <label class="chkbox-container">
                      <input type="checkbox">
                      <span class="checkmark"></span>
                    </label>
                  </div>
                  <div class="col vm-col">Fedex</div>
                  <div class="col vm-col">Info1</div>
                  <div class="col vm-col">Info2</div>
                  <div class="col vm-col">Info3</div>
                  <div class="col vm-col">Edit</div>
                  <div class="col vm-col-del">Delete</div>
                  <div class="col vm-col">Trainers</div>
                  <div class="col vm-col">All Info</div>
                </div>
              </div>
            </div>
            <!-- End Vendor List Page-->

            <!-- Add Vendor Page -->
            <div class="vendor-add-pg">
              <button type="button" class="btn btn-primary"
											id="return-btn">Return</button>
              &nbsp;
              <div class="container">
                <h3>Add a New Vendor Account</h3>
                <p>Fill out all pertinent information.</p>
                <form id="va-form">
                  <div class="form-group">
                    <label>Vendor Name</label>
                    <input type="text" class="form-control"
														id="nameForm" placeholder="Enter Vendor name">
                  </div>
                  <div class="form-group">
                    <label>Vendor Phone Number</label>
                    <input type="text"
														class="form-control input-medium bfh-phone" id="phoneForm"
														data-format="+1 (ddd) ddd-dddd"
														placeholder="Enter Vendor phone number">
                  </div>
                  <div class="form-group">
                    <label>Vendor Email Address</label>
                    <input type="email" class="form-control"
														id="emailForm" placeholder="Enter Vendor email">
                  </div>
                  <div class="form-group">
                    <label>Vendor City</label>
                    <input type="text" class="form-control"
														id="cityForm" placeholder="Enter Vendor City">
                  </div>
                  <div class="form-group">
                    <label>Vendor State</label>
                    <input type="text" class="form-control"
														id="stateForm" placeholder="Enter Vendor State">
                  </div>
                  <div class="form-group">
                    <label>Vendor Country</label>
                    <input type="text" class="form-control"
														id="countryForm" placeholder="Enter Vendor Country">
                  </div>
                  <div class="form-group">
                    <label>Vendor Zipcode</label>
                    <input type="number" class="form-control"
														id="zipForm" placeholder="Enter Vendor Zip">
                  </div>
                  <div class="form-group">
                    <label>Vendor Time Zone</label>
                    <input type="text" class="form-control"
														id="timezoneForm" placeholder="Enter Vendor Time Zone">
                  </div>
                  <br>
                </form>
                <div style="text-align:center; margin-bottom: 2vh;">
                  <button type="button" id="submit-btn"
													class="btn btn-success">Submit</button>
                </div>
              </div>
            </div>
            <!-- End Vendor Add Page -->
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- Add Vendor Side-Modal
  <div class="modal right fade" id="addVendorModal">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Modal sideout normal</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">�</span>
          </button>
        </div>
        <div class="modal-body">
          ...
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
          <button type="button" class="btn btn-primary">Save changes</button>
        </div>
      </div>
    </div>
  </div> -->




  <!-- End Ryan's Vendor Modal Code-->


  <!-- Footer -->
  <footer class="py-0"
					style="background-color: #3c8dbc; width: 100%; bottom: 0; position: fixed;">
    <div class="container">
      <p class="m-0 text-left text-white"
						style="position: relative; top: 10px">Version 0.0.1</p>
      <p class="m-0 text-right text-white"
						style="position: relative; top: -14px">Copyright 2019</b>
      </p>
    </div>
    </div>
    <!-- /.container -->
  </footer>

  <script>
			$(document).ready(
					function() {
						$('#hidebutton').click(function() {
							if ($('#inprogress').is(':visible')) {
								$('#inprogress').hide();
								$('processing-col').removeClass("col-md-4");
								$('processing-col').addClass("col-5");
								$('#itog').removeClass("fa-toggle-on");
								$('#itog').addClass("fa-toggle-off");
							} else {
								$('#inprogress').show();
								$('processing-col').removeClass("col-5");
								$('processing-col').addClass("col-md-4");
								$('#itog').removeClass("fa-toggle-off");
								$('#itog').addClass("fa-toggle-on");
							}
						});

						$('#hoverelement1').hover(function() {
							$main_text = $(this).text();
							$(this).html(" <b>David Collins</b>");
						}, function() {
							$(this).text($main_text);
						});

						$('#hoverelement2').hover(function() {
							$main_text = $(this).text();
							$(this).html(" <b>React Native</b>");
						}, function() {
							$(this).text($main_text);
						});

						$('#hoverelement3').hover(function() {
							$main_text = $(this).text();
							$(this).html(" <b>Phoenix, AZ</b>");
						}, function() {
							$(this).text($main_text);
						});

						$('#hoverelement4').hover(function() {
							$main_text = $(this).text();
							$(this).html(" <b>30 approx.</b>");
						}, function() {
							$(this).text($main_text);
						});

						$('#hoverelement5').hover(function() {
							$main_text = $(this).text();
							$(this).html(" <b>3-18-2019</b>");
						}, function() {
							$(this).text($main_text);
						});

						/**Jabril's funtion to create an onlick event for vendor training icon**/
						$("#vendor_icon").mouseover(function() {
							console.log('here');
							var vendis = $(".vendor-overlay");
							vendis.css("visibility", "visible");
						});
						$("#vendor_icon").mouseout(function() {
							var vendis = $(".vendor-overlay");
							vendis.css("visibility", "hidden");
						});

						$('#bpbutton').click(function() {
							if ($('#check1').is(':checked')) {
								$('#check1').hide();
								// $('#overlay1').hide();
								$("#p1").prependTo("#hp");
							}
							if ($('#check2').is(':checked')) {
								$('#check2').hide();
								$('#overlay2').hide();
								$("#p2").prependTo("#hp");
							}
						})

						$('#sb').change(
								function() {
									$('.card').show();
									var filter = $(this).val(); // get the value of the input, which we filter on
									$('.container').find(
											".card-title:not(:contains("
													+ filter + "))").parent()
											.css('display', 'none');

								});

					});
		</script>

  <script>
    function handler(e) {
      alert(e.target.value);
    }
  </script>

  <!-- <script>
    var start = $('#startDate').val();
    var end = $('#endDate').val();

    $('#startDate').change(function () {
      if (start)
        end.attr("min",start);
    }, false);

    $('#endDate').change(function () {
      if (end)
        start.max = end.value;
    }, false);

  </script> -->


			</body>
</html>
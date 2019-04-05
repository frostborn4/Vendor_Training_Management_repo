<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">

<head>
   <meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="author" content="Internal TRM Team">

<title>Internal TRM</title>

<!-- Bootstrap core CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<!-- Custom styles-->
<%-- <link href="<c:url value="/resources/css/style.css"/>" rel="stylesheet"> --%>
<%-- <link href="<c:url value="/resources/css/vtm-modal.css"/>" --%>
<!-- 	rel="stylesheet"> -->



<!-- Bootstrap core JavaScript -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="<c:url value="resources/vendor/bootstrap/js/bootstrap.bundle.min.js" /> "></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>


<!-- Local js scripts-->
<script src="<c:url value="resources/js/vtm.js" />"></script>
<script src="<c:url value="resources/js/trainingType.js" />"></script>


<!-- DT TEAM -->
<script src="<c:url value="/resources/js/main.js" />"></script>
<script src="<c:url value="/resources/js/popper.min.js" />"></script>

<!-- INTERNAL TEAM STUFF DON'T BREAK -->
<link rel="stylesheet" href="https://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css">
<script src="https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
<spring:url value="/resources/js/processInProgress.js" var="processInProgressITJs" />
<script src="${processInProgressITJs}"></script>
<link href="<c:url value="/resources/css/processInProgress.css"/>"
	rel="stylesheet">
	
<!-- FontAwesome ALSO NEEDED, DON'T BREAK-->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.2/css/all.css"
	integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr"
	crossorigin="anonymous">
</head>



<!-- Navigation -->
	<nav class="main-header navbar navbar-expand-lg navbar-dark fixed-top"
		style="background-color: #3c8dbc">
	<div class="container">
		<img src="<c:url value="/resources/img/AtosSyntelLogoMedWhite.png" />"
			height="30" /> <a class="navbar-brand"
			href="<c:url value="/dashboard" />"> <!--<b>Atos</b>Syntel--> <i>Internal
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
				<li class="nav-item py-1" style="padding-right: 5px"><input
					type="search" id="sb"
					style="color: white; border-radius: 15px; border: #fff 2px solid; background-color: #3c8dbc; padding-top: 2px; padding-bottom: 3px"
					required placeholder="  Filter..." /></li>
				<li class="nav-item"><a class="nav-link"
					onclick="location.href='/SpringApp/report'">Run Report</a></li>
				<li class="nav-item"><a class="nav-link" href="#">Internal
						Management</a></li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
					role="button" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> <i class="fas fa-user-circle"
						style="float: none;"></i> ${username}
				</a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<span class="dropdown-item">Welcome, ${fname} ${lname}</span><span
							class="dropdown-item">Your Vertical: ${uservert}</span>
						<div class="dropdown-divider"></div>
						<a onclick="location.href='/SpringApp/logout'"
							class="dropdown-item"> <b style="color: tomato">Logout</b>
						</a>
					</div></li>
			</ul>
		</div>
	</div>
	</nav>



	        <div class="pending col-md-12">
	            <div>
	                <b>${maheshFun.statusdesc}</b>
	            </div>
	        </div>


	<div class="row" style="margin-top: 60px; padding-left: 20%">
	    <div class="col-md-6" style="min-width:66%">
	        <a id="step1-btn" style="border-radius:8px 8px 0px 0px"href="javascript:void(0);" data-target="#step1Collapse" aria-controls="#step1Collapse" class="btn btn-info steps toggle-a" data-toggle="collapsed" data-toggle="collapse" aria-expanded="false">
	            <div class="step-font">Internal Training Requirements</div>
	            <i class="fas fa-angle-down rotate-icon"></i>
	        </a>
	        <div id="step1Collapse" class="collapse">
	    
	            <form:form action="../saveRequest/${maheshFun.trainingID}" style="margin-bottom: 5px;">
		
	                <a href="javascript:void(0);" data-target="#step11Collapse" aria-controls="#step11Collapse" class="btn btn-info stepsmini" data-toggle="collapse">
	            		<i class="fas fa-chalkboard-teacher"></i> Trainer
	            		<i class="fas fa-angle-down rotate-icon"></i>
	        		</a>
	
	                <div id="step11Collapse" class="collapse minicollapse">
	                
	                <div class="form-group">
	                    <label for="trainers" class="control-label col-md-6">Available Trainers:</label>
	                    <div class="col-md-8">
	                    
	                    <form:select path="trainerName" cssClass="form-control" id="trainers">
	                    		<form:option value=""><< Choose Trainer >></form:option>
	                        <c:forEach var="name" items="${alltrainers}">
								<form:option value="${name}">${name}</form:option>
							</c:forEach>
	                    </form:select>
	                        
	                    </div>
	
	                    <div class="col-md-2" style="margin-top: 10px;">
	                        <a href="" id="addTrainer" class="btn btn-info" style="width: 120px;">
	                            Add Other
	                            
	                        </a>
	                    </div>
	                </div>
	
	
					</div>
					<a href="javascript:void(0);" data-target="#step12Collapse" aria-controls="#step12Collapse" class="btn btn-info stepsmini" data-toggle="collapse">
	            		   <i class="far fa-compass"></i> Environment
	            		<i class="fas fa-angle-down rotate-icon"></i>
	        		</a>
					<div id="step12Collapse" class="collapse minicollapse">
						
	                <div class="form-group">
	                    <label class="control-label col-md-4">Mode:</label>
							<form:radiobutton path="mode" value="classroom" id="classroom"/>Classroom
							<form:radiobutton path="mode" value="virtual" id="virtual"/>Virtual
	
	                </div>
	                
	                <div id="modeClassroom">
	                	<div class="form-group">
	
	                        <div class="col-md-3">
	                        	<form:label path="address">Street Address</form:label>
	                        </div>
	                        	<form:input path="address"/>
	                    </div>
	                    <div class="form-group">
	                    	<div class="col-md-2"></div>
	                        <div class="col-md-3">
	                    		<form:label path="city">City</form:label>
	                        </div>
	                        	<form:input path="city"/>
	                        
	                    </div>
	                    <div class="form-group">
	                    	<div class="col-md-2"></div>
	                        <div class="col-md-3">
	                    		<form:label path="state">State</form:label>
	                    	</div>
	                        	<form:input path="state"/>
	                    </div>
	                    <div class="form-group">
	                    	<div class="col-md-2"></div>
	                        <div class="col-md-3">
	                    		<form:label path="country">Country</form:label>
	                        </div>
	                        	<form:input path="country" />
	                    </div>
	                    <div class="form-group">
	                    	<div class="col-md-2"></div>
	                        <div class="col-md-3">
		                    	<form:label path="zipCode">Zip Code</form:label>
	                        </div>
	                        	<form:input path="zipCode"/>
	                        
	                    </div>
	                    <div class="form-group">
	                    	<div class="col-md-2"></div>
	                        <div class="col-md-3">
	                    		<form:label path="roomNum">Room Number</form:label>
	                        </div>
	                        	<form:input path="roomNum"/>
	                    </div>
	                    
	                </div>
	                    
	                <div id="modeVirtual">
	                    <div class="form-group">
	                    	<div class="col-md-2"></div>
	                        <div class="col-md-3">
	                    		<form:label path="url">URL Link</form:label>
	                        </div>
	                        	<form:input path="url"/>
	                    </div>
						<div class="form-group">
	                    	<div class="col-md-2"></div>
	                        <div class="col-md-3">
	                    		<form:label path="phoneNum">Connection Phone</form:label>
	                        </div>
	                        	<form:input path="phoneNum"/>
	                    </div>
	                </div>
	
					</div>
					<a href="javascript:void(0);" data-target="#step13Collapse" aria-controls="#step13Collapse" class="btn btn-info stepsmini" data-toggle="collapse">
	            		<i class="far fa-calendar-alt"></i> Schedule
	            		<i class="fas fa-angle-down rotate-icon"></i>
	        		</a>
					<div id="step13Collapse" class="collapse minicollapse">
	
	                	<div class="form-group">
	                		<div class="col-md-2"></div>
	                    	<div class="col-md-6">
	                    		<form:label path="startDate">Start Date</form:label>
	                    	</div>
	                        	<form:input path="startDate"/>
	                	</div>
		                <div class="form-group">
		                    <div class="col-md-2"></div>
		                    <div class="col-md-6">
		                    	<form:label path="endDate">End Date</form:label>
		                    </div>
		                        	<form:input path="endDate"/>
		                </div>       
	                    <div class="form-group">
	                    	<div class="col-md-2"></div>
	                        <div class="col-md-6">
	                    		<form:label path="startTime">Start Time</form:label>
	                        </div>
	                        	<form:input path="startTime"/>
	                    </div>
	                    <div class="form-group">
	                    	<div class="col-md-2"></div>
	                        <div class="col-md-6">
	                    		<form:label path="endTime">End Time</form:label>
	                        </div>
	                        	<form:input path="endTime"/>
	                    </div>
	                    <div class="form-group">
	                    	<div class="col-md-2"></div>
	                        <div class="col-md-6">
	                    		<form:label  path="timeZone">Time Zone</form:label>
	                        </div>
	                        	<form:input path="timeZone"/>
	                    </div>
	                    <div class="form-group">
	                    	<div class="col-md-2"></div>
	                        <div class="col-md-6">
	                    		<form:label path="schedBreakdown">Explanation for Times</form:label>
	                    	</div>
	                        	<form:textarea maxlength="200" rows="3" cols="23" path="schedBreakdown" />
	                	</div>
	                </div>
	        
	        		<a href="javascript:void(0);" data-target="#step14Collapse" aria-controls="#step14Collapse" class="btn btn-info stepsmini"
	            		data-toggle="collapse">  <i class="far fa-comments"></i> Description <i class="fas fa-angle-down rotate-icon"></i>
	            		</a>
	            		
	        		<div id="step14Collapse" class="collapse minicollapse">
	
			            <div class="form-group">
			                <div class="col-md-3">
			                <form:label path="description">Description</form:label>
			                </div>
			                <form:textarea maxlength="200" rows="5" cols="40" path="description" />
			                
			            </div>
			        </div>
	                
					<div class = "col-md-8"; style="position: relative;">
					<form:button id="saveButtonITForm">Update</form:button>
					</div>
				</form:form>
			</div>
	    </div>
	    <!-- End First Column -->
	    
	    
	<div class="col-md-6" style="max-width: 33%;">
<!-- 		<div class="pending col-md-6"> -->
            <div>
                <b>${maheshFun.statusdesc}</b>
            </div>
<!--         </div> -->
		<table class="table">
			<thead>
				<tr>
					<th>Request ID#</th>
					<th>${maheshFun.trainingID }</th>
				</tr>
			</thead>
			<tbody class="tBodyLabel" style="background-color: #3c8dbc;">
				<tr>
					<td colspan="2" align="center">
						<i class="fas fa-chalkboard-teacher"></i>
					</td>
				</tr>
			</tbody>
			<tbody id="TrainerBlock">
				<tr>
					<td>Training Type:</td>
					<td>Internal Training</td>
				</tr>
				<tr>
					<td>Trainer Name</td>
					<td>${maheshFun.trainerName }</td>
				</tr>
				<tr>
					<td>Trainer ID</td>
					<td>${maheshFun.trainerID }</td>
				</tr>
			</tbody>
			<tbody class="tBodyLabel" style="background-color: #3c8dbc;">
				<tr>
					<td colspan="2" align="center"><i class="far fa-calendar-alt"></i>
					</td>
				</tr>
			</tbody>
			<tbody id="ScheduleBlock">
				<tr>
					<td>Start Date</td>
					<td>${maheshFun.startDate }</td>
				</tr>
				<tr>
					<td>End Date</td>
					<td>${maheshFun.endDate }</td>
				</tr>
				<tr>
					<td>Start Time</td>
					<td>${maheshFun.startTime }</td>
				</tr>
				<tr>
					<td>End Time</td>
					<td>${maheshFun.endTime }</td>
				</tr>
			</tbody>
			<tbody class="tBodyLabel" style="background-color: #3c8dbc;">
				<tr>
					<td colspan="2" align="center">
						<i class="far fa-compass"></i>
					</td>
				<tr>
			</tbody>
			<tbody id="ModeBlock">
					<td>Mode:</td>
					<td>${maheshFun.mode }</td>
				</tr>
				<tr>
					<td>URL:</td>
					<td>${maheshFun.url }</td>
				</tr>
				<tr>
					<td>Phone Connection Line:</td>
					<td>${maheshFun.phoneNum }</td>
				</tr>
				<tr>
					<td>Room:</td>
					<td>${maheshFun.roomNum }</td>
				</tr>
				<tr>
					<td>Address</td>
					<td>${maheshFun.address }</td>
				</tr>
				<tr>
					<td>City</td>
					<td>${maheshFun.city }</td>
				</tr>
				<tr>
					<td>State</td>
					<td>${maheshFun.state }</td>
				</tr>
				<tr>
					<td>Zip Code</td>
					<td>${maheshFun.zipCode }</td>
				</tr>
				<tr>
					<td>Country</td>
					<td>${maheshFun.country }</td>
				</tr>				
			</tbody>
		</table>
	</div>
</div>
<div class="modal-footer">
	<!-- 	Should include a drop-down select or buttons to move -->
	<!--      between a IT card and DT/VT cards -- should be included in everyone's footer -->
	<a href="../dashboard"><button type="button" class="btn btn-danger">Close</button></a>
	<!-- 			this button save should save via the method implemented in other button -->

</div>

<script>	
	$(document).ready(function() {
		
/* 		$("#step1-btn").on("click", function() {
			console.log("here");
			$("#step1Collapse").attr("class","collapse show");		
		}); */
		 
		 
 		 
 		$(".steps").on("click", function() {
			console.log("here");
			$(this).next('.collapse').slideToggle();	
		});
		
		$(".stepsmini").on("click", function() {
			console.log("here");
			$(this).next('.collapse').slideToggle();	
		});
		 
		 
		
		
	});
	</script>

</html>
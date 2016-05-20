<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>My Travel</title>
    <meta name="description" content="A admin dashboard theme that will get you started with Bootstrap 4. The sidebar toggles off-canvas on smaller screens." />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="generator" content="Codeply">

	<!-- Bootstrap v4a -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.2/css/bootstrap.min.css" />
    
    <!-- Font-Awesome -->
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" />
    
	<!-- Application Specific Styling -->
    <link rel="stylesheet" href="css/styles.css" />
    
  </head>
  <body>
    <nav class="navbar navbar-fixed-top navbar-dark bg-primary">
    <button class="navbar-toggler hidden-sm-up pull-right" type="button" data-toggle="collapse" data-target="#collapsingNavbar">
        ☰
    </button>
    <a class="navbar-brand" href="index.jsp">Home</a>
    	<div class="collapse navbar-toggleable-xs" id="collapsingNavbar">
        	<ul class="nav navbar-nav pull-right">
            	<li class="nav-item">
                	<a class="nav-link" href="" data-target="#aboutModal" data-toggle="modal">Connect</a>
            	</li>
        	</ul>
    	</div>
	</nav>

	<div class="container-fluid" id="main">
	
    <div class="row row-offcanvas row-offcanvas-left">
        <div class="col-md-3 col-lg-2 sidebar-offcanvas" id="sidebar" role="navigation">
            <ul class="nav nav-pills nav-stacked">
                <li id="addLink" class="nav-item"><a class="nav-link" href="#breakDiv">Add Trip</a></li>
                <li id="editLink" class="nav-item"><a class="nav-link" href="#breakDiv">Edit Trip</a></li>
                <li id="deleteLink" class="nav-item"><a class="nav-link" href="#breakDiv">Delete Trip</a></li>
            </ul>
        </div><!-- /.col-md-3 col-lg-2 sidebar-offcanvas -->

        <div class="col-md-9 col-lg-10 main">
            <!-- toggle sidebar button -->
            <p class="hidden-md-up">
                <button type="button" class="btn btn-primary-outline btn-sm" data-toggle="offcanvas"><i class="fa fa-chevron-left"></i> Menu</button>
            </p>

            <h1 class="display-1 hidden-xs-down">My International Travel</h1>
            
            <div class="row" style="margin-bottom:125px;">
            	<div id="map" class="img-responsive center-block"></div>
            </div><!-- /.row -->
            
            <div id="breakDiv" style="height:75px;"></div>
            
            <div class="row">
				<div id="myTrips" class="col-md-12">
					<div class="col-md-8">
						<h3 class="text-xs-center">My Trips</h3>
            			<div id="tripTable" class="table table-sm table-inverse table-responsive table-hover table-striped">
            				<!-- JS Create Table -->
            			</div>
            		</div>
					<div id="addTripDiv" class="col-md-4">
						<h3 class="text-xs-center">Add A Trip</h3>
						<form name="addTripForm" role="form" method="get" action="#" style="margin-left:40px;">
  							<div class="form-group">
								<input name="city" type="text" class="form-control" id="city" placeholder="Enter City" />
								</br>
								<input name="state" type="text" class="form-control" id="state" placeholder="Enter State" />
								</br>
								<input name="country" type="text" class="form-control" id="country" placeholder="Enter Country" />
								</br>
								<input name="code" type="text" class="form-control" id="code" placeholder="Enter Country Code" />
								</br>
								<input name="purpose" type="text" class="form-control" id="purpose" placeholder="Enter Purpose" />
								</br>
								<input name="duration" type="number" class="form-control" id="duration" placeholder="Enter Duration" />
								</br>
								<button id="addTripSubmit" name="submit" value="submit" type="submit" class="btn btn-default center-block">Submit</button>
							</div>
						</form>		
					</div>
            	</div>
            </div><!-- /.row -->
            
            <div class="row">
            	<div id="tripForm" class="col-md-4 col-md-offset-3">
            		<!-- JS Create Form -->
            	</div>
            </div><!-- /.row -->
            
    	</div>
	</div><!-- /.row row-offcanvas row-offcanvas-left -->
	</div><!-- /.container-fluid -->
	
	<footer>
	<div class="row" style="margin-top:75px;">
		<div class="col-lg-12">
		    <p class="text-xs-center">Special thanks to <a href="http://datamaps.github.io/">DatamapsJS</a>, <a href="http://startbootstrap.com/">Start Bootstrap</a> and <a href="http://skilldistillery.com/">Skill Distillery!</a></p>
			</br>
			<p class="text-xs-center"><a href="http://www.chrisriouxapplications.com" target="_blank">Chris Rioux Applications</a> &copy; 2016</p>
		</div>
	</div>
	<div class="row">
		<div class="col-md-6 col-md-offset-3" style="text-align:center;margin-bottom:25px;">
			<a href="https://twitter.com/chrisrioux_" target="_blank"><i class="fa fa-twitter fa-2x"></i></a>&nbsp;&nbsp;
			<a href="https://www.linkedin.com/in/chrisrioux" target="_blank"><i class="fa fa-linkedin fa-2x"></i></a>&nbsp;&nbsp;
			<a href="https://github.com/chris-rioux" target="_blank"><i class="fa fa-github fa-2x"></i></a>
			</br>
      	</div>
	</div><!-- /.row -->
	</footer>

	<!-- Modals -->
	<div id="aboutModal" class="modal fade" tabindex="-1" role="dialog"
		aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title text-xs-center">Full Stack Web Development</h4>
					<p class="text-xs-center">
						Check Out<a href="http://www.chrisriouxapplications.com"
							target="_blank"> Chris Rioux Applications.com</a>
					</p>
					<div class="modal-body">
						<div class="row">
							<div class="col-xs-4 text-xs-center" style="margin-top:35px;">
								<ul class="list-inline banner-social-buttons">
									<li id="topButton"><a href="https://twitter.com/chrisrioux_" target="_blank"
										class="btn btn-primary-outline"><i
										class="fa fa-twitter fa-fw"></i>&nbsp;&nbsp;Twitter</a>
									</li>
									<br> 
									<li><a href="https://github.com/chris-rioux" target="_blank"
										class="btn btn-primary-outline"><i
										class="fa fa-github-alt fa-fw"></i>&nbsp;&nbsp;Github</a>
									</li>
									<br>
									<li><a href="https://www.linkedin.com/in/chrisrioux"
										target="_blank" class="btn btn-primary-outline"><i
										class="fa fa-linkedin-square fa-fw"></i>&nbsp;&nbsp;Linkedin</a>
									</li>
									<br>								
								</ul>
							</div>
							<div class="col-xs-8">
								<img class="center-block" src="img/smallestPic.jpg" alt="">
								</br>
							</div>
						</div>
						<div class="modal-footer">
							<button class="btn btn-primary center-block" data-dismiss="modal"
								aria-hidden="true">OK</button>
						</div><!-- /.modal-footer -->
					</div><!-- /.modal-body -->
				</div><!-- /.modal-header -->
			</div><!-- /.modal-content -->
		</div><!-- /.modal-dialog -->
	</div><!-- /#aboutModal -->

    <!-- Bootstrap v4a Scripts -->    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.2.0/js/tether.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.2/js/bootstrap.min.js"></script>
    
    <script src="js/scripts.js"></script>
    <script src="app/components/app.js"></script>
    
    <!-- D3 & TopoJSON --> 
    <script src="https://cdnjs.cloudflare.com/ajax/libs/d3/3.5.3/d3.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/topojson/1.6.9/topojson.min.js"></script>
	
	<!-- DatamapsJS -->
	<script src="js/datamaps.world.min.js"></script>
	<script src="js/map.js"></script>

	
  </body>
</html>
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
	
    <!-- Gosling --> 
	<div class="container-fluid" style="margin-top:125px;text-align:center;">
		<div class="row" id="gosling">
			<h5 class="text-xs-center">Looks like something happened, <br/> But Ryan was here to handle it...</h5>
		    	<ul class="list-inline banner-social-buttons center-block">
                    <li>
                        <a href="index.jsp" class="btn btn-default btn-lg center-block"><i class="fa fa-home fa-fw"></i> <span class="network-name">Home</span></a>
                    </li>
                </ul>
			<a href="https://www.facebook.com/ryangoslingofficialpage/" target="_blank"><img class="img-responsive center-block" src="img/gosling404.jpeg"/></a>
		</div><!-- /.row -->
	</div>
	
	<hr>
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

	
  </body>
</html>
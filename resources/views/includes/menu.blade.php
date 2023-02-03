<section id="mu-menu">
    <nav class="navbar navbar-default" role="navigation">  
      <div class="container">
        <div class="navbar-header">
          <!-- FOR MOBILE VIEW COLLAPSED BUTTON -->
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <!-- LOGO -->              
          <!-- TEXT BASED LOGO -->
         <!--  <a class="navbar-brand" href="index.html"><i class="fa fa-university"></i><span>Varsity</span></a> -->
          <!-- IMG BASED LOGO  -->
          <a class="navbar-brand" href="{{url('/')}}"><img src="{{asset('assets/img/logo.png')}}" alt="logo"></a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul id="top-menu" class="nav navbar-nav navbar-right main-nav">
            <li class="active"><a href="{{url('/')}}">Home</a></li>            
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Course <span class="fa fa-angle-down"></span></a>
              <ul class="dropdown-menu" role="menu">
                <li><a href="{{url('/course-archive')}}">Course Archive</a></li>                
                <li><a href="{{url('/course-detail')}}">Course Detail</a></li>                
              </ul>
            </li>

            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Registration<span class="fa fa-angle-down"></span></a>
              <ul class="dropdown-menu" role="menu">
                <li><a href="{{url('/student-add')}}">Create Profile</a></li>                
                <!-- <li><a href="{{url('/student-view')}}">View</a></li>                 -->
              </ul>
            </li>  

            <li><a href="{{url('/gallery')}}">Gallery</a></li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Blog <span class="fa fa-angle-down"></span></a>
              <ul class="dropdown-menu" role="menu">
                <li><a href="{{url('/blog-archive')}}">Blog Archive</a></li>                
                <li><a href="{{url('/blog-single')}}">Blog Single</a></li>                
              </ul>
            </li>            
            <li><a href="{{url('/contact')}}">Contact</a></li>
            <!-- <li><a href="404.html">404 Page</a></li> -->

            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Admin <span class="fa fa-angle-down"></span></a>
              <ul class="dropdown-menu" role="menu">
                <li><a href="{{url('/login')}}">login</a></li>                
                <li><a href="{{url('/register')}}">Register</a></li>                
              </ul>
            </li>

            <li><a href="#" id="mu-search-icon"><i class="fa fa-search"></i></a></li>
          </ul>                     
        </div><!--/.nav-collapse -->        
      </div>     
    </nav>
  </section>
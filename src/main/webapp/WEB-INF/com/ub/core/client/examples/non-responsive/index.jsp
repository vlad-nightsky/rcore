<!-- Fixed navbar -->
<div class="navbar navbar-default navbar-fixed-top" role="navigation">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">Project name</a>
        </div>
        <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
                <li class="active"><a href="#">Home</a></li>
                <li><a href="#about">About</a></li>
                <li><a href="#contact">Contact</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">Action</a></li>
                        <li><a href="#">Another action</a></li>
                        <li><a href="#">Something else here</a></li>
                        <li class="divider"></li>
                        <li class="dropdown-header">Nav header</li>
                        <li><a href="#">Separated link</a></li>
                        <li><a href="#">One more separated link</a></li>
                    </ul>
                </li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="#">Link</a></li>
                <li><a href="#">Link</a></li>
                <li><a href="#">Link</a></li>
            </ul>
        </div>
        <!--/.nav-collapse -->
    </div>
</div>

<div class="container">

    <div class="page-header">
        <h1>Non-responsive Bootstrap</h1>

        <p class="lead">Disable the responsiveness of Bootstrap by fixing the width of the container and using the first
            grid system tier.</p>
    </div>

    <h3>What changes</h3>

    <p>Note the lack of the <code>&lt;meta name="viewport" content="width=device-width, initial-scale=1.0"&gt;</code>,
        which disables the zooming aspect of sites in mobile devices. In addition, we reset our container's width and
        are basically good to go.</p>

    <h3>Regarding navbars</h3>

    <p>As a heads up, the navbar component is rather tricky here in that the styles for displaying it are rather
        specific and detailed. Overrides to ensure desktop styles display are not as performant or sleek as one would
        like. Just be aware there may be potential gotchas as you build on top of this example when using the
        navbar.</p>

    <h3>Non-responsive grid system</h3>

    <div class="row">
        <div class="col-xs-4">One third</div>
        <div class="col-xs-4">One third</div>
        <div class="col-xs-4">One third</div>
    </div>

</div>
<!-- /container -->



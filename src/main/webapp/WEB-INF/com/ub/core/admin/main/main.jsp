<%@ page import="com.ub.core.menu.models.fields.MenuFields" %>
<%@ page import="com.ub.core.pages.routes.PagesAdminRoutes" %>
<%@ page import="com.ub.core.file.FileRoutes" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
<%--<%@ taglib uri="/WEB-INF/widgets/contactForm" prefix="cf" %>--%>

<%--<%@ page contentType="text/html; charset=UTF-8" language="java" %>--%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <!--[if IE]>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"><![endif]-->

    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta name="description" content="Neon Admin Panel"/>
    <meta name="author" content=""/>

    <title>Neon | Forms</title>

    <link rel="stylesheet" href="<c:url value="/static/a/js/jquery-ui/css/no-theme/jquery-ui-1.10.3.custom.min.css"/>">
    <link rel="stylesheet" href="<c:url value="/static/a/css/font-icons/entypo/css/entypo.css"/>">
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Noto+Sans:400,700,400italic">
    <link rel="stylesheet" href="<c:url value="/static/a/css/neon.css"/>">
    <link rel="stylesheet" href="<c:url value="/static/a/css/custom.css"/>">

    <script src="<c:url value="/static/a/js/jquery-1.10.2.min.js"/>"></script>

    <%--<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->--%>
    <%--<!--[if lt IE 9]>--%>
    <%--<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>--%>
    <%--<script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>--%>
    <%--<![endif]-->--%>

</head>
<body class="page-body" data-url="http://neon.dev">

<div class="page-container">
<!-- add class "sidebar-collapsed" to close sidebar by default, "chat-visible" to make chat appear always -->

<div class="sidebar-menu">


<header class="logo-env">

    <!-- logo -->
    <div class="logo">
        <a href="index.html">
            <img src="assets/images/logo@2x.png" width="120" alt=""/>
        </a>
    </div>

    <!-- logo collapse icon -->

    <div class="sidebar-collapse">
        <a href="#" class="sidebar-collapse-icon with-animation">
            <!-- add class "with-animation" if you want sidebar to have animation during expanding/collapsing transition -->
            <i class="entypo-menu"></i>
        </a>
    </div>


    <!-- open/close menu icon (do not remove if you want to enable menu on mobile devices) -->
    <div class="sidebar-mobile-menu visible-xs">
        <a href="#" class="with-animation"><!-- add class "with-animation" to support animation -->
            <i class="entypo-menu"></i>
        </a>
    </div>

</header>


<ul id="main-menu" class="">
<!-- add class "multiple-expanded" to allow multiple submenus to open -->
<!-- class "auto-inherit-active-class" will automatically add "active" class for parent elements who are marked already with class "active" -->
<!-- Search Bar -->
<li id="search">
    <form method="get" action="">
        <input type="text" name="q" class="search-input" placeholder="Search something..."/>
        <button type="submit">
            <i class="entypo-search"></i>
        </button>
    </form>
</li>
<li>
    <a href="index.html">
        <i class="entypo-gauge"></i>
        <span>Dashboard</span>
    </a>
    <ul>
        <li>
            <a href="index.html">
                <span>Dashboard 1</span>
            </a>
        </li>
        <li>
            <a href="dashboard-2.html">
                <span>Dashboard 2</span>
            </a>
        </li>
        <li>
            <a href="highlights.html">
                <span>What's New</span>
                <span class="badge badge-success badge-roundless">v1.1.3</span>
            </a>
        </li>
    </ul>
</li>
<li>
    <a href="layout-api.html">
        <i class="entypo-layout"></i>
        <span>Layouts</span>
    </a>
    <ul>
        <li>
            <a href="layout-api.html">
                <span>Layout API</span>
            </a>
        </li>
        <li>
            <a href="layout-collapsed-sidebar.html">
                <span>Collapsed Sidebar</span>
            </a>
        </li>
        <li>
            <a href="layout-fixed-sidebar.html">
                <span>Fixed Sidebar</span>
            </a>
        </li>
        <li>
            <a href="layout-chat-open.html">
                <span>Chat Open</span>
            </a>
        </li>
        <li>
            <a href="layout-horizontal-menu-boxed.html">
                <span>Horizontal Menu Boxed</span>
            </a>
        </li>
        <li>
            <a href="layout-horizontal-menu-fluid.html">
                <span>Horizontal Menu Fluid</span>
            </a>
        </li>
        <li>
            <a href="layout-mixed-menus.html">
                <span>Mixed Menus</span>
            </a>
        </li>
        <li>
            <a href="layout-page-transition-fade.html">
                <span>Page Enter Transitions</span>
            </a>
            <ul>
                <li>
                    <a href="layout-page-transition-fade.html">
                        <span>Fade Scale</span>
                    </a>
                </li>
                <li>
                    <a href="layout-page-transition-left-in.html">
                        <span>Left In</span>
                    </a>
                </li>
                <li>
                    <a href="layout-page-transition-right-in.html">
                        <span>Right In</span>
                    </a>
                </li>
                <li>
                    <a href="layout-page-transition-fade-only.html">
                        <span>Fade Only</span>
                    </a>
                </li>
            </ul>
        </li>
    </ul>
</li>
<li>
    <a href="ui-panels.html">
        <i class="entypo-newspaper"></i>
        <span>UI Elements</span>
    </a>
    <ul>
        <li>
            <a href="ui-panels.html">
                <span>Panels</span>
            </a>
        </li>
        <li>
            <a href="ui-tiles.html">
                <span>Tiles</span>
            </a>
        </li>
        <li>
            <a href="forms-buttons.html">
                <span>Buttons</span>
            </a>
        </li>
        <li>
            <a href="ui-typography.html">
                <span>Typography</span>
            </a>
        </li>
        <li>
            <a href="ui-tabs-accordions.html">
                <span>Tabs &amp; Accordions</span>
            </a>
        </li>
        <li>
            <a href="ui-tooltips-popovers.html">
                <span>Tooltips &amp; Popovers</span>
            </a>
        </li>
        <li>
            <a href="ui-navbars.html">
                <span>Navbars</span>
            </a>
        </li>
        <li>
            <a href="ui-breadcrumbs.html">
                <span>Breadcrumbs</span>
            </a>
        </li>
        <li>
            <a href="ui-badges-labels.html">
                <span>Badges &amp; Labels</span>
            </a>
        </li>
        <li>
            <a href="ui-progress-bars.html">
                <span>Progress Bars</span>
            </a>
        </li>
        <li>
            <a href="ui-modals.html">
                <span>Modals</span>
            </a>
        </li>
        <li>
            <a href="ui-blockquotes.html">
                <span>Blockquotes</span>
            </a>
        </li>
        <li>
            <a href="ui-alerts.html">
                <span>Alerts</span>
            </a>
        </li>
        <li>
            <a href="ui-pagination.html">
                <span>Pagination</span>
            </a>
        </li>
    </ul>
</li>
<li>
    <a href="mailbox.html">
        <i class="entypo-mail"></i>
        <span>Mailbox</span>
        <span class="badge badge-secondary">8</span>
    </a>
    <ul>
        <li>
            <a href="mailbox.html">
                <i class="entypo-inbox"></i>
                <span>Inbox</span>
            </a>
        </li>
        <li>
            <a href="mailbox-compose.html">
                <i class="entypo-pencil"></i>
                <span>Compose Message</span>
            </a>
        </li>
        <li>
            <a href="mailbox-message.html">
                <i class="entypo-attach"></i>
                <span>View Message</span>
            </a>
        </li>
    </ul>
</li>
<li class="active opened active">
    <a href="forms-main.html">
        <i class="entypo-doc-text"></i>
        <span>Forms</span>
    </a>
    <ul>
        <li class="active">
            <a href="forms-main.html">
                <span>Basic Elements</span>
            </a>
        </li>
        <li>
            <a href="forms-advanced.html">
                <span>Advanced Plugins</span>
            </a>
        </li>
        <li>
            <a href="forms-wizard.html">
                <span>Form Wizard</span>
            </a>
        </li>
        <li>
            <a href="forms-validation.html">
                <span>Data Validation</span>
            </a>
        </li>
        <li>
            <a href="forms-masks.html">
                <span>Input Masks</span>
            </a>
        </li>
        <li>
            <a href="forms-sliders.html">
                <span>Sliders</span>
            </a>
        </li>
        <li>
            <a href="forms-file-upload.html">
                <span>File Upload</span>
            </a>
        </li>
        <li>
            <a href="forms-wysiwyg.html">
                <span>Editors</span>
            </a>
        </li>
    </ul>
</li>
<li>
    <a href="tables-main.html">
        <i class="entypo-window"></i>
        <span>Tables</span>
    </a>
    <ul>
        <li>
            <a href="tables-main.html">
                <span>Basic Tables</span>
            </a>
        </li>
        <li>
            <a href="tables-datatable.html">
                <span>Data Tables</span>
                <span class="badge badge-warning badge-roundless">Updated</span>
            </a>
        </li>
    </ul>
</li>
<li>
    <a href="extra-icons.html">
        <i class="entypo-bag"></i>
        <span>Extra</span>
        <span class="badge badge-info badge-roundless">New Items</span>
    </a>
    <ul>
        <li>
            <a href="extra-icons.html">
                <span>Icons</span>
                <span class="badge badge-success">3</span>
            </a>
            <ul>
                <li>
                    <a href="extra-icons.html">
                        <span>Font Awesome</span>
                    </a>
                </li>
                <li>
                    <a href="extra-icons-entypo.html">
                        <span>Entypo</span>
                    </a>
                </li>
                <li>
                    <a href="extra-icons-glyphicons.html">
                        <span>Glyph Icons</span>
                    </a>
                </li>
            </ul>
        </li>
        <li>
            <a href="extra-portlets.html">
                <span>Portlets</span>
            </a>
        </li>
        <li>
            <a href="extra-google-maps.html">
                <span>Maps</span>
            </a>
            <ul>
                <li>
                    <a href="extra-google-maps.html">
                        <span>Google Maps</span>
                    </a>
                </li>
                <li>
                    <a href="extra-vector-maps.html">
                        <span>Vector Maps</span>
                    </a>
                </li>
            </ul>
        </li>
        <li>
            <a href="extra-chat-api.html">
                <span>Chat API</span>
            </a>
        </li>
        <li>
            <a href="extra-calendar.html">
                <span>Calendar</span>
            </a>
        </li>
        <li>
            <a href="extra-notes.html">
                <span>Notes</span>
                <span class="badge badge-secondary badge-roundless">New</span>
            </a>
        </li>
        <li>
            <a href="extra-lockscreen.html">
                <span>Lockscreen</span>
            </a>
        </li>
        <li>
            <a href="extra-login.html">
                <span>Login</span>
            </a>
        </li>
        <li>
            <a href="extra-invoice.html">
                <span>Invoice</span>
            </a>
        </li>
        <li>
            <a href="extra-gallery.html">
                <span>Gallery</span>
                <span class="badge badge-secondary badge-roundless">New</span>
            </a>
            <ul>
                <li>
                    <a href="extra-gallery.html">
                        <span>Albums</span>
                    </a>
                </li>
                <li>
                    <a href="extra-gallery-single.html">
                        <span>Single Album</span>
                    </a>
                </li>
            </ul>
        </li>
        <li>
            <a href="extra-profile.html">
                <span>Profile</span>
                <span class="badge badge-secondary badge-roundless">New</span>
            </a>
        </li>
        <li>
            <a href="extra-404.html">
                <span>404 Page</span>
            </a>
        </li>
        <li>
            <a href="extra-blank-page.html">
                <span>Blank Page</span>
            </a>
        </li>
        <li>
            <a href="extra-timeline.html">
                <span>Timeline</span>
                <span class="badge badge-secondary badge-roundless">New</span>
            </a>
        </li>
        <li>
            <a href="extra-timeline-centered.html">
                <span>Timeline Centered</span>
                <span class="badge badge-secondary badge-roundless">New</span>
            </a>
        </li>
        <li>
            <a href="extra-tocify.html">
                <span>Tocify</span>
            </a>
        </li>
        <li>
            <a href="ui-notifications.html">
                <span>Notifications</span>
            </a>
        </li>
        <li>
            <a href="extra-scrollbox.html">
                <span>Scrollbox</span>
            </a>
        </li>
        <li>
            <a href="extra-image-crop.html">
                <span>Image Crop</span>
                <span class="badge badge-secondary badge-roundless">New</span>
            </a>
        </li>
    </ul>
</li>
<li>
    <a href="charts.html">
        <i class="entypo-chart-bar"></i>
        <span>Charts</span>
    </a>
</li>
<li>
    <a href="#">
        <i class="entypo-flow-tree"></i>
        <span>Menu Levels</span>
    </a>
    <ul>
        <li>
            <a href="#">
                <i class="entypo-flow-line"></i>
                <span>Menu Level 1.1</span>
            </a>
        </li>
        <li>
            <a href="#">
                <i class="entypo-flow-line"></i>
                <span>Menu Level 1.2</span>
            </a>
        </li>
        <li>
            <a href="#">
                <i class="entypo-flow-line"></i>
                <span>Menu Level 1.3</span>
            </a>
            <ul>
                <li>
                    <a href="#">
                        <i class="entypo-flow-parallel"></i>
                        <span>Menu Level 2.1</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <i class="entypo-flow-parallel"></i>
                        <span>Menu Level 2.2</span>
                    </a>
                    <ul>
                        <li>
                            <a href="#">
                                <i class="entypo-flow-cascade"></i>
                                <span>Menu Level 3.1</span>
                            </a>
                            <ul>
                                <li>
                                    <a href="#">
                                        <i class="entypo-flow-branch"></i>
                                        <span>Menu Level 4.1</span>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="#">
                                <i class="entypo-flow-cascade"></i>
                                <span>Menu Level 3.2</span>
                            </a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="#">
                        <i class="entypo-flow-parallel"></i>
                        <span>Menu Level 2.3</span>
                    </a>
                </li>
            </ul>
        </li>
    </ul>
</li>
</ul>

</div>
<div class="main-content">

<div class="row">

<!-- Profile Info and Notifications -->
<div class="col-md-6 col-sm-8 clearfix">

<ul class="user-info pull-left pull-none-xsm">

    <!-- Profile Info -->
    <li class="profile-info dropdown"><!-- add class "pull-right" if you want to place this from right -->

        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
            <img src="assets/images/thumb-1@2x.png" alt="" class="img-circle" width="44"/>
            Art Ramadani
        </a>

        <ul class="dropdown-menu">

            <!-- Reverse Caret -->
            <li class="caret"></li>

            <!-- Profile sub-links -->
            <li>
                <a href="#">
                    <i class="entypo-user"></i>
                    Edit Profile
                </a>
            </li>

            <li>
                <a href="mailbox.html">
                    <i class="entypo-mail"></i>
                    Inbox
                </a>
            </li>

            <li>
                <a href="extra-calendar.html">
                    <i class="entypo-calendar"></i>
                    Calendar
                </a>
            </li>

            <li>
                <a href="#">
                    <i class="entypo-clipboard"></i>
                    Tasks
                </a>
            </li>
        </ul>
    </li>

</ul>

<ul class="user-info pull-left pull-right-xs pull-none-xsm">

<!-- Raw Notifications -->
<li class="notifications dropdown">

    <a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
        <i class="entypo-attention"></i>
        <span class="badge badge-info">6</span>
    </a>

    <ul class="dropdown-menu">
        <li class="top">
            <p class="small">
                <a href="#" class="pull-right">Mark all Read</a>
                You have <strong>3</strong> new notifications.
            </p>
        </li>

        <li>
            <ul class="dropdown-menu-list scroller">
                <li class="unread notification-success">
                    <a href="#">
                        <i class="entypo-user-add pull-right"></i>

				<span class="line">
					<strong>New user registered</strong>
				</span>

				<span class="line small">
					30 seconds ago
				</span>
                    </a>
                </li>

                <li class="unread notification-secondary">
                    <a href="#">
                        <i class="entypo-heart pull-right"></i>

				<span class="line">
					<strong>Someone special liked this</strong>
				</span>

				<span class="line small">
					2 minutes ago
				</span>
                    </a>
                </li>

                <li class="notification-primary">
                    <a href="#">
                        <i class="entypo-user pull-right"></i>

				<span class="line">
					<strong>Privacy settings have been changed</strong>
				</span>

				<span class="line small">
					3 hours ago
				</span>
                    </a>
                </li>

                <li class="notification-danger">
                    <a href="#">
                        <i class="entypo-cancel-circled pull-right"></i>

				<span class="line">
					John cancelled the event
				</span>

				<span class="line small">
					9 hours ago
				</span>
                    </a>
                </li>

                <li class="notification-info">
                    <a href="#">
                        <i class="entypo-info pull-right"></i>

				<span class="line">
					The server is status is stable
				</span>

				<span class="line small">
					yesterday at 10:30am
				</span>
                    </a>
                </li>

                <li class="notification-warning">
                    <a href="#">
                        <i class="entypo-rss pull-right"></i>

				<span class="line">
					New comments waiting approval
				</span>

				<span class="line small">
					last week
				</span>
                    </a>
                </li>
            </ul>
        </li>

        <li class="external">
            <a href="#">View all notifications</a>
        </li>
    </ul>

</li>

<!-- Message Notifications -->
<li class="notifications dropdown">

    <a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
        <i class="entypo-mail"></i>
        <span class="badge badge-secondary">10</span>
    </a>

    <ul class="dropdown-menu">
        <li>
            <ul class="dropdown-menu-list scroller">
                <li class="active">
                    <a href="#">
				<span class="image pull-right">
					<img src="assets/images/thumb-1.png" alt="" class="img-circle"/>
				</span>

				<span class="line">
					<strong>Luc Chartier</strong>
					- yesterday
				</span>

				<span class="line desc small">
					This ain’t our first item, it is the best of the rest.
				</span>
                    </a>
                </li>

                <li class="active">
                    <a href="#">
				<span class="image pull-right">
					<img src="assets/images/thumb-2.png" alt="" class="img-circle"/>
				</span>

				<span class="line">
					<strong>Salma Nyberg</strong>
					- 2 days ago
				</span>

				<span class="line desc small">
					Oh he decisively impression attachment friendship so if everything.
				</span>
                    </a>
                </li>

                <li>
                    <a href="#">
				<span class="image pull-right">
					<img src="assets/images/thumb-3.png" alt="" class="img-circle"/>
				</span>

				<span class="line">
					Hayden Cartwright
					- a week ago
				</span>

				<span class="line desc small">
					Whose her enjoy chief new young. Felicity if ye required likewise so doubtful.
				</span>
                    </a>
                </li>

                <li>
                    <a href="#">
				<span class="image pull-right">
					<img src="assets/images/thumb-4.png" alt="" class="img-circle"/>
				</span>

				<span class="line">
					Sandra Eberhardt
					- 16 days ago
				</span>

				<span class="line desc small">
					On so attention necessary at by provision otherwise existence direction.
				</span>
                    </a>
                </li>
            </ul>
        </li>

        <li class="external">
            <a href="mailbox.html">All Messages</a>
        </li>
    </ul>

</li>

<!-- Task Notifications -->
<li class="notifications dropdown">

    <a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
        <i class="entypo-list"></i>
        <span class="badge badge-warning">1</span>
    </a>

    <ul class="dropdown-menu">
        <li class="top">
            <p>You have 6 pending tasks</p>
        </li>

        <li>
            <ul class="dropdown-menu-list scroller">
                <li>
                    <a href="#">
				<span class="task">
					<span class="desc">Procurement</span>
					<span class="percent">27%</span>
				</span>

				<span class="progress">
					<span style="width: 27%;" class="progress-bar progress-bar-success">
						<span class="sr-only">27% Complete</span>
					</span>
				</span>
                    </a>
                </li>
                <li>
                    <a href="#">
				<span class="task">
					<span class="desc">App Development</span>
					<span class="percent">83%</span>
				</span>

				<span class="progress progress-striped">
					<span style="width: 83%;" class="progress-bar progress-bar-danger">
						<span class="sr-only">83% Complete</span>
					</span>
				</span>
                    </a>
                </li>
                <li>
                    <a href="#">
				<span class="task">
					<span class="desc">HTML Slicing</span>
					<span class="percent">91%</span>
				</span>

				<span class="progress">
					<span style="width: 91%;" class="progress-bar progress-bar-success">
						<span class="sr-only">91% Complete</span>
					</span>
				</span>
                    </a>
                </li>
                <li>
                    <a href="#">
				<span class="task">
					<span class="desc">Database Repair</span>
					<span class="percent">12%</span>
				</span>

				<span class="progress progress-striped">
					<span style="width: 12%;" class="progress-bar progress-bar-warning">
						<span class="sr-only">12% Complete</span>
					</span>
				</span>
                    </a>
                </li>
                <li>
                    <a href="#">
				<span class="task">
					<span class="desc">Backup Create Progress</span>
					<span class="percent">54%</span>
				</span>

				<span class="progress progress-striped">
					<span style="width: 54%;" class="progress-bar progress-bar-info">
						<span class="sr-only">54% Complete</span>
					</span>
				</span>
                    </a>
                </li>
                <li>
                    <a href="#">
				<span class="task">
					<span class="desc">Upgrade Progress</span>
					<span class="percent">17%</span>
				</span>

				<span class="progress progress-striped">
					<span style="width: 17%;" class="progress-bar progress-bar-important">
						<span class="sr-only">17% Complete</span>
					</span>
				</span>
                    </a>
                </li>
            </ul>
        </li>

        <li class="external">
            <a href="#">See all tasks</a>
        </li>
    </ul>

</li>

</ul>

</div>


<!-- Raw Links -->
<div class="col-md-6 col-sm-4 clearfix hidden-xs">

    <ul class="list-inline links-list pull-right">
        <li>
            <a href="#">Live Site</a>
        </li>

        <li class="sep"></li>

        <li>
            <a href="#" data-toggle="chat" data-animate="1" data-collapse-sidebar="1">
                <i class="entypo-chat"></i>
                Chat

                <span class="badge badge-success chat-notifications-badge is-hidden">0</span>
            </a>
        </li>

        <li class="sep"></li>

        <li>
            <a href="extra-login.html">
                Log Out <i class="entypo-logout right"></i>
            </a>
        </li>
    </ul>

</div>

</div>

<hr/>
<ol class="breadcrumb bc-3">
    <li>
        <a href="index.html"><i class="entypo-home"></i>Home</a>
    </li>
    <li>

        <a href="forms-main.html">Forms</a>
    </li>
    <li class="active">

        <strong>Basic Elements</strong>
    </li>
</ol>

<h2>Basic Form Elements</h2>
<br/>


<div class="row">
    <div class="col-md-12">

        <div class="panel panel-primary" data-collapsed="0">

            <div class="panel-heading">
                <div class="panel-title">
                    Default Form Inputs
                </div>

                <div class="panel-options">
                    <a href="#sample-modal" data-toggle="modal" data-target="#sample-modal-dialog-1" class="bg"><i
                            class="entypo-cog"></i></a>
                    <a href="#" data-rel="collapse"><i class="entypo-down-open"></i></a>
                    <a href="#" data-rel="reload"><i class="entypo-arrows-ccw"></i></a>
                    <a href="#" data-rel="close"><i class="entypo-cancel"></i></a>
                </div>
            </div>

            <div class="panel-body">

                <form role="form" class="form-horizontal form-groups-bordered">

                    <div class="form-group">
                        <label for="field-1" class="col-sm-3 control-label">Field 1</label>

                        <div class="col-sm-5">
                            <input type="text" class="form-control" id="field-1" placeholder="Placeholder">
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="field-2" class="col-sm-3 control-label">Disabled</label>

                        <div class="col-sm-5">
                            <input type="text" class="form-control" id="field-2" placeholder="Placeholder" disabled>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="field-3" class="col-sm-3 control-label">Password</label>

                        <div class="col-sm-5">
                            <input type="password" class="form-control" id="field-3"
                                   placeholder="Placeholder (Password)">
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="field-1" class="col-sm-3 control-label">File Field</label>

                        <div class="col-sm-5">
                            <input type="file" class="form-control" id="field-file" placeholder="Placeholder">
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="field-ta" class="col-sm-3 control-label">Textarea</label>

                        <div class="col-sm-5">
                            <textarea class="form-control" id="field-ta" placeholder="Textarea"></textarea>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="field-ta" class="col-sm-3 control-label">Autogrow</label>

                        <div class="col-sm-5">
                            <textarea class="form-control autogrow" id="field-ta"
                                      placeholder="I will grow as you type new lines."></textarea>
                        </div>
                    </div>

                    <div class="form-group has-error">
                        <label for="field-4" class="col-sm-3 control-label">Error field</label>

                        <div class="col-sm-5">
                            <input type="text" class="form-control" id="field-4" placeholder="Placeholder">
                        </div>
                    </div>

                    <div class="form-group has-warning">
                        <label for="field-5" class="col-sm-3 control-label">Warning field</label>

                        <div class="col-sm-5">
                            <input type="text" class="form-control" id="field-5" placeholder="Placeholder">
                        </div>
                    </div>

                    <div class="form-group has-success">
                        <label for="field-6" class="col-sm-3 control-label">Success field</label>

                        <div class="col-sm-5">
                            <input type="text" class="form-control" id="field-6" placeholder="Placeholder">
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-3 control-label">Select List</label>

                        <div class="col-sm-5">
                            <select class="form-control">
                                <option>Option 1</option>
                                <option>Option 2</option>
                                <option>Option 3</option>
                                <option>Option 4</option>
                                <option>Option 5</option>
                            </select>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-sm-offset-3 col-sm-5">
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox">Checkbox 1
                                </label>
                            </div>

                            <div class="checkbox">
                                <label>
                                    <input type="checkbox">Checkbox 2
                                </label>
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-sm-offset-3 col-sm-5">
                            <div class="radio">
                                <label>
                                    <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1"
                                           checked>Radio Input 1
                                </label>
                            </div>
                            <div class="radio">
                                <label>
                                    <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">Radio
                                    Input 2
                                </label>
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-sm-offset-3 col-sm-5">
                            <button type="submit" class="btn btn-default">Sign in</button>
                        </div>
                    </div>
                </form>

            </div>

        </div>

    </div>
</div>


<div class="row">
    <div class="col-md-12">

        <div class="panel panel-primary" data-collapsed="0">

            <div class="panel-heading">
                <div class="panel-title">
                    Input Sizes
                </div>

                <div class="panel-options">
                    <a href="#sample-modal" data-toggle="modal" data-target="#sample-modal-dialog-1" class="bg"><i
                            class="entypo-cog"></i></a>
                    <a href="#" data-rel="collapse"><i class="entypo-down-open"></i></a>
                    <a href="#" data-rel="reload"><i class="entypo-arrows-ccw"></i></a>
                    <a href="#" data-rel="close"><i class="entypo-cancel"></i></a>
                </div>
            </div>

            <div class="panel-body">

                <form role="form" class="form-horizontal form-groups-bordered">

                    <div class="form-group">
                        <label for="field-1" class="col-sm-3 control-label">Large</label>

                        <div class="col-sm-5">
                            <input type="text" class="form-control input-lg" id="field-1"
                                   placeholder="Large input (.input-lg)">
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="field-1" class="col-sm-3 control-label">Medium</label>

                        <div class="col-sm-5">
                            <input type="text" class="form-control" id="field-1" placeholder="Normal input">
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="field-1" class="col-sm-3 control-label">Small</label>

                        <div class="col-sm-5">
                            <input type="text" class="form-control input-sm" id="field-1"
                                   placeholder="Large input (.input-sm)">
                        </div>
                    </div>

                </form>

            </div>

        </div>

    </div>
</div>


<div class="row">
    <div class="col-md-12">

        <div class="panel panel-primary" data-collapsed="0">

            <div class="panel-heading">
                <div class="panel-title">
                    Input Groups &amp; Addons
                </div>

                <div class="panel-options">
                    <a href="#sample-modal" data-toggle="modal" data-target="#sample-modal-dialog-1" class="bg"><i
                            class="entypo-cog"></i></a>
                    <a href="#" data-rel="collapse"><i class="entypo-down-open"></i></a>
                    <a href="#" data-rel="reload"><i class="entypo-arrows-ccw"></i></a>
                    <a href="#" data-rel="close"><i class="entypo-cancel"></i></a>
                </div>
            </div>

            <div class="panel-body">

                <form role="form" class="form-horizontal form-groups-bordered">

                    <div class="form-group">
                        <label class="col-sm-3 control-label">Left addon</label>

                        <div class="col-sm-5">
                            <div class="input-group">
                                <span class="input-group-addon">@</span>
                                <input type="text" class="form-control" placeholder="Username">
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-3 control-label">Right addon</label>

                        <div class="col-sm-5">
                            <div class="input-group">
                                <input type="text" class="form-control">
                                <span class="input-group-addon">.00</span>
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-3 control-label">Both addons</label>

                        <div class="col-sm-5">
                            <div class="input-group">
                                <span class="input-group-addon">$</span>
                                <input type="text" class="form-control">
                                <span class="input-group-addon">.00</span>
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-3 control-label">Icon addon</label>

                        <div class="col-sm-5">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="entypo-mail"></i></span>
                                <input type="text" class="form-control" placeholder="Email">
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-3 control-label">Minimal type addon</label>

                        <div class="col-sm-5">
                            <div class="input-group minimal">
                                <span class="input-group-addon"><i class="entypo-mail"></i></span>
                                <input type="text" class="form-control" placeholder="Email">
                            </div>

                            <br/>

                            <div class="input-group minimal">
                                <input type="text" class="form-control" placeholder="Username">
                                <span class="input-group-addon"><i class="entypo-user"></i></span>
                            </div>
                        </div>
                    </div>


                    <div class="form-group">
                        <label class="col-sm-3 control-label">Buttons assigned</label>

                        <div class="col-sm-5">

                            <div class="input-group">
								<span class="input-group-btn">
									<button class="btn btn-success" type="button">Go!</button>
								</span>

                                <input type="text" class="form-control">
                            </div>

                            <br/>


                            <div class="input-group">
                                <input type="text" class="form-control">

								<span class="input-group-btn">
									<button class="btn btn-primary" type="button">Go!</button>
								</span>
                            </div>

                        </div>
                    </div>


                    <div class="form-group">
                        <label class="col-sm-3 control-label">Dropdowns assigned</label>

                        <div class="col-sm-5">

                            <div class="input-group">
                                <div class="input-group-btn">
                                    <button type="button" class="btn btn-gold dropdown-toggle" data-toggle="dropdown">
                                        Action <span class="caret"></span>
                                    </button>

                                    <ul class="dropdown-menu dropdown-gold">
                                        <li><a href="#">Action</a></li>
                                        <li><a href="#">Another action</a></li>
                                        <li><a href="#">Something else here</a></li>
                                        <li class="divider"></li>
                                        <li><a href="#">Separated link</a></li>
                                    </ul>
                                </div>

                                <input type="text" class="form-control">
                            </div>

                            <br/>


                            <div class="input-group">
                                <input type="text" class="form-control">

                                <div class="input-group-btn">
                                    <button type="button" class="btn btn-info">Action</button>
                                    <button type="button" class="btn btn-info dropdown-toggle" data-toggle="dropdown">
                                        <i class="entypo-info"></i>
                                    </button>

                                    <ul class="dropdown-menu dropdown">
                                        <li><a href="#">Action</a></li>
                                        <li><a href="#">Another action</a></li>
                                        <li><a href="#">Something else here</a></li>
                                        <li class="divider"></li>
                                        <li><a href="#">Separated link</a></li>
                                    </ul>
                                </div>
                            </div>

                        </div>

                    </div>

                </form>

            </div>

        </div>

    </div>
</div>


<div class="row">
    <div class="col-md-12">

        <div class="panel panel-primary" data-collapsed="0">

            <div class="panel-heading">
                <div class="panel-title">
                    Replaced Checkboxes &amp; Radio
                </div>

                <div class="panel-options">
                    <a href="#sample-modal" data-toggle="modal" data-target="#sample-modal-dialog-1" class="bg"><i
                            class="entypo-cog"></i></a>
                    <a href="#" data-rel="collapse"><i class="entypo-down-open"></i></a>
                    <a href="#" data-rel="reload"><i class="entypo-arrows-ccw"></i></a>
                    <a href="#" data-rel="close"><i class="entypo-cancel"></i></a>
                </div>
            </div>

            <div class="panel-body">

                <form role="form" class="form-horizontal form-groups-bordered">

                    <div class="form-group">
                        <label class="col-sm-3 control-label">Checkboxes</label>

                        <div class="col-sm-5">
                            <div class="checkbox checkbox-replace">
                                <input type="checkbox" id="chk-1" checked>
                                <label>Checkbox 1</label>
                            </div>

                            <div class="checkbox checkbox-replace">
                                <input type="checkbox" id="chk-2">
                                <label>Checkbox 2</label>
                            </div>

                            <div class="checkbox checkbox-replace">
                                <input type="checkbox" id="chk-3">
                                <label>Checkbox 3</label>
                            </div>

                            <div class="checkbox checkbox-replace">
                                <input type="checkbox" id="chk-4" disabled>
                                <label>Disabled</label>
                            </div>

                            <div class="checkbox checkbox-replace">
                                <input type="checkbox" id="chk-5" checked disabled>
                                <label>Checked &amp; Disabled</label>
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-3 control-label">Radio Inputs</label>

                        <div class="col-sm-5">
                            <div class="radio radio-replace">
                                <input type="radio" id="rd-1" name="radio1" checked>
                                <label>Radio 1</label>
                            </div>

                            <div class="radio radio-replace">
                                <input type="radio" id="rd-2" name="radio1">
                                <label>Radio 2</label>
                            </div>

                            <div class="radio radio-replace">
                                <input type="radio" id="rd-3" name="radio1">
                                <label>Radio 3</label>
                            </div>

                            <div class="radio radio-replace">
                                <input type="radio" id="rd-4" name="radio1" disabled>
                                <label>Disabled</label>
                            </div>

                            <div class="radio radio-replace">
                                <input type="radio" id="rd-5" name="radio2" checked disabled>
                                <label>Checked &amp; Disabled</label>
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-3 control-label">Colors</label>

                        <div class="col-sm-5">
                            <div class="checkbox checkbox-replace color-primary">
                                <input type="checkbox" id="chk-20" checked>
                                <label>Checkbox Red</label>
                            </div>

                            <div class="checkbox checkbox-replace color-red">
                                <input type="checkbox" id="chk-21">
                                <label>Checkbox Red</label>
                            </div>

                            <div class="checkbox checkbox-replace color-blue">
                                <input type="checkbox" id="chk-22">
                                <label>Checkbox Blue</label>
                            </div>

                            <div class="checkbox checkbox-replace color-green">
                                <input type="checkbox" id="chk-23">
                                <label>Checkbox Green</label>
                            </div>

                            <div class="checkbox checkbox-replace color-gold">
                                <input type="checkbox" id="chk-24">
                                <label>Checkbox Gold</label>
                            </div>
                        </div>
                    </div>

                </form>

            </div>

        </div>

    </div>
</div>


<div class="row">
    <div class="col-md-12">

        <div class="panel panel-primary" data-collapsed="0">

            <div class="panel-heading">
                <div class="panel-title">
                    Switches - Checkbox &amp; Radio
                </div>

                <div class="panel-options">
                    <a href="#sample-modal" data-toggle="modal" data-target="#sample-modal-dialog-1" class="bg"><i
                            class="entypo-cog"></i></a>
                    <a href="#" data-rel="collapse"><i class="entypo-down-open"></i></a>
                    <a href="#" data-rel="reload"><i class="entypo-arrows-ccw"></i></a>
                    <a href="#" data-rel="close"><i class="entypo-cancel"></i></a>
                </div>
            </div>

            <div class="panel-body">

                <form role="form" class="form-horizontal form-groups-bordered">

                    <div class="form-group">
                        <label class="col-sm-3 control-label">Toggle Check</label>

                        <div class="col-sm-5">
                            <div class="make-switch">
                                <input type="checkbox" checked="">
                            </div>
                        </div>
                    </div>


                    <div class="form-group">
                        <label class="col-sm-3 control-label">Toggle Sizes</label>

                        <div class="col-sm-5">

                            <div class="bs-example">
                                <div class="make-switch switch-large">
                                    <input type="checkbox">
                                </div>

                                <div class="make-switch">
                                    <input type="checkbox">
                                </div>

                                <div class="make-switch switch-small">
                                    <input type="checkbox">
                                </div>

                                <div class="make-switch switch-mini">
                                    <input type="checkbox">
                                </div>
                            </div>
                        </div>
                    </div>


                    <div class="form-group">
                        <label class="col-sm-3 control-label">No Animation</label>

                        <div class="col-sm-5">
                            <div class="make-switch switch-large" data-animated="false">
                                <input type="checkbox">
                            </div>
                        </div>
                    </div>


                    <div class="form-group">
                        <label class="col-sm-3 control-label">Disabled</label>

                        <div class="col-sm-5">
                            <div class="make-switch switch-large">
                                <input type="checkbox" disabled>
                            </div>
                        </div>
                    </div>


                    <div class="form-group">
                        <label class="col-sm-3 control-label">Custom Label</label>

                        <div class="col-sm-5">
                            <div id="label-switch" class="make-switch" data-on-label="Ja" data-off-label="Nein">
                                <input type="checkbox" checked>
                            </div>
                        </div>
                    </div>


                    <div class="form-group">
                        <label class="col-sm-3 control-label">Apply Icon</label>

                        <div class="col-sm-5">
                            <div class="make-switch" data-on-label="<i class='entypo-check'></i>"
                                 data-off-label="<i class='entypo-cancel'></i>">
                                <input type="checkbox" checked/>
                            </div>
                        </div>
                    </div>


                    <div class="form-group">
                        <label class="col-sm-3 control-label">Middle Label</label>

                        <div class="col-sm-5">
                            <div class="make-switch" data-text-label="<i class='entypo-user'></i>">
                                <input type="checkbox" checked/>
                            </div>
                        </div>
                    </div>


                    <div class="form-group">
                        <label class="col-sm-3 control-label">Colors</label>

                        <div class="col-sm-5">

                            <div class="bs-example">
                                <div class="make-switch" data-on="primary" data-off="info">
                                    <input type="checkbox" checked>
                                </div>

                                <div class="make-switch" data-on="info" data-off="success">
                                    <input type="checkbox" checked>
                                </div>

                                <div class="make-switch" data-on="success" data-off="warning">
                                    <input type="checkbox" checked>
                                </div>

                                <div class="make-switch" data-on="warning" data-off="danger">
                                    <input type="checkbox" checked>
                                </div>

                                <div class="make-switch" data-on="danger" data-off="default">
                                    <input type="checkbox" checked>
                                </div>

                                <div class="make-switch" data-on="default" data-off="primary">
                                    <input type="checkbox" checked>
                                </div>
                            </div>

                        </div>
                    </div>


                    <div class="form-group">
                        <label class="col-sm-3 control-label">Radio</label>

                        <div class="col-sm-5">

                            <div class="bs-example">
                                <div class="make-switch is-radio switch-small"
                                     data-text-label="<i class='entypo-user'></i>">
                                    <input type="radio" name="radio1" checked/>
                                </div>

                                <div class="make-switch is-radio switch-small"
                                     data-text-label="<i class='entypo-heart'></i>">
                                    <input type="radio" name="radio1"/>
                                </div>

                                <div class="make-switch is-radio switch-small"
                                     data-text-label="<i class='entypo-info'></i>">
                                    <input type="radio" name="radio1"/>
                                </div>

                                <div class="make-switch is-radio switch-small"
                                     data-text-label="<i class='entypo-globe'></i>">
                                    <input type="radio" name="radio1"/>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>

            </div>

        </div>

    </div>
</div>


<div class="row">
    <div class="col-md-12">

        <div class="panel panel-primary" data-collapsed="0">

            <div class="panel-heading">
                <div class="panel-title">
                    Input Grid
                </div>

                <div class="panel-options">
                    <a href="#sample-modal" data-toggle="modal" data-target="#sample-modal-dialog-1" class="bg"><i
                            class="entypo-cog"></i></a>
                    <a href="#" data-rel="collapse"><i class="entypo-down-open"></i></a>
                    <a href="#" data-rel="reload"><i class="entypo-arrows-ccw"></i></a>
                    <a href="#" data-rel="close"><i class="entypo-cancel"></i></a>
                </div>
            </div>

            <div class="panel-body">

                <div class="row">

                    <div class="col-md-12">
                        <input type="text" class="form-control" placeholder=".col-md-12">
                    </div>

                    <div class="clear"></div>
                    <br/>

                    <div class="col-md-6">
                        <input type="text" class="form-control" placeholder=".col-md-6">
                    </div>

                    <div class="col-md-6">
                        <input type="text" class="form-control" placeholder=".col-md-6">
                    </div>

                    <div class="clear"></div>
                    <br/>

                    <div class="col-md-4">
                        <input type="text" class="form-control" placeholder=".col-md-4">
                    </div>

                    <div class="col-md-4">
                        <input type="text" class="form-control" placeholder=".col-md-4">
                    </div>

                    <div class="col-md-4">
                        <input type="text" class="form-control" placeholder=".col-md-4">
                    </div>

                    <div class="clear"></div>
                    <br/>

                    <div class="col-md-3">
                        <input type="text" class="form-control" placeholder=".col-md-3">
                    </div>

                    <div class="col-md-3">
                        <input type="text" class="form-control" placeholder=".col-md-3">
                    </div>

                    <div class="col-md-3">
                        <input type="text" class="form-control" placeholder=".col-md-3">
                    </div>

                    <div class="col-md-3">
                        <input type="text" class="form-control" placeholder=".col-md-3">
                    </div>

                    <div class="clear"></div>
                    <br/>

                    <div class="col-md-2">
                        <input type="text" class="form-control" placeholder=".col-md-2">
                    </div>

                    <div class="col-md-2">
                        <input type="text" class="form-control" placeholder=".col-md-2">
                    </div>

                    <div class="col-md-2">
                        <input type="text" class="form-control" placeholder=".col-md-2">
                    </div>

                    <div class="col-md-2">
                        <input type="text" class="form-control" placeholder=".col-md-2">
                    </div>

                    <div class="col-md-2">
                        <input type="text" class="form-control" placeholder=".col-md-2">
                    </div>

                    <div class="col-md-2">
                        <input type="text" class="form-control" placeholder=".col-md-2">
                    </div>

                    <div class="clear"></div>
                    <br/>

                    <div class="col-md-1">
                        <input type="text" class="form-control" placeholder=".col-md-1">
                    </div>

                    <div class="col-md-1">
                        <input type="text" class="form-control" placeholder=".col-md-1">
                    </div>

                    <div class="col-md-1">
                        <input type="text" class="form-control" placeholder=".col-md-1">
                    </div>

                    <div class="col-md-1">
                        <input type="text" class="form-control" placeholder=".col-md-1">
                    </div>

                    <div class="col-md-1">
                        <input type="text" class="form-control" placeholder=".col-md-1">
                    </div>

                    <div class="col-md-1">
                        <input type="text" class="form-control" placeholder=".col-md-1">
                    </div>

                    <div class="col-md-1">
                        <input type="text" class="form-control" placeholder=".col-md-1">
                    </div>

                    <div class="col-md-1">
                        <input type="text" class="form-control" placeholder=".col-md-1">
                    </div>

                    <div class="col-md-1">
                        <input type="text" class="form-control" placeholder=".col-md-1">
                    </div>

                    <div class="col-md-1">
                        <input type="text" class="form-control" placeholder=".col-md-1">
                    </div>

                    <div class="col-md-1">
                        <input type="text" class="form-control" placeholder=".col-md-1">
                    </div>

                    <div class="col-md-1">
                        <input type="text" class="form-control" placeholder=".col-md-1">
                    </div>
                </div>

            </div>

        </div>

    </div>
</div>
<!-- Footer -->
<footer class="main">


    &copy; 2014 <strong>Neon</strong> Admin Theme by <a href="http://laborator.co" target="_blank">Laborator</a>

</footer>
</div>


<div id="chat" class="fixed" data-current-user="Art Ramadani" data-order-by-status="1" data-max-chat-history="25">

    <div class="chat-inner">


        <h2 class="chat-header">
            <a href="#" class="chat-close" data-animate="1"><i class="entypo-cancel"></i></a>

            <i class="entypo-users"></i>
            Chat
            <span class="badge badge-success is-hidden">0</span>
        </h2>


        <div class="chat-group" id="group-1">
            <strong>Favorites</strong>

            <a href="#" id="sample-user-123" data-conversation-history="#sample_history"><span
                    class="user-status is-online"></span> <em>Catherine J. Watkins</em></a>
            <a href="#"><span class="user-status is-online"></span> <em>Nicholas R. Walker</em></a>
            <a href="#"><span class="user-status is-busy"></span> <em>Susan J. Best</em></a>
            <a href="#"><span class="user-status is-offline"></span> <em>Brandon S. Young</em></a>
            <a href="#"><span class="user-status is-idle"></span> <em>Fernando G. Olson</em></a>
        </div>


        <div class="chat-group" id="group-2">
            <strong>Work</strong>

            <a href="#"><span class="user-status is-offline"></span> <em>Robert J. Garcia</em></a>
            <a href="#" data-conversation-history="#sample_history_2"><span class="user-status is-offline"></span> <em>Daniel
                A. Pena</em></a>
            <a href="#"><span class="user-status is-busy"></span> <em>Rodrigo E. Lozano</em></a>
        </div>


        <div class="chat-group" id="group-3">
            <strong>Social</strong>

            <a href="#"><span class="user-status is-busy"></span> <em>Velma G. Pearson</em></a>
            <a href="#"><span class="user-status is-offline"></span> <em>Margaret R. Dedmon</em></a>
            <a href="#"><span class="user-status is-online"></span> <em>Kathleen M. Canales</em></a>
            <a href="#"><span class="user-status is-offline"></span> <em>Tracy J. Rodriguez</em></a>
        </div>

    </div>

    <!-- conversation template -->
    <div class="chat-conversation">

        <div class="conversation-header">
            <a href="#" class="conversation-close"><i class="entypo-cancel"></i></a>

            <span class="user-status"></span>
            <span class="display-name"></span>
            <small></small>
        </div>

        <ul class="conversation-body">
        </ul>

        <div class="chat-textarea">
            <textarea class="form-control autogrow" placeholder="Type your message"></textarea>
        </div>

    </div>

</div>


<!-- Chat Histories -->
<ul class="chat-history" id="sample_history">
    <li>
        <span class="user">Art Ramadani</span>

        <p>Are you here?</p>
        <span class="time">09:00</span>
    </li>

    <li class="opponent">
        <span class="user">Catherine J. Watkins</span>

        <p>This message is pre-queued.</p>
        <span class="time">09:25</span>
    </li>

    <li class="opponent">
        <span class="user">Catherine J. Watkins</span>

        <p>Whohoo!</p>
        <span class="time">09:26</span>
    </li>

    <li class="opponent unread">
        <span class="user">Catherine J. Watkins</span>

        <p>Do you like it?</p>
        <span class="time">09:27</span>
    </li>
</ul>


<!-- Chat Histories -->
<ul class="chat-history" id="sample_history_2">
    <li class="opponent unread">
        <span class="user">Daniel A. Pena</span>

        <p>I am going out.</p>
        <span class="time">08:21</span>
    </li>

    <li class="opponent unread">
        <span class="user">Daniel A. Pena</span>

        <p>Call me when you see this message.</p>
        <span class="time">08:27</span>
    </li>
</ul>
</div>


<!-- Bottom Scripts -->
<script src="<c:url value="/static/a/js/gsap/main-gsap.js"/>"></script>
<script src="<c:url value="/static/a/js/jquery-ui/js/jquery-ui-1.10.3.minimal.min.js"/>"></script>
<script src="<c:url value="/static/a/js/bootstrap.min.js"/>"></script>
<script src="<c:url value="/static/a/js/joinable.js"/>"></script>
<script src="<c:url value="/static/a/js/resizeable.js"/>"></script>
<script src="<c:url value="/static/a/js/neon-api.js"/>"></script>
<script src="<c:url value="/static/a/js/bootstrap-switch.min.js"/>"></script>
<script src="<c:url value="/static/a/js/neon-chat.js"/>"></script>
<script src="<c:url value="/static/a/js/neon-custom.js"/>"></script>
<script src="<c:url value="/static/a/js/neon-demo.js"/>"></script>

</body>
</html>
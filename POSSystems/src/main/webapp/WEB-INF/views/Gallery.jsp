<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Ordering system | Gallery</title>
<!-- Tell the browser to be responsive to screen width -->
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">
<!-- Bootstrap 3.3.5 -->
<link rel="stylesheet" href="resources/bootstrap/css/bootstrap.min.css">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
<!-- Ionicons -->
<link rel="stylesheet"
	href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
<!-- jvectormap -->
<link rel="stylesheet"
	href="resources/plugins/jvectormap/jquery-jvectormap-1.2.2.css">
<!-- Timepicker -->
<link rel="stylesheet"
	href="resources/plugins/timepicker2/jquery.timepicker.css">
	
<!-- Core CSS file PhotoSwipe -->
<link rel="stylesheet" href="resources/plugins/PhotoSwipe/photoswipe.css"> 

<!-- Skin CSS file (styling of UI - buttons, caption, etc.) PhotoSwipe
     In the folder of skin CSS file there are also:
     - .png and .svg icons sprite, 
     - preloader.gif (for browsers that do not support CSS animations) -->
<link rel="stylesheet" href="resources/plugins/PhotoSwipe/default-skin/default-skin.css"> 

<!-- Theme style -->
<link rel="stylesheet"
	href="resources/bootstrap/dist/css/AdminLTE.css">
<!-- AdminLTE Skins. Choose a skin from the css/skins
         folder instead of downloading all of them to reduce the load. -->
<link rel="stylesheet"
	href="resources/bootstrap/dist/css/skins/_all-skins.min.css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <script>document.createElement('figure');</script>
    <![endif]-->
<style type="text/css">
.jqstooltip {
	position: absolute;
	left: 0px;
	top: 0px;
	visibility: hidden;
	background: rgb(0, 0, 0) transparent;
	background-color: rgba(0, 0, 0, 0.6);
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000,
		endColorstr=#99000000);
	-ms-filter:
		"progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000)";
	color: white;
	font: 10px arial, san serif;
	text-align: left;
	white-space: nowrap;
	padding: 5px;
	border: 1px solid white;
	z-index: 10000;
}

.jqsfield {
	color: white;
	font: 10px arial, san serif;
	text-align: left;
}
</style>
</head>
<body class="sidebar-mini skin-yellow fixed">
	<div class="wrapper">

		<header class="main-header">

			<!-- Logo -->
			<a href="index" class="logo"> <!-- mini logo for sidebar mini 50x50 pixels -->
				<span class="logo-mini"><b>O</b>Sys</span> <!-- logo for regular state and mobile devices -->
				<span class="logo-lg"><b>Order</b>System</span>
			</a>
			
			<!-- Header Navbar: style can be found in header.less -->
	        <nav class="navbar navbar-static-top" role="navigation">
	          <!-- Sidebar toggle button-->
	          <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
	            <span class="sr-only">Toggle navigation</span>
	          </a>
	        </nav>

		</header>
		<!-- Left side column. contains the logo and sidebar -->
		<aside class="main-sidebar">
			<!-- sidebar: style can be found in sidebar.less -->
			<section class="sidebar" style="height: auto;">
				<!-- sidebar menu: : style can be found in sidebar.less -->
				<ul class="sidebar-menu">
					<li class="header">MAIN NAVIGATION</li>
					<li><a href="/OrderingSystem/"> <i class="fa fa-home"></i>
							<span>Home</span>
					</a></li>
					<li><a href="/OrderingSystem/aboutus"> <i
							class="fa fa-calendar"></i> <span>About us</span>
					</a></li>
					<li><a href="/OrderingSystem/menu"> <i
							class="fa fa-cutlery"></i> <span>Menu</span>
					</a></li>
					<li><a href="/OrderingSystem/order"> <i
							class="fa fa-cart-plus"></i> <span>Order</span>
					</a></li>
					<li><a href="/OrderingSystem/reservation">
							<i class="fa fa-calendar-check-o"></i> <span>Reservation</span>
					</a></li>
					<li class="active"><a href="/OrderingSystem/gallery"> <i class="fa fa-tv"></i>
							<span>Gallery</span>
					</a></li>
					<li><a href="/OrderingSystem/contact"> <i
							class="fa fa-envelope"></i> <span>Contact</span>
					</a></li>

				</ul>
			</section>
			<!-- /.sidebar -->
		</aside>

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper" style="min-height: 916px;">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<h1>Gallery</h1>
				<ol class="breadcrumb">
					<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
					<li class="active">Gallery</li>
				</ol>
			</section>

			<!-- Main content -->
			<section class="content">
				<div class="row">
					<div class="col-md-12">
						<div class="box box-primary">
							<div class="box-header">
								<h3 class="box-title">Gallery</h3>
							</div>
							<div class="box-body">
								<c:forEach var="gallery" items="${galleries}">
									<div class="box-body">
										<h3>${gallery.gallery_name}</h3>
										<div id="demo-test-gallery" class="demo-gallery" data-pswp-uid="${gallery.gallery_id}">
											
											<c:forEach var="picture" items="${gallery.pictures}">
												<a href="${picture.picture_full}" data-size="${picture.picture_width}x${picture.picture_height}" data-med="${picture.picture_full}" data-med-size="1024x1024" data-author="${picture.picture_author}" class="demo-gallery__img--main">
													<img src="${picture.picture_thumb}" alt="">
													<figure>${picture.picture_caption}</figure>
												</a>
											</c:forEach>
											
										</div>
									</div>
								</c:forEach>
							</div>
						</div>
					</div>
				</div>
			</section>
			<!-- /.content -->
		</div>
		<!-- /.content-wrapper -->

		<footer class="main-footer">
			<div class="pull-right hidden-xs">
				<b>Version</b> 1.0.0
			</div>
			<strong>Copyright © 2016- <a
				href="https://www.facebook.com/mklisura1">Mesud Klisura</a>.
			</strong> All rights reserved.
		</footer>

	</div>
	<!-- ./wrapper -->

	<!-- jQuery 2.1.4 -->
	<script
		src="/OrderingSystem/resources/plugins/jQuery/jQuery-2.1.4.min.js"></script>
	<script
		src="/OrderingSystem/resources/plugins/jQueryUI/jquery-ui.js"></script>
	<!-- Bootstrap 3.3.5 -->
	<script src="/OrderingSystem/resources/bootstrap/js/bootstrap.min.js"></script>
	<!-- FastClick -->
	<script
		src="/OrderingSystem/resources/plugins/fastclick/fastclick.min.js"></script>
	<!-- AdminLTE App -->
	<script src="/OrderingSystem/resources/bootstrap/dist/js/app.min.js"></script>
	<!-- Sparkline -->
	<script
		src="/OrderingSystem/resources/plugins/sparkline/jquery.sparkline.min.js"></script>
	<!-- jvectormap -->
	<script
		src="/OrderingSystem/resources/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
	<script
		src="/OrderingSystem/resources/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
	<!-- SlimScroll 1.3.0 -->
	<script
		src="/OrderingSystem/resources/plugins/slimScroll/jquery.slimscroll.min.js"></script>
	<!-- ChartJS 1.0.1 -->
	<script src="/OrderingSystem/resources/plugins/chartjs/Chart.min.js"></script>
	<!-- Date picker -->
	<script src="/OrderingSystem/resources/plugins/datepicker/bootstrap-datepicker.js"></script>
	<!-- Time picker -->
	<script src="/OrderingSystem/resources/plugins/timepicker2/jquery.timepicker.min.js"></script>
	<!-- Core JS file PhotoSwipe -->
	<script src="/OrderingSystem/resources/plugins/PhotoSwipe/photoswipe.js"></script> 
	<!-- UI JS file PhotoSwipe -->
	<script src="/OrderingSystem/resources/plugins/PhotoSwipe/photoswipe-ui-default.js"></script> 
	
	<script type="text/javascript">
		$('#datepicker').datepicker({
			format : 'dd/mm/yyyy'
		});

		$('#timepicker').timepicker({
			'timeFormat':'H:i',
			'step': 15
		});
	</script>
	
	<script type="text/javascript">
	    (function() {
			var initPhotoSwipeFromDOM = function(gallerySelector) {
	
				var parseThumbnailElements = function(el) {
				    var thumbElements = el.childNodes,
				        numNodes = thumbElements.length,
				        items = [],
				        el,
				        childElements,
				        thumbnailEl,
				        size,
				        item;
	
				    for(var i = 0; i < numNodes; i++) {
				        el = thumbElements[i];
	
				        // include only element nodes 
				        if(el.nodeType !== 1) {
				          continue;
				        }
	
				        childElements = el.children;
	
				        size = el.getAttribute('data-size').split('x');
	
				        // create slide object
				        item = {
							src: el.getAttribute('href'),
							w: parseInt(size[0], 10),
							h: parseInt(size[1], 10),
							author: el.getAttribute('data-author')
				        };
	
				        item.el = el; // save link to element for getThumbBoundsFn
	
				        if(childElements.length > 0) {
				          item.msrc = childElements[0].getAttribute('src'); // thumbnail url
				          if(childElements.length > 1) {
				              item.title = childElements[1].innerHTML; // caption (contents of figure)
				          }
				        }
	
	
						var mediumSrc = el.getAttribute('data-med');
			          	if(mediumSrc) {
			            	size = el.getAttribute('data-med-size').split('x');
			            	// "medium-sized" image
			            	item.m = {
			              		src: mediumSrc,
			              		w: parseInt(size[0], 10),
			              		h: parseInt(size[1], 10)
			            	};
			          	}
			          	// original image
			          	item.o = {
			          		src: item.src,
			          		w: item.w,
			          		h: item.h
			          	};
	
				        items.push(item);
				    }
	
				    return items;
				};
	
				// find nearest parent element
				var closest = function closest(el, fn) {
				    return el && ( fn(el) ? el : closest(el.parentNode, fn) );
				};
	
				var onThumbnailsClick = function(e) {
				    e = e || window.event;
				    e.preventDefault ? e.preventDefault() : e.returnValue = false;
	
				    var eTarget = e.target || e.srcElement;
	
				    var clickedListItem = closest(eTarget, function(el) {
				        return el.tagName === 'A';
				    });
	
				    if(!clickedListItem) {
				        return;
				    }
	
				    var clickedGallery = clickedListItem.parentNode;
	
				    var childNodes = clickedListItem.parentNode.childNodes,
				        numChildNodes = childNodes.length,
				        nodeIndex = 0,
				        index;
	
				    for (var i = 0; i < numChildNodes; i++) {
				        if(childNodes[i].nodeType !== 1) { 
				            continue; 
				        }
	
				        if(childNodes[i] === clickedListItem) {
				            index = nodeIndex;
				            break;
				        }
				        nodeIndex++;
				    }
	
				    if(index >= 0) {
				        openPhotoSwipe( index, clickedGallery );
				    }
				    return false;
				};
	
				var photoswipeParseHash = function() {
					var hash = window.location.hash.substring(1),
				    params = {};
	
				    if(hash.length < 5) { // pid=1
				        return params;
				    }
	
				    var vars = hash.split('&');
				    for (var i = 0; i < vars.length; i++) {
				        if(!vars[i]) {
				            continue;
				        }
				        var pair = vars[i].split('=');  
				        if(pair.length < 2) {
				            continue;
				        }           
				        params[pair[0]] = pair[1];
				    }
	
				    if(params.gid) {
				    	params.gid = parseInt(params.gid, 10);
				    }
	
				    return params;
				};
	
				var openPhotoSwipe = function(index, galleryElement, disableAnimation, fromURL) {
				    var pswpElement = document.querySelectorAll('.pswp')[0],
				        gallery,
				        options,
				        items;
	
					items = parseThumbnailElements(galleryElement);
	
				    // define options (if needed)
				    options = {
	
				        galleryUID: galleryElement.getAttribute('data-pswp-uid'),
	
				        getThumbBoundsFn: function(index) {
				            // See Options->getThumbBoundsFn section of docs for more info
				            var thumbnail = items[index].el.children[0],
				                pageYScroll = window.pageYOffset || document.documentElement.scrollTop,
				                rect = thumbnail.getBoundingClientRect(); 
	
				            return {x:rect.left, y:rect.top + pageYScroll, w:rect.width};
				        },
	
				        addCaptionHTMLFn: function(item, captionEl, isFake) {
							if(!item.title) {
								captionEl.children[0].innerText = '';
								return false;
							}
							captionEl.children[0].innerHTML = item.title +  '<br/><small>Photo: ' + item.author + '</small>';
							return true;
				        },
						
				    };
	
	
				    if(fromURL) {
				    	if(options.galleryPIDs) {
				    		// parse real index when custom PIDs are used 
				    		// http://photoswipe.com/documentation/faq.html#custom-pid-in-url
				    		for(var j = 0; j < items.length; j++) {
				    			if(items[j].pid == index) {
				    				options.index = j;
				    				break;
				    			}
				    		}
					    } else {
					    	options.index = parseInt(index, 10) - 1;
					    }
				    } else {
				    	options.index = parseInt(index, 10);
				    }
	
				    // exit if index not found
				    if( isNaN(options.index) ) {
				    	return;
				    }
	
	
	
					var radios = document.getElementsByName('gallery-style');
					for (var i = 0, length = radios.length; i < length; i++) {
					    if (radios[i].checked) {
					        if(radios[i].id == 'radio-all-controls') {
	
					        } else if(radios[i].id == 'radio-minimal-black') {
					        	options.mainClass = 'pswp--minimal--dark';
						        options.barsSize = {top:0,bottom:0};
								options.captionEl = false;
								options.fullscreenEl = false;
								options.shareEl = false;
								options.bgOpacity = 0.85;
								options.tapToClose = true;
								options.tapToToggleControls = false;
					        }
					        break;
					    }
					}
	
				    if(disableAnimation) {
				        options.showAnimationDuration = 0;
				    }
	
				    // Pass data to PhotoSwipe and initialize it
				    gallery = new PhotoSwipe( pswpElement, PhotoSwipeUI_Default, items, options);
	
				    // see: http://photoswipe.com/documentation/responsive-images.html
					var realViewportWidth,
					    useLargeImages = false,
					    firstResize = true,
					    imageSrcWillChange;
	
					gallery.listen('beforeResize', function() {
	
						var dpiRatio = window.devicePixelRatio ? window.devicePixelRatio : 1;
						dpiRatio = Math.min(dpiRatio, 2.5);
					    realViewportWidth = gallery.viewportSize.x * dpiRatio;
	
	
					    if(realViewportWidth >= 1200 || (!gallery.likelyTouchDevice && realViewportWidth > 800) || screen.width > 1200 ) {
					    	if(!useLargeImages) {
					    		useLargeImages = true;
					        	imageSrcWillChange = true;
					    	}
					        
					    } else {
					    	if(useLargeImages) {
					    		useLargeImages = false;
					        	imageSrcWillChange = true;
					    	}
					    }
	
					    if(imageSrcWillChange && !firstResize) {
					        gallery.invalidateCurrItems();
					    }
	
					    if(firstResize) {
					        firstResize = false;
					    }
	
					    imageSrcWillChange = false;
	
					});
	
					gallery.listen('gettingData', function(index, item) {
					    if( useLargeImages ) {
					        item.src = item.o.src;
					        item.w = item.o.w;
					        item.h = item.o.h;
					    } else {
					        item.src = item.m.src;
					        item.w = item.m.w;
					        item.h = item.m.h;
					    }
					});
	
				    gallery.init();
				};
	
				// select all gallery elements
				var galleryElements = document.querySelectorAll( gallerySelector );
				for(var i = 0, l = galleryElements.length; i < l; i++) {
					galleryElements[i].setAttribute('data-pswp-uid', i+1);
					galleryElements[i].onclick = onThumbnailsClick;
				}
	
				// Parse URL and open gallery if it contains #&pid=3&gid=1
				var hashData = photoswipeParseHash();
				if(hashData.pid && hashData.gid) {
					openPhotoSwipe( hashData.pid,  galleryElements[ hashData.gid - 1 ], true, true );
				}
			};
	
			initPhotoSwipeFromDOM('.demo-gallery');
	
		})();
	</script>
	
	
	<!-- Root element of PhotoSwipe. Must have class pswp. -->
	<div class="pswp" tabindex="-1" role="dialog" aria-hidden="true">

	    <!-- Background of PhotoSwipe. 
	         It's a separate element as animating opacity is faster than rgba(). -->
	    <div class="pswp__bg"></div>
	
	    <!-- Slides wrapper with overflow:hidden. -->
	    <div class="pswp__scroll-wrap">
	
	        <!-- Container that holds slides. 
	            PhotoSwipe keeps only 3 of them in the DOM to save memory.
	            Don't modify these 3 pswp__item elements, data is added later on. -->
	        <div class="pswp__container">
	            <div class="pswp__item"></div>
	            <div class="pswp__item"></div>
	            <div class="pswp__item"></div>
	        </div>
	
	        <!-- Default (PhotoSwipeUI_Default) interface on top of sliding area. Can be changed. -->
	        <div class="pswp__ui pswp__ui--hidden">
	
	            <div class="pswp__top-bar">
	
	                <!--  Controls are self-explanatory. Order can be changed. -->
	
	                <div class="pswp__counter"></div>
	
	                <button class="pswp__button pswp__button--close" title="Close (Esc)"></button>
	
	                <button class="pswp__button pswp__button--share" title="Share"></button>
	
	                <button class="pswp__button pswp__button--fs" title="Toggle fullscreen"></button>
	
	                <button class="pswp__button pswp__button--zoom" title="Zoom in/out"></button>
	
	                <!-- Preloader demo http://codepen.io/dimsemenov/pen/yyBWoR -->
	                <!-- element will get class pswp__preloader--active when preloader is running -->
	                <div class="pswp__preloader">
	                    <div class="pswp__preloader__icn">
	                      <div class="pswp__preloader__cut">
	                        <div class="pswp__preloader__donut"></div>
	                      </div>
	                    </div>
	                </div>
	            </div>
	
	            <div class="pswp__share-modal pswp__share-modal--hidden pswp__single-tap">
	                <div class="pswp__share-tooltip"></div> 
	            </div>
	
	            <button class="pswp__button pswp__button--arrow--left" title="Previous (arrow left)">
	            </button>
	
	            <button class="pswp__button pswp__button--arrow--right" title="Next (arrow right)">
	            </button>
	
	            <div class="pswp__caption">
	                <div class="pswp__caption__center"></div>
	            </div>
	        </div>
	    </div>
	</div>
</body>
</html>

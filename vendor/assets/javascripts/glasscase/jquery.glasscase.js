;( function($, window, document, undefined){
    
    'use strict';

    var Modernizr = window.Modernizr;

    //1. Plugin constructor
    function GlassCase(element, options){
        var gcBase = this;
            
        gcBase.element = element.wrap("<div class='glass-case'></div>").parent();
        gcBase.init(options);
    }

    //2. Object with the default options of the plugin
    GlassCase.defaults = {
        //DISPLAY AREA
        widthDisplay:           400,        // Default width of the display image
        heightDisplay:          534,        // Default height of the display image
        isAutoScaleDisplay:     'true',
        isAutoScaleHeight:      'true', 
        isDownloadEnabled:      'true',
        downloadPosition:       3,
        //THUMBS AREA        
        nrThumbsPerRow:         5,          // Number of images per row        
        isThumbsOneRow:         'true',     // Show one row or all images: true -> will be shown only one row; false -> will be shown all images
        thumbsPosition:         'bottom',   // Default position of thumbs. Position is relative to the image display. Can take the values: top; bottom      
        firstThumbSelected:     0,          // Current element's index
        isOneThumbShown:        'false',
        colorActiveThumb:       -1,
        //ZOOM AREA
        zoomPosition:           'right',    // Default position for the zoom. It can take values: right; left
        isZoomEnabled:          'true',
        //OVERLAY AREA
        isOverlayEnabled:       'true',
        //GENERAL
        speed:                  400,        // Default speed
        easing:                 'linear',   // Default easing
        isKeypressEnabled:      'true',
        colorIcons:             -1          //the color of the icons
    };

    //3. Adding methods to the plugin object
    GlassCase.prototype = {
        init:                   function(options){            
            var gcBase = this;

            // Merging user's options with the default options
            gcBase.config = $.extend(true, {}, GlassCase.defaults, options);

            // Saving user's options to a private object
            gcBase._options = options;

            gcBase.supportCanvas = Modernizr.canvas;
            
            var ctntDisplayArea =    "<div class='gc-display-area'>" +                                     
                                        "<div class='gc-icon gc-icon-download'></div>"+ 
                                        "<div class='gc-icon gc-icon-next'></div>" +
                                        "<div class='gc-icon gc-icon-prev'></div>" +                                    
                                        "<div class='gc-display-container'>" +                                          
                                            "<div class='gc-lens gc-hide'></div>" +
                                            "<img class='gc-display-display' alt='Display Image' />" + 
                                        "</div>" +  
                                     "</div>";                                   
            var ctntZoomArea =       "<div class='gc-zoom gc-hide'>" +
                                        "<div class='gc-zoom-container'><img alt='Zoomed Image' /></div>" +
                                     "</div>";
            var ctntOverlayArea =    "<div class='gc-overlay-area gc-hide'>" +
                                        "<div class='gc-icon gc-icon-close'></div>" +                                
                                        "<div class='gc-icon gc-icon-next'></div>" +
                                        "<div class='gc-icon gc-icon-prev'></div>" +
                                        "<div class='gc-overlay-container'>" +
                                            "<img class='gc-overlay-display' alt='Overlay Image' />" +
                                        "</div>" +
                                     "</div>";
            
            var ctntThumbsPrevNext = "<div class='gc-thumbs-area-prev'><div class='gc-icon gc-icon-prev'></div></div>" +
                                     "<div class='gc-thumbs-area-next'><div class='gc-icon gc-icon-next'></div></div>";
            // Setting the position of the thumb images
            if(gcBase.config.thumbsPosition == 'top'){
                gcBase.element.append(ctntDisplayArea);
            }
            else{
                gcBase.element.prepend(ctntDisplayArea);
            }            

            gcBase.element.prepend(ctntZoomArea);            
            gcBase.element.prepend(ctntOverlayArea);

            // Plugin variables
            // Loading
            gcBase.gcLoader =             $("<div class='gc-loading'></div>");
            gcBase.gcLoading =            gcBase.element.find('.gc-loading');
            
            // gcImgNaturalSizes: Array that will hold the sizes of all the images
            gcBase.gcImgNaturalSizes =    [];
            
            // Display: Area, Container, Display, Lens, Download Icon
            gcBase.gcDisplayArea =        gcBase.element.find('.gc-display-area');
            gcBase.gcDisplayContainer =   gcBase.gcDisplayArea.find('.gc-display-container');
            gcBase.gcDisplayDisplay =     gcBase.gcDisplayContainer.find('.gc-display-display');            
            gcBase.gcLens =               gcBase.gcDisplayContainer.find('.gc-lens');
            gcBase.gcDisplayDownload =    gcBase.gcDisplayArea.find('.gc-icon-download'); 
            gcBase.gcDisplayPrevious =    gcBase.gcDisplayArea.find('.gc-icon-prev');
            gcBase.gcDisplayNext =        gcBase.gcDisplayArea.find('.gc-icon-next');

            // Zoom: Area, Display
            gcBase.gcZoom =               gcBase.element.find('.gc-zoom');
            gcBase.gcZoomContainer =      gcBase.gcZoom.find('.gc-zoom-container');
            gcBase.gcZoomDisplay =        gcBase.gcZoomContainer.find('img');
            
            // Overlay: Area, Display, Close Icon, Previous Icon, Next Icon
            gcBase.gcOverlayArea =        gcBase.element.find('.gc-overlay-area');
            gcBase.gcOverlayContainer =   gcBase.gcOverlayArea.find('.gc-overlay-container'); 
            gcBase.gcOverlayDisplay =     gcBase.gcOverlayContainer.find('.gc-overlay-display');
            gcBase.gcOverlayPrevious =    gcBase.gcOverlayArea.find('.gc-icon-prev');
            gcBase.gcOverlayNext =        gcBase.gcOverlayArea.find('.gc-icon-next');
            gcBase.gcOverlayClose =       gcBase.gcOverlayArea.find('.gc-icon-close');

            // Thumbs: Area, Ul, Li, AreaPrevious, AreaNext, Previous, Next, Img, LiDiv
            gcBase.gcThumbsUl =           gcBase.element.find('ul');  
            gcBase.gcThumbsUl.wrap("<div class='gc-thumbs-area'></div>");                   
            gcBase.gcThumbsArea =         gcBase.element.find('.gc-thumbs-area');
            gcBase.gcThumbsArea.append(ctntThumbsPrevNext);
            gcBase.gcThumbsAreaPrevious = gcBase.gcThumbsArea.find('.gc-thumbs-area-prev');
            gcBase.gcThumbsPrevious =     gcBase.gcThumbsAreaPrevious.find('.gc-icon-prev');
            gcBase.gcThumbsAreaNext =     gcBase.gcThumbsArea.find('.gc-thumbs-area-next');
            gcBase.gcThumbsNext =         gcBase.gcThumbsAreaNext.find('.gc-icon-next');
            gcBase.gcThumbsLi =           gcBase.gcThumbsUl.find('li');
            gcBase.gcThumbsImg =          gcBase.gcThumbsLi.find('img');
            gcBase.gcThumbsImg.wrap('<div class="gc-li-display-container"></div>');
            gcBase.gcThumbsLiDiv =        gcBase.gcThumbsLi.find('.gc-li-display-container');            
            gcBase.gcTotalThumbsImg =     gcBase.gcThumbsImg.length;
            gcBase.gcThumbsUl.removeClass('gc-start'); 

            if(gcBase.config.colorIcons != -1){
                gcBase.element.find('.gc-icon').css('color', gcBase.config.colorIcons);
            }
            
            if(gcBase.config.isDownloadEnabled == 'false' || gcBase.supportCanvas == false){
                gcBase.gcDisplayDownload.addClass('gc-hide');
            }
            else{
                //gcBase.gcDisplayDownload
                var cssDownloadPosition = {top: '', bottom: '', right: '', left: ''};

                switch(gcBase.config.downloadPosition){
                    case 1:
                        cssDownloadPosition.top = 0;
                        cssDownloadPosition.left = 0;
                        break;
                    case 2:
                        cssDownloadPosition.top = 0;
                        cssDownloadPosition.right = 0;
                        break;
                    case 4:
                        cssDownloadPosition.bottom = 0;
                        cssDownloadPosition.right = 0;
                        break;
                    default:
                        cssDownloadPosition.bottom = 0;
                        cssDownloadPosition.left = 0;
                        break;
                }
                gcBase.gcDisplayDownload.css(cssDownloadPosition);
            }

            // Setting the indexes of the position of the images
            if(isNaN(gcBase.config.firstThumbSelected) == false && 
                parseFloat(gcBase.config.firstThumbSelected) > -1 &&
                parseFloat(gcBase.config.firstThumbSelected) <= (gcBase.gcThumbsLi.length - 1)){
                gcBase.current = gcBase.config.firstThumbSelected;    
            }
            else{
                gcBase.current = gcBase.config.firstThumbSelected;                    
            }
            
            gcBase.currentSlide = Math.floor(gcBase.current/gcBase.config.nrThumbsPerRow);
            gcBase.old = 0;
            
            gcBase.currentMousePos = {x: -1, y: -1};
            gcBase.resizeTimer = 0;            
            // Show display
            gcBase.gcDisplayDisplay.attr('src', gcBase.gcThumbsImg.eq(gcBase.current).attr('src'));
            
            //Preparing for loading
            gcBase.setup();

            $.when(gcBase.preloadImages()).done( function() {					
                gcBase.update();
                gcBase.initEvents();               
			});      
        }, 
        preloadImages:          function(){
			var gcBase = this;

			var countLoadedImages	= 0,
                countTotalImages = gcBase.gcTotalThumbsImg;

            // Object that will hold the natural sizes of the image
            function GCImageSize(width, height){
                this.width = width;
                this.height = height;
            };
			
            return $.Deferred(
			    //beforeStart
				function(dfd) {			
					gcBase.gcThumbsImg.each( function( index ){						
						$('<img/>')
                        .on('load', function(){
                            //1.
                            var lWidth = this.width,
                                lHeight = this.height,
                                lGCImageSize = new GCImageSize( lWidth, lHeight),
                                index = gcBase.gcThumbsLi.find("img[src*='" + $(this).attr('src') +"']").parents('li').index();
                            gcBase.gcImgNaturalSizes[index] = lGCImageSize;
                            //2.
                            gcBase.setupThumbImg(gcBase.gcThumbsLi.eq(index), index);

                            //3.                            
                            gcBase.removeLoader(gcBase.gcThumbsLi.eq(index));
                            gcBase.gcThumbsLi.eq(index).find('.gc-li-display-container').removeClass('gc-hide');
                            
                            //4.
                            if(gcBase.current == index){
                                gcBase.removeLoader(gcBase.gcDisplayArea);
                                gcBase.gcDisplayContainer.removeClass('gc-hide');
                                gcBase.setupDisplayDisplay();  
                                gcBase.setupLens(); 
                            }

							if( ++countLoadedImages === countTotalImages ){							
								dfd.resolve();								
							}						
						})
                        .attr( 'src', $(this).attr('src'));
					});					
				}				
			).promise();
			
		},
        setup:                  function(){
            var gcBase = this;
            
            var gcWidth = gcBase.element.parent().width() > gcBase.config.widthDisplay ? (gcBase.config.widthDisplay) : gcBase.element.parent().width();
            gcBase.element.css({'width': gcWidth});

            // DISPLAY
            gcBase.setupDisplayArea();

            // THUMBS
            if(gcBase.config.isOneThumbShown == 'false' && gcBase.gcTotalThumbsImg == 1){
                gcBase.gcThumbsArea.outerHeight(0);
                gcBase.gcThumbsArea.addClass('gc-hide');
                gcBase.config.isKeypressEnabled = 'false';
            }
            else{
                gcBase.config.isOneThumbShown='true';
                gcBase.setupThumbs();
            }
            
            // OVERLAY: Setting centered position for NAVIGATION BUTTONS: previous/next
            if(gcBase.gcTotalThumbsImg == 1){
                gcBase.gcOverlayPrevious.addClass('gc-hide');
                gcBase.gcOverlayNext.addClass('gc-hide');
            }
            else{
                gcBase.gcOverlayPrevious.css('margin-top',  -(gcBase.gcOverlayPrevious.outerHeight()/2));
                gcBase.gcOverlayNext.css('margin-top',  -(gcBase.gcOverlayNext.outerHeight()/2));
            }

            // COMPONENT
            gcBase.element.css({'height': gcBase.gcThumbsArea.outerHeight(true)+gcBase.gcDisplayArea.outerHeight(true)});  
        },
        setupDisplayArea:       function(){
            var gcBase = this;

            var currentDisplayAreaWidth, currentDisplayAreaHeight,
                nextDisplayAreaWidth, nextDisplayAreaHeight,
                asWidth = gcBase.config.widthDisplay, asHeight = gcBase.config.heightDisplay;

            gcBase.gcDisplayArea.css({'height': '0', 'width': '0'});
            
            nextDisplayAreaWidth = gcBase.element.outerWidth();
            nextDisplayAreaHeight = nextDisplayAreaWidth * (asHeight/asWidth);
            
            gcBase.gcDisplayArea.css({'height': nextDisplayAreaHeight, 'width': nextDisplayAreaWidth});            

            // Display: Setting centered position for NAVIGATION BUTTONS: previous/next
            gcBase.gcDisplayPrevious.css('margin-top',  -(gcBase.gcDisplayPrevious.outerHeight()/2));
            gcBase.gcDisplayNext.css('margin-top',  -(gcBase.gcDisplayNext.outerHeight()/2));

            if(gcBase.gcTotalThumbsImg == 1){
                gcBase.gcDisplayPrevious.addClass('gc-hide');
                gcBase.gcDisplayNext.addClass('gc-hide');
            }
            gcBase.gcDisplayContainer.addClass('gc-hide');
            gcBase.addLoader(gcBase.gcDisplayArea);
        },
        setupDisplayDisplay:    function(){
            var gcBase = this;
            
            gcBase.gcDisplayContainer.css({'width': '0', 'height': '0'});

            gcBase.gcDisplayContainer.css({'width': gcBase.gcDisplayArea.outerWidth(), 'height': gcBase.gcDisplayArea.outerHeight()});

            var widthRatio = gcBase.gcDisplayContainer.outerWidth() / gcBase.gcImgNaturalSizes[gcBase.current].width,
                heightRatio = gcBase.gcDisplayContainer.outerHeight() / gcBase.gcImgNaturalSizes[gcBase.current].height,
                ratio, ddWidth, ddHeight;

            if( widthRatio < 1 || heightRatio < 1){
                if(gcBase.config.isZoomEnabled == 'true'){
                    gcBase.gcDisplayContainer.on('mousemove.glasscase', $.proxy( gcBase.mousemoveHandler, gcBase));            
                    gcBase.gcDisplayContainer.on('mouseenter.glasscase', $.proxy( gcBase.mouseenterHandler, gcBase));
                    gcBase.gcDisplayContainer.on('mouseleave.glasscase', $.proxy( gcBase.mouseleaveHandler, gcBase));
                }
                else{
                    gcBase.gcDisplayContainer.off('mousemove.glasscase', $.proxy( gcBase.mousemoveHandler, gcBase));            
                    gcBase.gcDisplayContainer.off('mouseenter.glasscase', $.proxy( gcBase.mouseenterHandler, gcBase));
                    gcBase.gcDisplayContainer.off('mouseleave.glasscase', $.proxy( gcBase.mouseleaveHandler, gcBase));     
                }

                if(widthRatio < heightRatio){
                    ratio = widthRatio;
                }
                else{
                    ratio = heightRatio;
                }
            
                ddWidth = ratio * gcBase.gcImgNaturalSizes[gcBase.current].width;
                ddHeight = ratio * gcBase.gcImgNaturalSizes[gcBase.current].height;
            }
            else{ // In case that the image's width and height are smaller than the container's windth and height
                gcBase.gcDisplayContainer.trigger('mouseleave.glasscase');

                gcBase.gcDisplayContainer.off('mousemove.glasscase', $.proxy( gcBase.mousemoveHandler, gcBase));            
                gcBase.gcDisplayContainer.off('mouseenter.glasscase', $.proxy( gcBase.mouseenterHandler, gcBase));
                gcBase.gcDisplayContainer.off('mouseleave.glasscase', $.proxy( gcBase.mouseleaveHandler, gcBase));

                ddWidth = gcBase.gcImgNaturalSizes[gcBase.current].width;
                ddHeight = gcBase.gcImgNaturalSizes[gcBase.current].height;
            }
            gcBase.gcDisplayDisplay.css({'width': ddWidth, 'height': ddHeight});
            gcBase.gcDisplayContainer.css({'width': ddWidth, 'height': ddHeight});

            // Positioning the container in the center of DisplayArea
            var borderVal = parseFloat(gcBase.gcDisplayArea.css('border-left-width'))*2,
                paddingVal = parseFloat(gcBase.gcDisplayArea.css('padding-top'))*2;
            
            var percMarginLeft = ((gcBase.gcDisplayContainer.outerWidth()/2)*100)/(gcBase.gcDisplayArea.outerWidth() - borderVal - paddingVal),
                percMarginTop = ((gcBase.gcDisplayContainer.outerHeight()/2)*100)/(gcBase.gcDisplayArea.outerWidth() - borderVal - paddingVal);
            
            gcBase.gcDisplayContainer.css({'margin-left': "-" + percMarginLeft + "%",
                                           'margin-top': "-" + percMarginTop + "%"});
        },
        setupZoom:              function(){
            var gcBase = this;

            // Setting the zoomed image 
            gcBase.gcZoomDisplay.attr('src', gcBase.gcDisplayDisplay.attr('src'));  
            
            // Setting the width/height values of the zoom 
            var borderVal = parseFloat(gcBase.gcZoom.css('border-left-width'))*2,
                paddingVal = parseFloat(gcBase.gcDisplayArea.css('padding-top'))*2,
                zoomWidth = gcBase.gcDisplayContainer.outerHeight() + borderVal + paddingVal;
            
            gcBase.gcZoomContainer.css({'width': 0, 'height': 0});            
            gcBase.gcZoom.css({'width': zoomWidth, 'height': zoomWidth});
            gcBase.gcZoomContainer.css({'width': gcBase.gcZoom.outerWidth(), 'height': gcBase.gcZoom.outerHeight()});
        },
        setupZoomPos:           function(){
            var gcBase = this;

            if(gcBase.config.zoomPosition == 'left'){
                gcBase.gcZoom.css({'right': (gcBase.element.outerWidth(true)), 'margin-right': '3px'});
            }
            else{               
                gcBase.gcZoom.css({'left': (gcBase.element.outerWidth(true)), 'margin-left': '3px'});  
            }

            gcBase.gcZoom.css('top', gcBase.gcDisplayContainer.position().top
                                     + parseFloat(gcBase.gcDisplayContainer.css('margin-top'))
                                     - parseFloat(gcBase.gcDisplayArea.css('padding-top')));
                
            if(gcBase.config.thumbsPosition == 'top'){
                gcBase.gcZoom.css({'top': parseFloat(gcBase.gcZoom.css('top')) + gcBase.gcThumbsArea.outerHeight(), 
                                   'margin-top': '3px'}); // The distance between thumbs and displayArea
            }
        },
        setupLens:              function(){
            var gcBase = this;

            // It is calculated the width value in percent of the zoom area related to full width of the image
            var percZoomWidth = Math.round(gcBase.gcZoomContainer.outerWidth() /gcBase.gcImgNaturalSizes[gcBase.current].width *100);
            // Lens width && height
            var valueLens = Math.round(gcBase.gcDisplayDisplay.outerWidth() * percZoomWidth / 100);   
            
            gcBase.gcLens.css({'width': (valueLens), 'height': (valueLens)});

            // Setting the position
            gcBase.mousemoveHandler();
        },
        addLoader:              function(obj){ //obj - the object that will contain the loader
            var gcBase = this;

            $(obj).prepend(gcBase.gcLoader.clone());
        },
        removeLoader:           function(obj){
            var gcBase = this;

            var loader = $(obj).find('.gc-loading');
            
            if(loader.length){
                loader.remove();
            }
        },
        setupThumbImg:          function(obj, index){ // obj - li element
            var gcBase = this;

            var widthImg = gcBase.gcThumbsLi.outerWidth(),
                heightImg = gcBase.gcThumbsLi.outerHeight(), 
                ratioImg;
            
            var listItem = $(obj);
                
            var wRatio = widthImg/gcBase.gcImgNaturalSizes[index].width;
    		var hRatio = heightImg/gcBase.gcImgNaturalSizes[index].height;

			ratioImg = wRatio > hRatio ? wRatio : hRatio;

            gcBase.gcThumbsImg[index].width = Math.ceil(gcBase.gcImgNaturalSizes[index].width * ratioImg, 10);
			gcBase.gcThumbsImg[index].height = Math.ceil(gcBase.gcImgNaturalSizes[index].height * ratioImg, 10);

            var percMarginLeft = ((gcBase.gcThumbsImg.eq(index).outerWidth()/2)*100)/(gcBase.gcThumbsLiDiv.outerWidth()),
                percMarginTop = ((gcBase.gcThumbsImg.eq(index).outerHeight()/2)*100)/(gcBase.gcThumbsLiDiv.outerWidth());
            
            gcBase.gcThumbsImg.eq(index).css({'margin-top': "-" + percMarginTop + "%",
                                              'margin-left': "-" + percMarginLeft + "%"});

            gcBase.gcThumbsLiDiv.eq(index).removeClass('gc-hide');
            gcBase.removeLoader(gcBase.gcThumbsLi.eq(index));

            gcBase.gcThumbsLiDiv.eq(index).removeClass('gc-hide');
            gcBase.removeLoader(gcBase.gcThumbsLi.eq(index));
        },
        setupThumbs:            function(){
            var gcBase = this;
            
            gcBase.gcThumbsArea.css('width', gcBase.gcDisplayArea.outerWidth());

            var liMarginRight = parseFloat(gcBase.gcThumbsLi.css('margin-right')),
                ratio = gcBase.config.widthDisplay/gcBase.config.heightDisplay,
                widthLi = (gcBase.gcThumbsArea.outerWidth()/gcBase.config.nrThumbsPerRow-(gcBase.config.nrThumbsPerRow-1)*liMarginRight/gcBase.config.nrThumbsPerRow),
                heightLi = widthLi/ratio; 
            
            var widthLiPerc;

            if (gcBase.config.isThumbsOneRow == 'true'){
                widthLiPerc = (widthLi*100)/(((widthLi + liMarginRight)*gcBase.gcThumbsLi.length) - liMarginRight);
            }
            else{
                widthLiPerc = (widthLi*100)/gcBase.gcThumbsArea.outerWidth();
            }

            gcBase.gcThumbsLi.css({'width': widthLiPerc + "%", 'height': heightLi});

            gcBase.gcThumbsLiDiv.addClass('gc-hide');
            for(var i = 0; i < gcBase.gcThumbsLi.length; i++){
                gcBase.addLoader(gcBase.gcThumbsLi[i]);
            }
      
            if (gcBase.config.isThumbsOneRow == 'true'){
                gcBase.gcThumbsLi.last().css('margin-right', 0);
            }
            else{
                gcBase.gcThumbsUl.find(':nth-child('+ gcBase.config.nrThumbsPerRow +'n)').css('margin-right', 0);
                gcBase.gcThumbsUl.find(':nth-child(n +'+ (parseFloat(gcBase.config.nrThumbsPerRow)+1) +')').css('margin-top', '3px');
            }

            // SETTING WIDTH/HEIGHT OF THUMBS
            if (gcBase.config.isThumbsOneRow == 'true'){
                gcBase.gcThumbsUl.css({'width': Math.ceil((widthLi*gcBase.gcThumbsLi.length + (gcBase.gcThumbsLi.length - 1)*liMarginRight)),
                                       'height': Math.ceil(heightLi)});
                gcBase.gcThumbsArea.css('height', Math.ceil(heightLi));
            }
            else{
                var totalRows = Math.ceil((gcBase.gcThumbsLi.length)/gcBase.config.nrThumbsPerRow);
                var lHeight = Math.ceil(heightLi*totalRows + liMarginRight*(totalRows - 1));

                gcBase.gcThumbsUl.css({'width': gcBase.gcThumbsArea.outerWidth(), 'height': lHeight}); 
                gcBase.gcThumbsArea.css('height', lHeight);
            }
            
            // POSITION BOTTOM
            if(gcBase.config.thumbsPosition == 'bottom'){
                gcBase.gcDisplayArea.css('top', '0');
                gcBase.gcThumbsArea.css('margin-top', '3px');
            }
            // POSITION TOP
            if(gcBase.config.thumbsPosition == 'top'){
                gcBase.gcThumbsArea.css('top', '0');
                gcBase.gcDisplayArea.css('margin-top', '3px');
            }

            // BUTTONS PREVIOUS / NEXT
            if (gcBase.config.isThumbsOneRow == 'true'){                
                gcBase.gcThumbsAreaPrevious.removeClass('gc-hide');
                gcBase.gcThumbsPrevious.css('margin-top', (-gcBase.gcThumbsPrevious.outerHeight()/2));
                gcBase.gcThumbsAreaNext.removeClass('gc-hide');
                gcBase.gcThumbsNext.css('margin-top', (-gcBase.gcThumbsNext.outerHeight()/2));

                if(parseFloat(gcBase.gcThumbsPrevious.css('left')) < 1){
                    gcBase.gcThumbsPrevious.css('left', "1px");
                }

                if(parseFloat(gcBase.gcThumbsNext.css('right')) < 1){
                    gcBase.gcThumbsNext.css('right', "1px");
                }
                
                // SLIDER
                gcBase.setupSlider();
            }
            else{
                gcBase.gcThumbsAreaPrevious.addClass('gc-hide');
                gcBase.gcThumbsAreaNext.addClass('gc-hide');
            }
        },
        setupSlider:            function(){
            var gcBase = this;
            
            if(gcBase.gcTotalThumbsImg <= gcBase.config.nrThumbsPerRow){
                gcBase.gcThumbsAreaPrevious.addClass('gc-hide');
                gcBase.gcThumbsAreaNext.addClass('gc-hide');
                
                return;            
            }
            gcBase.gcThumbsAreaPrevious.removeClass('gc-disabled');
            gcBase.gcThumbsAreaNext.removeClass('gc-disabled');

            if(gcBase.currentSlide == 0){
                gcBase.gcThumbsAreaPrevious.addClass('gc-disabled');
            }
            if(gcBase.currentSlide == Math.floor((gcBase.gcThumbsLi.length - 1)/gcBase.config.nrThumbsPerRow)){
                gcBase.gcThumbsAreaNext.addClass('gc-disabled');
            }
        },       
        update:                 function(){           
            var gcBase = this;
            
            //1.
            if(gcBase.config.colorActiveThumb != -1){
                gcBase.element.find('.gc-active').css('background-color', "");
            }

            gcBase.gcThumbsLi.removeClass('gc-active').eq(gcBase.current).addClass('gc-active');
            
            if(gcBase.config.colorActiveThumb != -1){
                gcBase.element.find('.gc-active').css('background-color', gcBase.config.colorActiveThumb);
            }
            
            //2.
            gcBase.gcDisplayDisplay.attr('src', gcBase.gcThumbsLi.eq(gcBase.current).find('img').attr('src'));

            //3.
            gcBase.setupDisplayDisplay();
            gcBase.setupZoom();
            gcBase.setupLens();
            gcBase.setupZoomPos();            
            
            //4.
            if(!gcBase.gcOverlayArea.hasClass('gc-hide')){
                gcBase.gcOverlayDisplay.attr('src',    gcBase.gcDisplayDisplay.attr('src'))
                                       .attr('width',  gcBase.gcImgNaturalSizes[gcBase.current].width)
                                       .attr('height', gcBase.gcImgNaturalSizes[gcBase.current].height)
                                       .css({'margin-left': -(gcBase.gcOverlayDisplay.width()/2), 
                                             'margin-top':  -(gcBase.gcOverlayDisplay.height()/2)})
            }
        },                
        animateImage:           function(){
            var gcBase = this;

            gcBase.isAnimating = true;
            
            gcBase.gcDisplayDisplay.animate({opacity: 0.5}, 200, function(){
                if(!gcBase.gcOverlayArea.hasClass('gc-hide')){ // If OverlayArea is shown
                    gcBase.gcOverlayDisplay.animate({opacity: 0}, 200, function(){
                        gcBase.update(); 
                        gcBase.setupOverlay();
                        gcBase.gcOverlayDisplay.animate({opacity: 1}, 500);
                    });                
                }
                    
                if(gcBase.gcOverlayArea.hasClass('gc-hide')){
                    gcBase.update(); 
                }
                gcBase.gcDisplayDisplay.animate({opacity: 1}, 500, function(){
                    gcBase.gcZoomDisplay.attr('src', gcBase.gcDisplayDisplay.attr('src'));
                });                    

                gcBase.isAnimating = false;  
            }); 
        },
        nextImage:              function(){
            var gcBase = this;

            if( gcBase.isAnimating ) {
			    return false;
            }

            gcBase.old = gcBase.current;
            gcBase.current = (gcBase.current == (gcBase.gcThumbsLi.length - 1)) ? 0 : gcBase.current + 1;
            gcBase.slide('true', '');
            gcBase.animateImage();
        },
        previousImage:          function(){
            var gcBase = this;

            if( gcBase.isAnimating ) {
			    return false;
			}

            gcBase.old = gcBase.current;
            gcBase.current = (gcBase.current == 0) ? (gcBase.gcThumbsLi.length - 1) : gcBase.current - 1;
            gcBase.slide('true', '');
            gcBase.animateImage();
        },     
        slide:                  function(isImageChange, slideChange){//isImageChange: true || false; slideChange:   previous || next
            var gcBase = this;

            if (gcBase.config.isThumbsOneRow == 'false'){
                return;
            }

            var nextSlide = 0;

            if(isImageChange == 'true'){
                nextSlide = Math.floor(gcBase.current / gcBase.config.nrThumbsPerRow);                
            }
            else{
                if(slideChange == 'previous'){
                    nextSlide = 0;
                    
                    if(gcBase.currentSlide > 0){
                        nextSlide = gcBase.currentSlide - 1;
                    }
                }
                else{
                    nextSlide = Math.floor((gcBase.gcThumbsLi.length - 1)/gcBase.config.nrThumbsPerRow);
                
                    if(gcBase.currentSlide < nextSlide){
                        nextSlide = gcBase.currentSlide + 1;
                    }                
                }
            }
            
            if(nextSlide == gcBase.currentSlide)
                return;
        
            var vMargin = gcBase.gcThumbsArea.outerWidth() + parseFloat(gcBase.gcThumbsLi.css('margin-right'));
            
            gcBase.currentSlide = nextSlide;           

            //Making the slide
            gcBase.gcThumbsUl.animate({ left: (-(nextSlide*vMargin)) + 'px' }, 400 );
			
			var transitionendfn = $.proxy( function() {
				this.isAnimating = false;

                this.setupSlider();
			}, gcBase );

		    transitionendfn.call();
        },
        mousemoveHandler:       function(event){
            var gcBase = this;

            if(event !== undefined){
                gcBase.currentMousePos.x = event.pageX;
                gcBase.currentMousePos.y = event.pageY;
            }
            
            if(gcBase.currentMousePos.x == -1 && gcBase.currentMousePos.y == -1){
                return;
            }

            var imageContainerOffset = gcBase.gcDisplayContainer.offset();
            var mouseXRelative = gcBase.currentMousePos.x - imageContainerOffset.left,
                mouseYRelative = gcBase.currentMousePos.y - imageContainerOffset.top;

            var imageDisplayWidth = gcBase.gcDisplayDisplay.outerWidth(),
                imageDisplayHeight = gcBase.gcDisplayDisplay.outerHeight();
                
            var lensWidth = gcBase.gcLens.outerWidth(),
                lensHeight = gcBase.gcLens.outerHeight(),
                lensTop = mouseYRelative - Math.round(lensHeight / 2),
                lensLeft = mouseXRelative - Math.round(lensWidth / 2); // 2 -> the middle

            var ratio = gcBase.gcZoomDisplay.outerWidth() / imageDisplayWidth,
                zoomTop = -lensTop*ratio, zoomLeft = -lensLeft*ratio;
                
            if (mouseYRelative - lensHeight / 2 < 0) {
                lensTop = 0; zoomTop = 0;
            }

            if (mouseYRelative + lensHeight / 2 > 0 + imageDisplayHeight) {
                lensTop = imageDisplayHeight - lensHeight;
                    
                zoomTop = -(gcBase.gcZoomDisplay.outerHeight() - gcBase.gcZoom.outerHeight());
            }

            if (mouseXRelative - lensWidth / 2 < 0) {
                lensLeft = 0;
                zoomLeft = 0;
            }

            if (mouseXRelative + lensWidth / 2 > 0 + imageDisplayWidth) {
                lensLeft = imageDisplayWidth - lensWidth;

                zoomLeft = - (gcBase.gcZoomDisplay.outerWidth() - gcBase.gcZoom.outerWidth());
            }

            gcBase.gcLens.css({'top': lensTop, 'left': lensLeft});
            gcBase.gcZoomDisplay.css({'top': zoomTop, 'left': zoomLeft});
        }, 
        mouseenterHandler:      function(event){
            var gcBase = this;     
                           
            gcBase.gcZoom.fadeIn(200, function(){
                gcBase.gcLens.removeClass('gc-hide');
                gcBase.gcZoom.removeClass('gc-hide');
            });   
        },
        mouseleaveHandler:      function(event){
            var gcBase = this;
            gcBase.gcLens.addClass('gc-hide');
            gcBase.gcZoom.fadeOut(200, function(){
                gcBase.gcLens.addClass('gc-hide');
                gcBase.gcZoom.addClass('gc-hide');
            });
        },
        setupOverlay:           function(){
            var gcBase = this;

            gcBase.gcOverlayDisplay.attr('src', gcBase.gcDisplayDisplay.attr('src'))
                                       .css({'width': gcBase.gcImgNaturalSizes[gcBase.current].width,
                                             'height': gcBase.gcImgNaturalSizes[gcBase.current].height})
                
            if( gcBase.gcOverlayContainer.outerHeight() < gcBase.gcImgNaturalSizes[gcBase.current].height){
                gcBase.gcOverlayDisplay.css('margin-top', -(gcBase.gcOverlayContainer.outerHeight()/2));
            }
            else{
                gcBase.gcOverlayDisplay.css('margin-top', -(gcBase.gcImgNaturalSizes[gcBase.current].height/2));
            }
                
            if(gcBase.gcOverlayContainer.outerWidth() < gcBase.gcImgNaturalSizes[gcBase.current].width){
                gcBase.gcOverlayDisplay.css('margin-left', -(gcBase.gcOverlayContainer.outerWidth()/2));
            }
            else{
                gcBase.gcOverlayDisplay.css('margin-left', -(gcBase.gcImgNaturalSizes[gcBase.current].width/2));
            }
        },
        resizeGC:               function(){
            var gcBase = this;

            gcBase.element.css({'height': '0', 'width': '0'});

            gcBase.setup();

            gcBase.gcThumbsImg.each( function( index ){
                //2.
                gcBase.setupThumbImg(gcBase.gcThumbsLi.eq(index), index);

                //3.                            
                gcBase.removeLoader(gcBase.gcThumbsLi.eq(index));
                gcBase.gcThumbsLi.eq(index).find('.gc-li-display-container').removeClass('gc-hide');
                            
                //4.
                if(gcBase.current == index){
                    gcBase.removeLoader(gcBase.gcDisplayArea);
                    gcBase.gcDisplayContainer.removeClass('gc-hide');
                    gcBase.setupDisplayDisplay();  
                    gcBase.setupLens(); 
                }
            });

            gcBase.update();
        },
        initEvents:             function(){            
            var gcBase = this;

            //Display
            gcBase.gcDisplayContainer.on('click.glasscase', function (event) {
                
                if(gcBase.config.isOverlayEnabled == 'false')
                    return;

                gcBase.gcOverlayArea.removeClass('gc-hide');
                
                gcBase.setupOverlay();
                
                $('body').addClass('gc-noscroll');
            });
            if(gcBase.config.isZoomEnabled == 'true'){
                gcBase.gcDisplayContainer.on('mousemove.glasscase', $.proxy( gcBase.mousemoveHandler,gcBase));            
                gcBase.gcDisplayContainer.on('mouseenter.glasscase', $.proxy( gcBase.mouseenterHandler, gcBase));
                gcBase.gcDisplayContainer.on('mouseleave.glasscase', $.proxy( gcBase.mouseleaveHandler, gcBase));
            }
            gcBase.gcDisplayDownload.on('click.glasscase', function(event){
                var canvas = document.createElement('canvas');
                canvas.width = gcBase.gcImgNaturalSizes[gcBase.current].width;
                canvas.height = gcBase.gcImgNaturalSizes[gcBase.current].height;
                var context = canvas.getContext('2d');
                context.drawImage(gcBase.gcDisplayDisplay[0], 0, 0);
                var blob = new Blob();
                canvas.toBlob(function(blob) {
		            saveAs(
			                blob
			            , gcBase.gcDisplayDisplay.attr('src').replace(/^.*[\\\/]/, '')
		            );
	            }, 'image/png');
            });
            gcBase.gcDisplayPrevious.on('click.glasscase', function(event){
                gcBase.previousImage();
            });
            gcBase.gcDisplayNext.on('click.glasscase', function(event){
                gcBase.nextImage();
            });            
            //Overlay
            gcBase.gcOverlayPrevious.on('click.glasscase', function(event){
                gcBase.previousImage();
            });
            gcBase.gcOverlayNext.on('click.glasscase', function(event){
                gcBase.nextImage();
            });            
            gcBase.gcOverlayClose.on('click.glasscase', function(event){
                $('body').removeClass('gc-noscroll');
                gcBase.gcOverlayArea.addClass('gc-hide');
            });            
            //General
            $(document).on('keydown', function(event){
                if(gcBase.config.isKeypressEnabled == 'true'){
                    if(event.keyCode == 37){ //<-
                        gcBase.previousImage();
                    }

                    if(event.keyCode == 39){//->
                        gcBase.nextImage();
                    }
                }
                if(event.keyCode == 27){ //esc
                    $('body').removeClass('gc-noscroll');
                    gcBase.gcOverlayArea.addClass('gc-hide');                
                }
            });
            $(window).resize(function() {
                clearTimeout(gcBase.resizeTimer);
                gcBase.resizeTimer = setTimeout(function(){ gcBase.resizeGC();}, 100);
            });
            //Thumbs
            gcBase.gcThumbsLi.on('click.glasscase', function(event){
                if( gcBase.isAnimating ) {
				    return false;
			    }

			    gcBase.isAnimating = true;
                
                var idx = $(this).index();
                
                if( gcBase.current != idx ){
                    
                    gcBase.old = gcBase.current;
                    gcBase.current = idx;
                    
                    gcBase.animateImage();
                }
            });
            gcBase.gcThumbsAreaPrevious.on('click.glasscase', function(event){
                gcBase.slide('false', 'previous');
            });
            gcBase.gcThumbsAreaNext.on('click.glasscase', function(event){
                gcBase.slide('false', 'next');
            });
        }
    };

    //4. Attaching the plugin to the $ object
    $.fn.glassCase = function(options){
        this.each(function() {
			var instance = $.data(this, 'gcglasscase');
			if( !instance){
				$.data( this, 'gcglasscase', new GlassCase($(this), options));
			}			
		});
    };

})(jQuery, window, document);
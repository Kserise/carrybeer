
;(function($) {
    
    var LiteAccordion = function(elem, options) {
        
        var defaults = {
            containerWidth : 1000, //부모박스의 너비값(버튼5개+콘텐츠1개)
            containerHeight : 400, //부모박스의 높이값
            headerWidth : 70, //어코디언 버튼의너비값
            responsive : false, //어코디언이 부모 박스를 채우도록 지정
            autoScaleImages : false, //이미지의 크기를 자동으로 조정할지 지정
            minContainerWidth:300, //어코디언의 최소 너비값
            maxContainerWidth:1300, //어코디언의 최대 너비값

            activateOn :'click', //어코디언 버튼의 이벤트 선택(click, mouseover)
            firstSlide : 1, //처음보여줄 슬라이드를 지정
            slideSpeed : 800, //슬라이드애니메이션 속도
            onTriggerSlide : function( ) { },
            onSlideAnimComplete : function( ) { },
            
            autoPlay : false, //자동애니메이션여부를 지정
            pauseOnHover : true, //마우스 오버 시 일시정지 여부를 지정 
            cycleSpeed : 4000,
            easing : 'swing',
                                                    
            theme : 'basic',
            rounded : false,
            enumerateSlides : false,
            linkable : false
        },
            
            settings = $.extend({}, defaults, options),            
            slides = elem.children('ol').children('li'),
            header = slides.children(':first-child'),
            slideLen = slides.length,
            slideWidth = settings.containerWidth - slideLen * settings.headerWidth,
               
            methods = {                    
                
                play : function(index) {
                    var next = core.nextSlide(index && index);

                    if (core.playing) return;
                    
                    core.playing = setInterval(function( ) {
                        header.eq(next()).trigger('click.liteAccordion');
                    }, settings.cycleSpeed);
                },
            
                stop : function() {
                    clearInterval(core.playing);
                    core.playing = 0;
                },

                next : function() {
                    methods.stop();
                    header.eq(core.currentSlide === slideLen - 1 ? 0 : core.currentSlide + 1).trigger('click.liteAccordion');
                },

                prev : function() {
                    methods.stop();
                    header.eq(core.currentSlide - 1).trigger('click.liteAccordion');  
                },
                
                destroy : function( ) {
                    methods.stop();
					
                    $(window).off('.liteAccordion');
					
                    elem
                        .attr('style', '')
                        .removeClass('liteAccordion basic dark light stitch')
                        .removeData('liteAccordion')
                        .off('.liteAccordion')
                        .find('li > :first-child')
                        .off('.liteAccordion')
                        .filter('.selected')
                        .removeClass('selected')
                        .end()
                        .find('b')
                        .remove();
                        
                    slides
                        .removeClass('slide')
                        .children()
                        .attr('style', '');
                },
                
                debug : function( ) {
                    return {
                        elem : elem,
                        defaults : defaults,
                        settings : settings,
                        methods : methods,
                        core : core
                    };
                }       
            },

            core = {
        
                setStyles : function( ) {
                    elem
                        .width(settings.containerWidth)
                        .height(settings.containerHeight)
                        .addClass('liteAccordion')
                        .addClass(settings.rounded && 'rounded')                  
                        .addClass(settings.theme);
                        
                    slides
                        .addClass('slide')
                        .children(':first-child')
                        .height(settings.headerWidth);

                    core.setSlidePositions( );

                    if (settings.responsive) {
                        core.responsive( );
                    } else {                        
                        if (settings.autoScaleImages) core.autoScaleImages();
                    }
                },

                setSlidePositions : function( ) {
                    var selected = header.filter('.selected');

                    if (!selected.length) header.eq(settings.firstSlide - 1).addClass('selected');

                    header.each(function(index) {
                        var $this = $(this),
                            left = index * settings.headerWidth,
                            margin = header.first( ).next( ),
                            offset = parseInt(margin.css('marginLeft'), 10) || parseInt(margin.css('marginRight'), 10) || 0;
                        
                        if (selected.length) {
                            if (index > header.index(selected)) left += slideWidth;
                        } else {
                            if (index >= settings.firstSlide) left += slideWidth;
                        }

                        $this
                            .css('left', left)
                            .width(settings.containerHeight)
                            .next( )
                                .width(slideWidth - offset)
                                .css({ left : left, paddingLeft : settings.headerWidth }); 
                    });
                },

                responsive : function( ) {
                    var parentWidth = elem.parent( ).width( );
                    
                    if (parentWidth > settings.minContainerWidth) {
                        settings.containerWidth = parentWidth < settings.maxContainerWidth ? parentWidth : settings.maxContainerWidth;
                    } else if (parentWidth < settings.maxContainerWidth) {
                        settings.containerWidth = parentWidth > settings.minContainerWidth ? parentWidth : settings.minContainerWidth;
                    }
                    
                    settings.containerHeight = settings.containerWidth / 3 | 0;
                    
                    slideWidth = settings.containerWidth - slideLen * settings.headerWidth;
                    
                    elem
                        .width(settings.containerWidth)
                        .height(settings.containerHeight);
                    
                    slides
                        .children(':first-child')
                        .width(settings.containerHeight);
                    
                    core.setSlidePositions();                                       
                },
                
                autoScaleImages : function() {
                    slides.children('div').each(function() {
                        var $this = $(this), 
                            $imgs = $this.find('img');

                        if ($imgs.length) {
                            $imgs.each(function(index, item) {
                                $(item).width($this.width() + 1);
                                $(item).height($this.height());                                
                            });
                        }
                    });
                },

                bindEvents : function() {
                    var resizeTimer = 0;

                    if (settings.activateOn === 'click') {
                        header.on('click.liteAccordion', core.triggerSlide);
                    } else if (settings.activateOn === 'mouseover') {
                        header.on('click.liteAccordion mouseover.liteAccordion', core.triggerSlide);
                    }
                       
                    if (settings.pauseOnHover && settings.autoPlay) {
                        elem
                            .on('mouseover.liteAccordion', function() {
                                core.playing && methods.stop();
                            })
                            .on('mouseout.liteAccordion', function() {
                                !core.playing && methods.play(core.currentSlide);
                            });
                    }

                    if (settings.responsive) {
                        $(window)
                            .on('load.liteAccordion', function() {
                                if (settings.autoScaleImages) core.autoScaleImages();  
                            })
                            .on('resize.liteAccordion orientationchange.liteAccordion', function() {
                                clearTimeout(resizeTimer);
                                resizeTimer = setTimeout(function() {
                                    core.responsive();
                                    if (settings.autoScaleImages) core.autoScaleImages();
                                }, 100);
                            });
                    }
                },
                
                linkable : function() {
                    var cacheSlideNames = (function() {
                        var slideNames = [];

                        slides.each(function() {
                            if ($(this).attr('data-slide-name')) slideNames.push(($(this).attr('data-slide-name')).toLowerCase());
                        });

                        return cacheSlideNames = slideNames;                        
                    })();
                    
                    var triggerHash = function(e) {
                        var index;
                        
                        if (e.type === 'load' && !window.location.hash) return;
                        if (e.type === 'hashchange' && core.playing) return;
                        
                        index = $.inArray((window.location.hash.slice(1)).toLowerCase(), cacheSlideNames);
                        if (index > -1 && index < cacheSlideNames.length) header.eq(index).trigger('click.liteAccordion');
                    };

                    $(window).on('hashchange.liteAccordion load.liteAccordion', triggerHash);
                },
                
                currentSlide : settings.firstSlide - 1,             

                nextSlide : function(index) {
                    var next = index + 1 || core.currentSlide + 1;

                    return function() {
                        return next++ % slideLen;
                    };
                },  
    
                playing : 0,
                
                slideAnimCompleteFlag : false,
                
                triggerSlide : function(e) {
                    var $this = $(this),
                        tab = {
                            elem : $this, 
                            index : header.index($this),
                            next : $this.next(),
                            prev : $this.parent().prev().children('h2')
                        };

                    core.currentSlide = tab.index;
                    
                    core.slideAnimCompleteFlag = false;            
                    
                    if (settings.linkable && !core.playing) window.location.hash = $this.parent().attr('data-slide-name');

                    settings.onTriggerSlide.call(tab.next);

                    if ($this.hasClass('selected') && $this.position().left < slideWidth / 2) {                        
                        core.animSlide.call(tab);                       
                    } else {
                        core.animSlideGroup(tab);                       
                    }
					
                    if (e.originalEvent && settings.autoPlay) {
                        methods.stop();
                        methods.play(header.index(header.filter('.selected')));
                    }  
                },

                animSlide : function(triggerTab) {
                    var _this = this;

                    if (typeof this.pos === 'undefined') this.pos = slideWidth;

                    header.removeClass('selected').filter(this.elem).addClass('selected');

                    if (!!this.index) {
                        this.elem
                            .add(this.next)
                            .stop(true)
                            .animate({
                                left : this.pos + this.index * settings.headerWidth
                            }, 
                                settings.slideSpeed, 
                                settings.easing,
                                function() {
                                    if (!core.slideAnimCompleteFlag) {
                                        settings.onSlideAnimComplete.call(triggerTab ? triggerTab.next : _this.prev.next());
                                        core.slideAnimCompleteFlag = true;
                                    }                                      
                                });                          

                            header.removeClass('selected').filter(this.prev).addClass('selected');
                    }
                },
                
                animSlideGroup : function(triggerTab) {
                    var group = ['left', 'right'];

                    $.each(group, function(index, side) {
                        var filterExpr, left;

                        if (side === 'left')  {
                            filterExpr = ':lt(' + (triggerTab.index + 1) + ')';
                            left = 0;
                        } else {
                            filterExpr = ':gt(' + triggerTab.index + ')';
                            left = slideWidth;
                        }

                        slides
                            .filter(filterExpr) 
                            .children('h2')                           
                            .each(function() {
                                var $this = $(this),
                                    tab = {
                                        elem : $this, 
                                        index : header.index($this),
                                        next : $this.next(),
                                        prev : $this.parent().prev().children('h2'),
                                        pos : left
                                    };
									
                                core.animSlide.call(tab, triggerTab);
                            });

                    });
					
                    header.removeClass('selected').filter(triggerTab.elem).addClass('selected');
                },

                ieClass : function(version) {
                    if (version < 7) methods.destroy();
                    if (version === 7 || version === 8) {
                        slides.each(function(index) {
                            $(this).addClass('slide-' + index);
                        });
                    }

                    elem.addClass('ie ie' + version);
                },
                
                init : function() {
                    var ua = navigator.userAgent,
                        index = ua.indexOf('MSIE');

                    if (index !== -1) {                        
                        ua = ua.slice(index + 5, index + 6);
                        core.ieClass(+ua);
                    }

                    core.setStyles();
                    core.bindEvents();

                    if (settings.cycleSpeed < settings.slideSpeed) settings.cycleSpeed = settings.slideSpeed;

                    if (settings.linkable && 'onhashchange' in window) core.linkable();

                    settings.autoPlay && methods.play();
                }
            };

        core.init();

        return methods;       
    };

    $.fn.liteAccordion = function(method) {
        var elem = this,
            instance = elem.data('liteAccordion');

        if (typeof method === 'object' || !method) {
            return elem.each(function() {
                var liteAccordion;
    
                if (instance) return;

                liteAccordion = new LiteAccordion(elem, method);
                elem.data('liteAccordion', liteAccordion);
            });

        } else if (typeof method === 'string' && instance[method]) {
            if (method === 'debug') {
                return instance[method].call(elem);
            } else {
                instance[method].call(elem);
                return elem;                
            }
        }
    };

})(jQuery);


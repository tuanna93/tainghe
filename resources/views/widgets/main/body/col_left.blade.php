<aside id="sp-left" class="span3">
    <div class="module vina_categories">
        <div class="mod-wrapper clearfix">
            <h3 class="header">
                <span>Danh mục sản phẩm</span>			</h3> <span class="sp-badge vina_categories"></span>
            <div class="mod-content clearfix">
                <div class="mod-inner clearfix">
                    <div id="jux_memamenu301">
                        <div id="megamenucss" class="megamenucss301">
                            <div id="js-mainnav" class="clearfix megamenu vertical left red left down noJS  megamenu">
                                <div id="CSS3-megaMenuToggle" class="megaMenuToggle"> <i class="jux-fa jux-fa-bars font-item-menu"></i> </div>
                                <div class="js-megamenu clearfix" id="js-meganav">
                                    <?php
                                        $cate1 = \App\Category::where('parent_id',0)->get();
                                    ?>
                                    <ul class="megamenu level0">
                                        @foreach($cate1 as $cate_1)
                                        <li class="megacss first {{ check_categories($cate_1->id,'haschild') }} submenu-align-auto">
                                            <a href="/loai-san-pham/{{ $cate_1->slug }}.html" class="megacss {{ check_categories($cate_1->id,'haschild') }} " id="menu556">{{--<img src="{{ $cate_1->icon }}" alt="{{ $cate_1->name }}">--}}<span class="image-title">{{ $cate_1->name }}</span> </a>
                                            @if(check_categories($cate_1->id,'true'))
                                            <div style="0" class="childcontent adddropdown clearfix cols3  ">
                                                <div class=" jux-fa jux-fa-angle-down dropdown-toggle " id="arrow-icon" data-toggle="dropdown"></div>
                                                <div class="childcontent-inner-wrap dropdown-menu">
                                                    <div class="childcontent-inner clearfix" style="width: 275px;">
                                                        <div class="megacol column1 first" style="width: 266px;">
                                                            <ul class="megamenu level1">
                                                                <?php
                                                                    $cate2 = \App\Category::where('parent_id',$cate_1->id)->get();
                                                                ?>
                                                                @foreach($cate2 as $cate_2)
                                                                <li class="megacss first submenu-align-auto"><a href="/loai-san-pham/{{ $cate_2->slug }}.html" class="megacss first " id="menu585"><span class="menu-title"><i class="jux-fa  jux-"></i>{{ $cate_2->name }}</span></a>
                                                                </li>
                                                                @endforeach
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                                @endif
                                        </li>
                                        @endforeach
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <style type="text/css">
                        #jux_memamenu301 ul.megamenu li.haschild.megacss:hover>div.childcontent.adddropdown,
                        #jux_memamenu301 .childcontent.open>.dropdown-menu{
                            opacity:1;
                            visibility:visible;
                            display:block;
                            -moz-animation:fadeInDown 400ms ease-in ;
                            -webkit-animation: fadeInDown 400ms ease-in ;
                            animation:fadeInDown 400ms ease-in ;}
                    </style>
                </div>
            </div>
        </div>
    </div>
    @if(!Request::is('/'))
    <div class="gap"></div>
        <div class="module ">
            <div class="mod-wrapper clearfix">
                <h3 class="header">
                    <span>Tin tức</span>			</h3>
                <div class="mod-content clearfix">
                    <div class="mod-inner clearfix">
                        <style type="text/css" scoped="">
                            #vina-carousel-content260 {
                                width: 100%;
                                height: 39%;
                                margin: 0px;
                                padding: 10px 5px;
                                overflow: hidden;
                            }
                            #vina-carousel-content260 .item {
                            ;
                                color: #333333;
                                padding: 10px;
                                margin: 0 5px;
                            }
                            #vina-carousel-content260 .item a {
                                color: #0088cc;
                            }
                        </style>
                        <div id="vina-carousel-content260">
                        <?php
                        $post_left = \App\Post::select('*')->get();
                        ?>
                        @foreach($post_left as $pos)
                            <!-- Items Block -->
                                <div class="item">
                                    <!-- Image Block -->
                                    <div class="image-block">
                                        <a href="/tin-tuc/{{ $pos->slug }}.html" title="">
                                            <img src="{{ $pos->image }}" alt="">
                                        </a>
                                    </div>
                                    <!-- Text Block -->
                                    <div class="text-block">
                                        <!-- Title Block -->
                                        <h3 class="title">
                                            <a href="/tin-tuc/{{ $pos->slug }}.html" title="">{{ $pos->name }}</a>
                                        </h3>
                                        <!-- Info Block -->
                                        <!-- Intro text Block -->
                                        <div class="introtext">{{ $pos->intro }}</div>
                                        <!-- Readmore Block -->
                                    </div>
                                </div>
                            @endforeach
                        </div>
                    </div>
                </div>
            </div>
        </div>
    <div class="gap"></div>
    <div class="module ">
        <div class="mod-wrapper clearfix">
            <h3 class="header">
                <span>Sản Phẩm Bán Chạy</span>			</h3>
            <div class="mod-content clearfix">
                <div class="mod-inner clearfix">
                    <div class="ticker_jshopping_tmpl">
                        <div id="vina-ticker-jshopping164">
                            <!-- Header Buttons Block -->
                            <!-- Items Block -->
                            <?php
                                $selling = \App\Product::where('status_sale',4)->get();
                            ?>
                            <div class="vina-items-wrapper">
                                @foreach($selling as $sell)
                                <div class="row-fluid">
                                    <!-- Image Block -->
                                    <div class="span5">
                                        <a href="/{{ $sell->slug }}" title="{{ $sell->name }}">
                                            <img src="/images/images_pro/{{ $sell->image }}" alt="{{ $sell->name }}" title="{{ $sell->name }}">
                                        </a>
                                    </div>
                                    <div class="span7">
                                        <div class="text-block">
                                            <!-- Title Block -->
                                            <h4 class="title">
                                                <a href="/{{ $sell->slug }}" title="{{ $sell->name }}">{{ $sell->name }}
                                                </a>
                                            </h4>
                                            <div class="vina_price price-block">
                                                <p class="old_price"> <span>{{ number_format($sell->price_old,0,",",".") }} Đ </span> </p>
                                                <p class="jshop_price"> <span>{{ number_format($sell->price_new,0,",",".") }} Đ</span> </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                    @endforeach
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="gap"></div>
    @endif
</aside>
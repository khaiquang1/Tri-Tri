<!DOCTYPE html>
<html dir="@if (session()->has('language_direction_from_dropdown')) @if(session()->get('language_direction_from_dropdown') == 1) {{ __('rtl') }} @else {{ __('ltr') }} @endif @else {{ __('ltr') }} @endif" lang="@if (session()->has('language_code_from_dropdown')){{ str_replace('_', '-', session()->get('language_code_from_dropdown')) }}@else{{ str_replace('_', '-',   $language->language_code) }}@endif">
<head>

    <title>
    Trang chủ - Công ty Cổ phần Trí Tri
</title>
    <!-- Meta Tags -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="title" content="@if (isset($general_seo)){{ $general_seo->site_name }} @endif">
    <meta name="description" content="@if (isset($general_seo)){{ $general_seo->site_desc }} @endif">
    <meta name="keywords" content="@if (isset($general_seo)){{ $general_seo->site_keywords }} @endif">
    <meta name="author" content="simsiyeka">
    <meta property="fb:app_id" content="@if (isset($general_seo)){{ $general_seo->fb_app_id }} @endif">
    <meta property="og:title" content="@if (isset($general_seo)){{ $general_seo->site_name }} @endif">
    <meta property="og:url" content="@if (isset($general_seo)){{ url()->current() }} @endif">
    <meta property="og:description" content="@if (isset($general_seo)){{ $general_seo->site_desc }} @endif">
    <meta property="og:image" content="@if (!empty($general_site_image->favicon_image)){{ asset('uploads/img/general/'.$general_site_image->favicon_image) }} @endif">
    <meta itemprop="image" content="@if (!empty($general_site_image->favicon_image)){{ asset('uploads/img/general/'.$general_site_image->favicon_image) }} @endif">
    <meta property="og:type" content="website">

    <meta name="twitter:card" content="summary_large_image">
    <meta name="twitter:image" content="@if (!empty($general_site_image->favicon_image)){{ asset('uploads/img/general/'.$general_site_image->favicon_image) }} @endif">
    <meta property="twitter:title" content="@if (isset($general_seo)){{ $general_seo->site_name }} @endif">
    <meta property="twitter:description" content="@if (isset($general_seo)){{ $general_seo->site_desc }} @endif">

    <!-- CSRF Token -->


    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <link rel="stylesheet" type="text/css" href="{{asset('assets/frontend/css/toolbar.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('assets/frontend/css/jquery.fancybox.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('assets/frontend/css/plugins.min.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('assets/frontend/css/style.css')}}">
    <link rel="shortcut icon" href="http://www.tritri.org/Data/Sites/1/skins/default/favicon.ico">
    <script src="{{asset('assets/frontend/js/sdk.js')}}" async="" crossorigin="anonymous"></script><script type="text/javascript" async="" src="{{asset('assets/frontend/js/cefa6adc-26c3-4ffc-9c30-c30799f0604b.js')}}"></script><script async="" src="https://marketing.tritri.org/mtc.js"></script><script id="facebook-jssdk" src="{{asset('assets/frontend/js/xfbml.customerchat.js')}}"></script><script async="" src="{{asset('assets/frontend/js/za.js')}}"></script><script src="{{asset('assets/frontend/js/jquery.min.js')}}" type="text/javascript"></script><style type="text/css" data-fbcssmodules="css:fb.css.basecss:fb.css.dialog css:fb.css.iframewidget css:fb.css.customer_chat_plugin_iframe">.fb_hidden{position:absolute;top:-10000px;z-index:10001}.fb_reposition{overflow:hidden;position:relative}.fb_invisible{display:none}.fb_reset{background:none;border:0;border-spacing:0;color:#000;cursor:auto;direction:ltr;font-family:"lucida grande", tahoma, verdana, arial, sans-serif;font-size:11px;font-style:normal;font-variant:normal;font-weight:normal;letter-spacing:normal;line-height:1;margin:0;overflow:visible;padding:0;text-align:left;text-decoration:none;text-indent:0;text-shadow:none;text-transform:none;visibility:visible;white-space:normal;word-spacing:normal}.fb_reset>div{overflow:hidden}@keyframes fb_transform{from{opacity:0;transform:scale(.95)}to{opacity:1;transform:scale(1)}}.fb_animate{animation:fb_transform .3s forwards}
    .fb_dialog{background:rgba(82, 82, 82, .7);position:absolute;top:-10000px;z-index:10001}.fb_dialog_advanced{border-radius:8px;padding:10px}.fb_dialog_content{background:#fff;color:#373737}.fb_dialog_close_icon{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/yq/r/IE9JII6Z1Ys.png) no-repeat scroll 0 0 transparent;cursor:pointer;display:block;height:15px;position:absolute;right:18px;top:17px;width:15px}.fb_dialog_mobile .fb_dialog_close_icon{left:5px;right:auto;top:5px}.fb_dialog_padding{background-color:transparent;position:absolute;width:1px;z-index:-1}.fb_dialog_close_icon:hover{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/yq/r/IE9JII6Z1Ys.png) no-repeat scroll 0 -15px transparent}.fb_dialog_close_icon:active{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/yq/r/IE9JII6Z1Ys.png) no-repeat scroll 0 -30px transparent}.fb_dialog_iframe{line-height:0}.fb_dialog_content .dialog_title{background:#6d84b4;border:1px solid #365899;color:#fff;font-size:14px;font-weight:bold;margin:0}.fb_dialog_content .dialog_title>span{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/yd/r/Cou7n-nqK52.gif) no-repeat 5px 50%;float:left;padding:5px 0 7px 26px}body.fb_hidden{height:100%;left:0;margin:0;overflow:visible;position:absolute;top:-10000px;transform:none;width:100%}.fb_dialog.fb_dialog_mobile.loading{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/ya/r/3rhSv5V8j3o.gif) white no-repeat 50% 50%;min-height:100%;min-width:100%;overflow:hidden;position:absolute;top:0;z-index:10001}.fb_dialog.fb_dialog_mobile.loading.centered{background:none;height:auto;min-height:initial;min-width:initial;width:auto}.fb_dialog.fb_dialog_mobile.loading.centered #fb_dialog_loader_spinner{width:100%}.fb_dialog.fb_dialog_mobile.loading.centered .fb_dialog_content{background:none}.loading.centered #fb_dialog_loader_close{clear:both;color:#fff;display:block;font-size:18px;padding-top:20px}#fb-root #fb_dialog_ipad_overlay{background:rgba(0, 0, 0, .4);bottom:0;left:0;min-height:100%;position:absolute;right:0;top:0;width:100%;z-index:10000}#fb-root #fb_dialog_ipad_overlay.hidden{display:none}.fb_dialog.fb_dialog_mobile.loading iframe{visibility:hidden}.fb_dialog_mobile .fb_dialog_iframe{position:sticky;top:0}.fb_dialog_content .dialog_header{background:linear-gradient(from(#738aba), to(#2c4987));border-bottom:1px solid;border-color:#043b87;box-shadow:white 0 1px 1px -1px inset;color:#fff;font:bold 14px Helvetica, sans-serif;text-overflow:ellipsis;text-shadow:rgba(0, 30, 84, .296875) 0 -1px 0;vertical-align:middle;white-space:nowrap}.fb_dialog_content .dialog_header table{height:43px;width:100%}.fb_dialog_content .dialog_header td.header_left{font-size:12px;padding-left:5px;vertical-align:middle;width:60px}.fb_dialog_content .dialog_header td.header_right{font-size:12px;padding-right:5px;vertical-align:middle;width:60px}.fb_dialog_content .touchable_button{background:linear-gradient(from(#4267B2), to(#2a4887));background-clip:padding-box;border:1px solid #29487d;border-radius:3px;display:inline-block;line-height:18px;margin-top:3px;max-width:85px;padding:4px 12px;position:relative}.fb_dialog_content .dialog_header .touchable_button input{background:none;border:none;color:#fff;font:bold 12px Helvetica, sans-serif;margin:2px -12px;padding:2px 6px 3px 6px;text-shadow:rgba(0, 30, 84, .296875) 0 -1px 0}.fb_dialog_content .dialog_header .header_center{color:#fff;font-size:16px;font-weight:bold;line-height:18px;text-align:center;vertical-align:middle}.fb_dialog_content .dialog_content{background:url(https://static.xx.fbcdn.net/rsrc.php/v3/y9/r/jKEcVPZFk-2.gif) no-repeat 50% 50%;border:1px solid #4a4a4a;border-bottom:0;border-top:0;height:150px}.fb_dialog_content .dialog_footer{background:#f5f6f7;border:1px solid #4a4a4a;border-top-color:#ccc;height:40px}#fb_dialog_loader_close{float:left}.fb_dialog.fb_dialog_mobile .fb_dialog_close_icon{visibility:hidden}#fb_dialog_loader_spinner{animation:rotateSpinner 1.2s linear infinite;background-color:transparent;background-image:url(https://static.xx.fbcdn.net/rsrc.php/v3/yD/r/t-wz8gw1xG1.png);background-position:50% 50%;background-repeat:no-repeat;height:24px;width:24px}@keyframes rotateSpinner{0%{transform:rotate(0deg)}100%{transform:rotate(360deg)}}
    .fb_iframe_widget{display:inline-block;position:relative}.fb_iframe_widget span{display:inline-block;position:relative;text-align:justify}.fb_iframe_widget iframe{position:absolute}.fb_iframe_widget_fluid_desktop,.fb_iframe_widget_fluid_desktop span,.fb_iframe_widget_fluid_desktop iframe{max-width:100%}.fb_iframe_widget_fluid_desktop iframe{min-width:220px;position:relative}.fb_iframe_widget_lift{z-index:1}.fb_iframe_widget_fluid{display:inline}.fb_iframe_widget_fluid span{width:100%}
    .fb_mpn_mobile_landing_page_slide_out{animation-duration:200ms;animation-name:fb_mpn_landing_page_slide_out;transition-timing-function:ease-in}.fb_mpn_mobile_landing_page_slide_out_from_left{animation-duration:200ms;animation-name:fb_mpn_landing_page_slide_out_from_left;transition-timing-function:ease-in}.fb_mpn_mobile_landing_page_slide_up{animation-duration:500ms;animation-name:fb_mpn_landing_page_slide_up;transition-timing-function:ease-in}.fb_mpn_mobile_bounce_in{animation-duration:300ms;animation-name:fb_mpn_bounce_in;transition-timing-function:ease-in}.fb_mpn_mobile_bounce_out{animation-duration:300ms;animation-name:fb_mpn_bounce_out;transition-timing-function:ease-in}.fb_mpn_mobile_bounce_out_v2{animation-duration:300ms;animation-name:fb_mpn_fade_out;transition-timing-function:ease-in}.fb_customer_chat_bounce_in_v2{animation-duration:300ms;animation-name:fb_bounce_in_v2;transition-timing-function:ease-in}.fb_customer_chat_bounce_in_from_left{animation-duration:300ms;animation-name:fb_bounce_in_from_left;transition-timing-function:ease-in}.fb_customer_chat_bounce_out_v2{animation-duration:300ms;animation-name:fb_bounce_out_v2;transition-timing-function:ease-in}.fb_customer_chat_bounce_out_from_left{animation-duration:300ms;animation-name:fb_bounce_out_from_left;transition-timing-function:ease-in}.fb_customer_chat_bubble_animated_no_badge{box-shadow:0 3px 12px rgba(0, 0, 0, .15);transition:box-shadow 150ms linear}.fb_customer_chat_bubble_animated_no_badge:hover{box-shadow:0 5px 24px rgba(0, 0, 0, .3)}.fb_customer_chat_bubble_animated_with_badge{box-shadow:-5px 4px 14px rgba(0, 0, 0, .15);transition:box-shadow 150ms linear}.fb_customer_chat_bubble_animated_with_badge:hover{box-shadow:-5px 8px 24px rgba(0, 0, 0, .2)}.fb_invisible_flow{display:inherit;height:0;overflow-x:hidden;width:0}.fb_new_ui_mobile_overlay_active{overflow:hidden}@keyframes fb_mpn_landing_page_slide_in{0%{border-radius:50%;margin:0 24px;width:60px}40%{border-radius:18px}100%{margin:0 12px;width:100% - 24px}}@keyframes fb_mpn_landing_page_slide_in_from_left{0%{border-radius:50%;left:12px;margin:0 24px;width:60px}40%{border-radius:18px}100%{left:12px;margin:0 12px;width:100% - 24px}}@keyframes fb_mpn_landing_page_slide_out{0%{margin:0 12px;width:100% - 24px}60%{border-radius:18px}100%{border-radius:50%;margin:0 24px;width:60px}}@keyframes fb_mpn_landing_page_slide_out_from_left{0%{left:12px;width:100% - 24px}60%{border-radius:18px}100%{border-radius:50%;left:12px;width:60px}}@keyframes fb_mpn_landing_page_slide_up{0%{bottom:0;opacity:0}100%{bottom:24px;opacity:1}}@keyframes fb_mpn_bounce_in{0%{opacity:.5;top:100%}100%{opacity:1;top:0}}@keyframes fb_mpn_fade_out{0%{bottom:30px;opacity:1}100%{bottom:0;opacity:0}}@keyframes fb_mpn_bounce_out{0%{opacity:1;top:0}100%{opacity:.5;top:100%}}@keyframes fb_bounce_in_v2{0%{opacity:0;transform:scale(0, 0);transform-origin:bottom right}50%{transform:scale(1.03, 1.03);transform-origin:bottom right}100%{opacity:1;transform:scale(1, 1);transform-origin:bottom right}}@keyframes fb_bounce_in_from_left{0%{opacity:0;transform:scale(0, 0);transform-origin:bottom left}50%{transform:scale(1.03, 1.03);transform-origin:bottom left}100%{opacity:1;transform:scale(1, 1);transform-origin:bottom left}}@keyframes fb_bounce_out_v2{0%{opacity:1;transform:scale(1, 1);transform-origin:bottom right}100%{opacity:0;transform:scale(0, 0);transform-origin:bottom right}}@keyframes fb_bounce_out_from_left{0%{opacity:1;transform:scale(1, 1);transform-origin:bottom left}100%{opacity:0;transform:scale(0, 0);transform-origin:bottom left}}@keyframes fb_bounce_out_v2_mobile_chat_started{0%{opacity:1;top:0}100%{opacity:0;top:20px}}@keyframes fb_customer_chat_bubble_bounce_in_animation{0%{bottom:6pt;opacity:0;transform:scale(0, 0);transform-origin:center}70%{bottom:18pt;opacity:1;transform:scale(1.2, 1.2)}100%{transform:scale(1, 1)}}@keyframes slideInFromBottom{0%{opacity:.1;transform:translateY(100%)}100%{opacity:1;transform:translateY(0)}}@keyframes slideInFromBottomDelay{0%{opacity:0;transform:translateY(100%)}97%{opacity:0;transform:translateY(100%)}100%{opacity:1;transform:translateY(0)}}</style><style type="text/css">/*
     * contextMenu.js v 1.4.0
     * Author: Sudhanshu Yadav
     * s-yadav.github.com
     * Copyright (c) 2013 Sudhanshu Yadav.
     * Dual licensed under the MIT and GPL licenses
    **/

    .iw-contextMenu {
        box-shadow: 0px 2px 3px rgba(0, 0, 0, 0.10) !important;
        border: 1px solid #c8c7cc !important;
        border-radius: 11px !important;
        display: none;
        z-index: 1000000132;
        max-width: 300px !important;
        width: auto !important;
    }

    .dark-mode .iw-contextMenu,
    .TnITTtw-dark-mode.iw-contextMenu,
    .TnITTtw-dark-mode .iw-contextMenu {
        border-color: #747473 !important;
    }

    .iw-cm-menu {
        background: #fff !important;
        color: #000 !important;
        margin: 0px !important;
        padding: 0px !important;
        overflow: visible !important;
    }

    .dark-mode .iw-cm-menu,
    .TnITTtw-dark-mode.iw-cm-menu,
    .TnITTtw-dark-mode .iw-cm-menu {
        background: #525251 !important;
        color: #FFF !important;
    }

    .iw-curMenu {
    }

    .iw-cm-menu li {
        font-family: -apple-system, BlinkMacSystemFont, "Helvetica Neue", Helvetica, Arial, Ubuntu, sans-serif !important;
        list-style: none !important;
        padding: 10px !important;
        padding-right: 20px !important;
        border-bottom: 1px solid #c8c7cc !important;
        font-weight: 400 !important;
        cursor: pointer !important;
        position: relative !important;
        font-size: 14px !important;
        margin: 0 !important;
        line-height: inherit !important;
        border-radius: 0 !important;
        display: block !important;
    }

    .dark-mode .iw-cm-menu li, .TnITTtw-dark-mode .iw-cm-menu li {
        border-bottom-color: #747473 !important;
    }

    .iw-cm-menu li:first-child {
        border-top-left-radius: 11px !important;
        border-top-right-radius: 11px !important;
    }

    .iw-cm-menu li:last-child {
        border-bottom-left-radius: 11px !important;
        border-bottom-right-radius: 11px !important;
        border-bottom: none !important;
    }

    .iw-mOverlay {
        position: absolute !important;
        width: 100% !important;
        height: 100% !important;
        top: 0px !important;
        left: 0px !important;
        background: #FFF !important;
        opacity: .5 !important;
    }

    .iw-contextMenu li.iw-mDisable {
        opacity: 0.3 !important;
        cursor: default !important;
    }

    .iw-mSelected {
        background-color: #F6F6F6 !important;
    }

    .dark-mode .iw-mSelected, .TnITTtw-dark-mode .iw-mSelected {
        background-color: #676766 !important;
    }

    .iw-cm-arrow-right {
        width: 0 !important;
        height: 0 !important;
        border-top: 5px solid transparent !important;
        border-bottom: 5px solid transparent !important;
        border-left: 5px solid #000 !important;
        position: absolute !important;
        right: 5px !important;
        top: 50% !important;
        margin-top: -5px !important;
    }

    .dark-mode .iw-cm-arrow-right, .TnITTtw-dark-mode .iw-cm-arrow-right {
        border-left-color: #FFF !important;
    }

    .iw-mSelected > .iw-cm-arrow-right {
    }

    /*context menu css end */</style><style type="text/css">@-webkit-keyframes load4 {
        0%,
        100% {
            box-shadow: 0 -3em 0 0.2em, 2em -2em 0 0em, 3em 0 0 -1em, 2em 2em 0 -1em, 0 3em 0 -1em, -2em 2em 0 -1em, -3em 0 0 -1em, -2em -2em 0 0;
        }
        12.5% {
            box-shadow: 0 -3em 0 0, 2em -2em 0 0.2em, 3em 0 0 0, 2em 2em 0 -1em, 0 3em 0 -1em, -2em 2em 0 -1em, -3em 0 0 -1em, -2em -2em 0 -1em;
        }
        25% {
            box-shadow: 0 -3em 0 -0.5em, 2em -2em 0 0, 3em 0 0 0.2em, 2em 2em 0 0, 0 3em 0 -1em, -2em 2em 0 -1em, -3em 0 0 -1em, -2em -2em 0 -1em;
        }
        37.5% {
            box-shadow: 0 -3em 0 -1em, 2em -2em 0 -1em, 3em 0em 0 0, 2em 2em 0 0.2em, 0 3em 0 0em, -2em 2em 0 -1em, -3em 0em 0 -1em, -2em -2em 0 -1em;
        }
        50% {
            box-shadow: 0 -3em 0 -1em, 2em -2em 0 -1em, 3em 0 0 -1em, 2em 2em 0 0em, 0 3em 0 0.2em, -2em 2em 0 0, -3em 0em 0 -1em, -2em -2em 0 -1em;
        }
        62.5% {
            box-shadow: 0 -3em 0 -1em, 2em -2em 0 -1em, 3em 0 0 -1em, 2em 2em 0 -1em, 0 3em 0 0, -2em 2em 0 0.2em, -3em 0 0 0, -2em -2em 0 -1em;
        }
        75% {
            box-shadow: 0em -3em 0 -1em, 2em -2em 0 -1em, 3em 0em 0 -1em, 2em 2em 0 -1em, 0 3em 0 -1em, -2em 2em 0 0, -3em 0em 0 0.2em, -2em -2em 0 0;
        }
        87.5% {
            box-shadow: 0em -3em 0 0, 2em -2em 0 -1em, 3em 0 0 -1em, 2em 2em 0 -1em, 0 3em 0 -1em, -2em 2em 0 0, -3em 0em 0 0, -2em -2em 0 0.2em;
        }
    }

    @keyframes load4 {
        0%,
        100% {
            box-shadow: 0 -3em 0 0.2em, 2em -2em 0 0em, 3em 0 0 -1em, 2em 2em 0 -1em, 0 3em 0 -1em, -2em 2em 0 -1em, -3em 0 0 -1em, -2em -2em 0 0;
        }
        12.5% {
            box-shadow: 0 -3em 0 0, 2em -2em 0 0.2em, 3em 0 0 0, 2em 2em 0 -1em, 0 3em 0 -1em, -2em 2em 0 -1em, -3em 0 0 -1em, -2em -2em 0 -1em;
        }
        25% {
            box-shadow: 0 -3em 0 -0.5em, 2em -2em 0 0, 3em 0 0 0.2em, 2em 2em 0 0, 0 3em 0 -1em, -2em 2em 0 -1em, -3em 0 0 -1em, -2em -2em 0 -1em;
        }
        37.5% {
            box-shadow: 0 -3em 0 -1em, 2em -2em 0 -1em, 3em 0em 0 0, 2em 2em 0 0.2em, 0 3em 0 0em, -2em 2em 0 -1em, -3em 0em 0 -1em, -2em -2em 0 -1em;
        }
        50% {
            box-shadow: 0 -3em 0 -1em, 2em -2em 0 -1em, 3em 0 0 -1em, 2em 2em 0 0em, 0 3em 0 0.2em, -2em 2em 0 0, -3em 0em 0 -1em, -2em -2em 0 -1em;
        }
        62.5% {
            box-shadow: 0 -3em 0 -1em, 2em -2em 0 -1em, 3em 0 0 -1em, 2em 2em 0 -1em, 0 3em 0 0, -2em 2em 0 0.2em, -3em 0 0 0, -2em -2em 0 -1em;
        }
        75% {
            box-shadow: 0em -3em 0 -1em, 2em -2em 0 -1em, 3em 0em 0 -1em, 2em 2em 0 -1em, 0 3em 0 -1em, -2em 2em 0 0, -3em 0em 0 0.2em, -2em -2em 0 0;
        }
        87.5% {
            box-shadow: 0em -3em 0 0, 2em -2em 0 -1em, 3em 0 0 -1em, 2em 2em 0 -1em, 0 3em 0 -1em, -2em 2em 0 0, -3em 0em 0 0, -2em -2em 0 0.2em;
        }
    }</style><style type="text/css">/* This is not a zero-length file! */</style></head><body id="ctl00_Body" class="canhcam homepage vi-vn" style=""><div class="zalo-chat-widget" data-oaid="2287807111989763657" data-welcome-message="Tritri rất sẵn sàng để phục vụ bạn" data-autopopup="0" data-width="350" data-height="420" style="z-index: 2147483647; border: none; visibility: visible; bottom: 0px; right: 0px; position: fixed; width: 70px; height: 70px; top: auto;"><iframe frameborder="0" allowfullscreen="" scrolling="no" width="70" height="70" src="{{asset('assets/frontend/chat-widget.html')}}" style="position: absolute; bottom: 0px; right: 0px;"></iframe><div id="drag-holder" draggable="true" style="position: absolute; top: 0px; right: 0px; width: 70px; height: 70px; cursor: move; display: block;"></div><div id="drag-left" style="position: absolute; top: 0px; left: 0px; width: 10px; height: 100%; cursor: w-resize; display: none;"></div><div id="drag-right" style="position: absolute; top: 0px; right: 0px; width: 10px; height: 100%; cursor: e-resize; display: none;"></div><div id="drag-top" style="position: absolute; top: 0px; width: 100%; height: 10px; cursor: n-resize; display: none;"></div><div id="drag-bottom" style="position: absolute; bottom: 0px; width: 100%; height: 10px; cursor: s-resize; display: none;"></div><div id="drag-top-left" style="position: absolute; top: 0px; left: 0px; width: 15px; height: 15px; cursor: nw-resize; display: none;"></div><div id="drag-top-right" style="position: absolute; top: 0px; right: 0px; width: 15px; height: 15px; cursor: ne-resize; display: none;"></div><div id="drag-bottom-right" style="position: absolute; bottom: 0px; right: 0px; width: 15px; height: 15px; cursor: se-resize; display: none;"></div><div id="drag-bottom-left" style="position: absolute; bottom: 0px; left: 0px; width: 15px; height: 15px; cursor: sw-resize; display: none;"></div><div id="overlay" style="position: absolute; top: 0px; left: 0px; width: 100%; height: 100%; display: none;"></div></div>
    <script src="{{asset('assets/frontend/js/sdk.js')}}"></script><div id="app" class="zs"></div>
    <script>
    $( document ).ready(function() {
    $( "#hana-popchat" ).remove();
    $( "#scrollUp-text" ).remove();
    });
    </script>
    <script>
      window.fbAsyncInit = function() {
        FB.init({
          appId            : '766305180482770',
          autoLogAppEvents : true,
          xfbml            : true,
          version          : 'v3.3'
        });
      };
    (function(d, s, id) {
      var js, fjs = d.getElementsByTagName(s)[0];
      if (d.getElementById(id)) return;
      js = d.createElement(s); js.id = id;
      js.src = "https://connect.facebook.net/en_US/sdk/xfbml.customerchat.js";
      fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));
    </script>
    <script async="" defer="" src="{{asset('assets/frontend/js/sdk.js')}}"></script>
    <style>
    #hana-popchat{z-index:0!important; display:none!important}
    #scrollUp-text{z-index:0!important; display:none!important}
    .hotline {
        position: fixed;
        bottom: 20px;
        right: 18px;
        z-index: 9999999;
        box-shadow: 0 0 10px rgba(0,0,0,.3);
        border-radius: 50px;
    }
    .Phone.is-animating {
        animation: phone-outer 3000ms infinite;
    }
    .hotline .Phone::before {
        top: 0;
        left: 0;
        width: 1em;
        height: 1em;
        background-color: rgba(255,255,255,.1);
        border-radius: 100%;
        opacity: 1;
        transform: translate3d(0,0,0) scale(0);
    }
    .hotline .Phone::after {
        top: 0;
        left: 0;
        width: 40px;
        height: 40px;
        background: url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACQAAAAkCAMAAADW3miqAAAAsVBMVEVHcEz///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////8Q9rufAAAAOnRSTlMAXHDBEv2aAXeA4SVtoGfOD1sC9Avzo5c0NYsj4+0p2Pxha3pvmJ074G7fXqFYm10UOJkInLm7wD49BSoYugAAAN5JREFUOMvN1NcSgkAMBdBFgbX33rD33r3//2EGWR1nxMRH83wmG3IzKPWnVbBifs1yHLIQVJpDA4OyHEoZlODQxqAihyYGIcmg7RNluFZTg9YcShuU4lA+MFXNoVLZN8cCH0yFjKuF9GqA0xEzPgNRqZOqO0BPbOUC7aaE7Bbg2ZK6dWmsg6QitIao6aWHo0x42g1S3mMuXfWXW05klx8XrX3V7mml98+zQCTkRZoLl477MoiHvHilb4QDHinbfSdfEO3+9AOitCtFGdF9rcbzAFlCTrtFP5bX//prugNFfjAznxHEPgAAAABJRU5ErkJggg==');
        background-position: center center;
        background-repeat: no-repeat;
        transform: translate3d(0,0,0);
        background-size: 30px;
    }
    .hotline .Phone::before, .hotline .Phone::after {
        position: absolute;
        content: "";
    }
    .hotline .Phone {
        position: relative;
        display: block;
        margin: 0;
        width: 45px;
        height: 45px;
        font-size: 0;
        background-color: #f00;
        border-radius: 45px;
        border: 3px solid #fff;
        box-shadow: 0 0 0 0 rgba(52,152,219,0), 0 0.05em 0.1em rgba(0,0,0,.2);
        transform: translate3d(0,0,0) scale(1);
    }
    .zalo-chat-widget {
        bottom: 60px !important;
        right: 5px !important;
    }
    .fb_dialog{      background: none;
        border-radius: 50%;
        bottom: 100pt!important;
        display: inline;
        height: 45pt!important;
        padding: 0px;
        position: fixed;
        right: 9px!important;
        top: auto;
        width: 58px!important;
        z-index: 2147483646;
    }
    </style>
    <div class="hotline"><a class="Phone is-animating" href="tel:0915489819">0915.489.819</a></div>

    <!-- Your customer chat code -->

    <script>
        (function(w,d,t,u,n,a,m){w['MauticTrackingObject']=n;
            w[n]=w[n]||function(){(w[n].q=w[n].q||[]).push(arguments)},a=d.createElement(t),
            m=d.getElementsByTagName(t)[0];a.async=1;a.src=u;m.parentNode.insertBefore(a,m)
        })(window,document,'script','https://marketing.tritri.org/mtc.js','mt');

        mt('send', 'pageview');
    </script>
    <script>

      url=window.location.href;
      keyword="lien-he";
    if (url.indexOf(keyword) > -1 ){ 
      var frame = document.getElementByClass("mf-notification-iframe");
     frame.parentNode.removeChild(frame);
     }
    </script>
        
        <script type="text/javascript"> (function(){ var t = "https:", r = document.createElement("script"); r.type = "text/javascript", r.async = !0, r.src = t + "//resources.mideasvn.com/hana_v2/cefa6adc-26c3-4ffc-9c30-c30799f0604b"; var c = document.getElementsByTagName("script")[0]; c.parentNode.insertBefore(r, c); })();</script>


        
        
        <form method="post" action="http://www.tritri.org/" onsubmit="javascript:return WebForm_OnSubmit();" id="aspnetForm">
    <div class="aspNetHidden">
    <input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="">
    <input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="">
    <input type="hidden" name="__VIEWSTATEFIELDCOUNT" id="__VIEWSTATEFIELDCOUNT" value="3">
    <input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUKMTk3NjY2MTIwNw9kFgJmD2QWAgIBDxYCHgRsYW5nBQJ2aRYCAgMPFgIeBWNsYXNzBRZjYW5oY2FtIGhvbWVwYWdlIHZpLXZuFgICBQ9kFhICAQ8WAh4PU2l0ZU1hcFByb3ZpZGVyBQxjYW5oY2Ftc2l0ZTFkAg8PZBYCZg9kFgJmD2QWAmYPDxYEHghDc3NDbGFzcwUKZm9ybS1ncm91cB4EXyFTQgICFgIeCHNpdGVyb290BRVodHRwOi8vd3d3LnRyaXRyaS5vcmcWAgIBDw8WBh4HVG9vbFRpcAULVMOsbSBraeG6v20fAwULc2VhcmNoaW5wdXQfBAICFgQeDGF1dG9jb21wbGV0ZQUDb2ZmHgtwbGFjZWhvbGRlcgULVMOsbSBraeG6v21kAhMPDxYEHwMFE2FsdGNvbnRlbnQxIGNtc3pvbmUfBAICZGQCFQ8PFgYfAwUQbGVmdHNpZGUgY21zem9uZR8EAgIeB1Zp">
    <input type="hidden" name="__VIEWSTATE1" id="__VIEWSTATE1" value="c2libGVoZGQCFw8PFgQfAwUQbWlkZGxlLWZ1bGx3aWR0aB8EAgJkZAIZDw8WBh8DBRFyaWdodHNpZGUgY21zem9uZR8EAgIfCWhkZAIbDw8WBh8DBRNhbHRjb250ZW50MiBjbXN6b25lHwQCAh8JaGRkAiEPZBYCZg9kFgJmD2QWAmYPZBYCAgMPZBYCZg9kFgQCAQ9kFgYCAQ8PFgIfBgUlTmjhuq1wIMSR4buLYSBjaOG7iSBlbWFpbCBo4bujcCBs4buHLhYCHwgFEsSQ4buLYSBjaOG7iSBlbWFpbGQCBw8PFgQeD1ZhbGlkYXRpb25Hcm91cAUMc3Vic2NyaWJlMTQwHgxFcnJvck1lc3NhZ2UFF1Z1aSBsw7JuZyBuaOG6rXAgZW1haWwuZGQCCQ8PFgYfCgUMc3Vic2NyaWJlMTQwHhRWYWxpZGF0aW9uRXhwcmVzc2lvbgVcXihbMC05YS16QS1aXShbJy0uXHddKltfMC05">
    <input type="hidden" name="__VIEWSTATE2" id="__VIEWSTATE2" value="YS16QS1aXSkqQCgoWzAtOWEtekEtWl0pKyhbLVx3J10qWzAtOWEtekEtWl0pKlwuKStbYS16QS1aXXsyLDl9KSQfCwUYRW1haWwga2jDtG5nIGjhu6NwIGzhu4cuZGQCAw9kFgICAQ8WAh4EVGV4dAUYxJDEg25nIGvDvSB0aMOgbmggY8O0bmcuZAIpDw8WAh8JaGRkZIEAx3tZglGvE5eLb4wPAv7L/lgU">
    </div>

    <script type="text/javascript">
    //<![CDATA[
    var theForm = document.forms['aspnetForm'];
    if (!theForm) {
        theForm = document.aspnetForm;
    }
    function __doPostBack(eventTarget, eventArgument) {
        if (!theForm.onsubmit || (theForm.onsubmit() != false)) {
            theForm.__EVENTTARGET.value = eventTarget;
            theForm.__EVENTARGUMENT.value = eventArgument;
            theForm.submit();
        }
    }
    //]]>
    </script>


    <script src="{{asset('assets/frontend/WebResource.axd')}}" type="text/javascript"></script>


    <script src="{{asset('assets/frontend/ScriptResource.axd')}}" type="text/javascript"></script>
    <script src="./Trang chủ - Công ty Cổ phần Trí Tri_files/ScriptResource(1).axd" type="text/javascript"></script>
    <script type="text/javascript">
    //<![CDATA[
    function WebForm_OnSubmit() {
    if (typeof(ValidatorOnSubmit) == "function" && ValidatorOnSubmit() == false) return false;
    return true;
    }
    //]]>
    </script>

    <div class="aspNetHidden">

        <input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="CA0B0334">
        <input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEdAAU0TDltgSSEvI4ChIkhazVkZkjPIrYPdaRJvrM8cboIWlGAgFKYmMryi2RTSK/hoF4pj+mFxX8ws3fdP5muwsBun3rQwgm1Btz52YViwAJ6N8L5v36r0ARJnadIXfR5VfnHUq4E">
    </div>
            
            
            
            <script type="text/javascript">
    //<![CDATA[
    Sys.WebForms.PageRequestManager._initialize('ctl00$ScriptManager1', 'aspnetForm', ['tctl00$mdl140$ctl00$subscribe1$UpdatePanel1',''], [], [], 90, 'ctl00');
    //]]>
    </script>

    </head>

    <body>

            <div id="wrapper">
                <header class="header">
                    <div class="container">
                        <div class="overlay"></div>
                        <div class="btn-showmenu hidden-xl-up"><i class="fa fa-bars" aria-hidden="true"></i></div>
                        <div class="sitelogo Module"><a href="{{URL::to('/')}}"><img alt="" src="{{asset('assets/frontend/image/logo.png')}}"></a></div>
                        <div class="colright clearfix">
                            <div class="btn-closemenu hidden-xl-up"><span class="lnr lnr-cross"></span></div>
                            <div class="sitelogo-mobile hidden-xl-up">
                                <div class="sitelogo Module"><a href="{{URL::to('/')}}"><img alt="" src="{{asset('assets/frontend/image/logo.png')}}"></a></div>
                            </div>
                            <nav class="menu">
                                <div class="Module Module-42"><div class="ModuleContent"><ul class="menulink nav clearfix">
      <li><a class="active" href="{{URL::to('/')}}" target="_self">Trang chủ</a></li>
      <li><a  href="{{URL::to('/about-us')}}" target="_self">Giới thiệu</a></li>
      <li><a  href="{{URL::to('/fields-of-operation')}}" target="_self">Lĩnh vực hoạt động</a></li>
      <li><a  href="{{URL::to('/news')}}" target="_self">Tin tức</a></li>
      <li><a  href="{{URL::to('/recruitment')}}" target="_self">Tuyển dụng</a></li>
      <li><a  href="{{URL::to('/contact')}}" target="_blank">Liên hệ</a></li>
    </ul></div></div>
                            </nav>
                            <div class="searchtoggle">
                                <a id="dropdownSearchBtn" href="javascript:void(0);" title="Search">
                                    <i class="fa fa-search" aria-hidden="true"></i>
                                </a>
                            </div>
                            <div class="search clearfix">
                                <div class="navbar-form" role="search">
                                    <div class="Module Module-137"><div id="ctl00_mdl137_ctl00_Search_pnlSearch" class="form-group">

        <input onfocus="javascript:watermarkEnter(this, &#39;&#39;);" onblur="javascript:watermarkLeave(this, &#39;&#39;);" name="ctl00$mdl137$ctl00$Search$txtSearch" type="text" id="ctl00_mdl137_ctl00_Search_txtSearch" title="Tìm kiếm" class="searchinput" autocomplete="off" placeholder="Tìm kiếm">
        
        <button onclick="__doPostBack(&#39;ctl00$mdl137$ctl00$Search$btnSearch&#39;,&#39;&#39;)" id="ctl00_mdl137_ctl00_Search_btnSearch" class="searchbutton">
            <span class="btnse"><i class="fa fa-search"></i></span>
        </button>

    </div></div>
                                    <a id="searchclose" href="javascript:void(0);" class="btnre"><i class="fa fa-times"></i></a>
                                </div>
                            </div>
                            <div class="languages">
                                <div class="Module Module-136"><ul class="language nav">
      <!-- <li><a href="http://www.tritri.org/en-US/Default.aspx" title="EN">EN</a></li> -->
    </ul></div>
                            </div>
                        </div>
                    </div>
                </header>
       



            <div id="ctl00_divAlt1" class="altcontent1 cmszone">
    
                
                <div class="home-bannerWrap Module Module-76"><div class="ModuleContent"><section class="bannerwrap clearfix">
  <div id="banner-home" class="banner-home">
    <div class="item">
      <a href="" title="">
        <img src="{{asset('assets/frontend/image/home_banner.png')}}" alt="">
      </a>
       <div data-animation="fadeInUp" data-delay="0.7s" class="container content-wrap">
         @foreach ($features as $feature)
        <div class="content-box">
         
          <h3 class="title">{{ $feature->title }}</h3>
         
            <?php
                $feature_desc = $feature->desc;
                $desc = substr("$feature_desc",0,700);
            ?>
          <div class="desc">@php echo html_entity_decode($desc)  @endphp...</div>
     
          <a class="btn-readmore" href="{{ url('tin-tuc-dau-trang/'.$feature->id) }}" title="">Xem thêm</a>
          @endforeach
          </div>
        </div>

      </div>
    </div>
  </div>
</section>
</div></div>
            
</div>
            <main class="main">
                
                <div id="ctl00_divCenter" class="middle-fullwidth">
    
                    
                    <div class="container"><div class="block-newsWrap"><div class="block-testimonialWrap Module Module-143"><div class="ModuleContent"><div class="block-testimonial">

                          @foreach ($projects as $project)
    <div class="item">
    <h3 class="title">
      <a target="_self" href="{{URL::to('/y-kien-cam-nhan-cua-khach-hang')}}">{{$project->title}}</a>
    </h3>
    <a class="btn-viewall" target="_self" href="{{URL::to('/y-kien-cam-nhan-cua-khach-hang')}}" title="">Xem tất cả <i class="fa fa-angle-double-right" aria-hidden="true"></i></a>
  </div>
        @endforeach


</div></div></div><div class="row flex flex-wrap"><div class="col-xs-12 col-lg-9"><div class="Module Module-142"><div class="ModuleContent"><h2 class="module-title">Tin tức</h2><div class="home-bigNews">
  <h2 class="title-bignews">Tin tức</h2>

  <div class="item-bignews">
    @foreach ($new_posts as $recent_post)

                @if (!empty($recent_post->blog_image))
                 <figure>
                        <a class="hv-zoom" target="_self" href="{{ url('news/'.$recent_post->slug) }}" ><img src="{{ asset('uploads/img/blogs/'.$recent_post->blog_image) }}" class="img-full" alt="blog image" ></a>
                     @else
                        <a class="hv-zoom" target="_self" href="{{ url('news/'.$recent_post->slug) }}"><img src="{{ asset('uploads/img/dummy/no-image.jpg') }}" class="img-full" alt="blog image"></a>
                 @endif
                
                                                
      <figcaption>
        <time class="time-news"><span class="entry-date mrr-20"><i class="far fa-calendar-alt mrr-10 text-primary-color"></i>{{ Carbon\Carbon::parse($recent_post->created_at)->isoFormat('DD') }} {{ Carbon\Carbon::parse($recent_post->created_at)->isoFormat('MMM') }} {{ Carbon\Carbon::parse($recent_post->created_at)->isoFormat('GGGG') }}</span></time>
        <h1 class="title">
          <a target="_self" href="{{ url('news/'.$recent_post->slug) }}" title="{{ $recent_post->title }}">{{ $recent_post->title }}</a>
        </h1>
        <div class="brief"><span style="font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; float: none; display: inline !important; font-family: Roboto, sans-serif; color: #333333;">
            <?php
                $feature_desc = $recent_post->desc;
                $desc = substr("$feature_desc",0,500);
            ?>
            @php echo html_entity_decode($desc)  @endphp</span></div>
        <a class="btn-viewmore" target="_self" href="{{ url('news/'.$recent_post->slug) }}" title="{{ $recent_post->title }}">Xem thêm <i class="fa fa-angle-double-right" aria-hidden="true"></i></a>
      </figcaption>
    </figure>

    @endforeach 
  </div>
 


</div></div></div></div><div class="col-xs-12 col-lg-3"><div class="Module Module-144"><div class="ModuleContent"><h2 class="module-title">Tin nổi bật</h2><div class="block-newsNew">
  <h2 class="title">Tin nổi bật</h2>
   @foreach ($recent_posts as $recent_post)
        @if($recent_post->status == 1)
      <div class="item">
        <time class="time-news">{{ Carbon\Carbon::parse($recent_post->created_at)->isoFormat('DD') }} {{ Carbon\Carbon::parse($recent_post->created_at)->isoFormat('MMM') }} {{ Carbon\Carbon::parse($recent_post->created_at)->isoFormat('GGGG') }}</time>
        <h4>
          <a target="_self" href="{{ url('news/'.$recent_post->slug) }}" >{{ $recent_post->title }}</a>
        </h4>
      </div>
      @endif
   @endforeach

</div></div></div></div></div></div></div><div class="block-groupCate"><div class="container"><div class="Module Module-148"><div class="ModuleContent"><div class="group-home">
  <h2 class="title-group">Trí Tri Group</h2>
  <div class="row flex flex-wrap">
    @foreach ($categories as $category)

    <div class="col-xs-12 col-sm-6 col-lg-3 item-wrap">
      <div class=""><figure><!-- <a class="hv-zoom" href="http://www.tritri.org/linh-vuc-hoat-dong/consulting" target="_self"><img src="" alt="Consulting"></a>
 -->
        <figcaption><h3><a href="{{ url('field/'.$category->id) }}" target="_self"><b style="text-align: left; font-size: 20px">{{ $category->category_name }}</b><!-- </a> --></h3></figcaption></figure></div>
    </div>

    @endforeach
   
  </div>
</div></div></div></div></div><div class="block-video"><div class="container"><div class="Module Module-149"><div class="ModuleContent"><div class="block-homevideo">
  <h3 class="title">Video</h3>
  <div class="row flex flex-wrap">

    @foreach($videos as $video)
    <div class="col-xs-12 col-sm-6 col-lg-4 item-wrap">
      <div class="item">
        <figure>
          <a class="fancy-video hv-zoom" title="{{$video->title}}" href="{{$video->link}}">
           @if (!empty($video->image))
                     <img class="image-size img-fluid" src="{{ asset('uploads/img/videos/'.$video->image) }}" alt="blog image">
                      @else
                     <img class="image-size img-fluid" src="{{ asset('uploads/img/dummy/no-image.jpg') }}" alt="no image">
                      @endif
          </a>
          <figcaption>
            <h3>
              <a class="fancy-video" title="{{$video->title}}" href="{{$video->link}}" rel="">{{$video->title}}</a>
            </h3>
          </figcaption>
        </figure>
      </div>
    </div>
    
    @endforeach

  </div>
</div>
</div></div></div></div>
                
</div>
                
            </main>



         <footer class="footer">

           
                        <div class="footer-top">
                            <div class="container">
                                <div class="row flex flex-wrap">
                                    <div class="col-xs-12">
                                        <div class="Module Module-138"><div class="ModuleContent"><h2 class="title-ft">Trí Tri Group</h2></div></div>
                                    </div>
                                </div>
                                <div class="row flex flex-wrap">
                                    <div class="col-xs-12 col-md-12 col-lg-7">
                                        <div class="box-getmail">
                                            <div class="Module Module-139"><div class="ModuleContent"><h3 class="title-getmail">Đăng ký nhận bản tin</h3>
        <h4>Nhập email của bạn tại đây để nhận thông tin mới nhất</h4></div></div>
                                            <div class="Module Module-140"><div id="ctl00_mdl140_ctl00_subscribe1_pnlSubscribeBody" class="subscribe">

            
            <div id="ctl00_mdl140_ctl00_subscribe1_UpdatePanel1">
            
                    <div id="ctl00_mdl140_ctl00_subscribe1_pnlSubscribe" class="subscribefrm">

                        <input onfocus="javascript:watermarkEnter(this, &#39;&#39;);" onblur="javascript:watermarkLeave(this, &#39;&#39;);" name="ctl00$mdl140$ctl00$subscribe1$txtEmail" type="text" id="ctl00_mdl140_ctl00_subscribe1_txtEmail" title="Nhập địa chỉ email hợp lệ." class="subscribeemail" placeholder="Địa chỉ email">
                        
                        
                        <button onclick="__doPostBack(&#39;ctl00$mdl140$ctl00$subscribe1$btnSubscribe&#39;,&#39;&#39;)" id="ctl00_mdl140_ctl00_subscribe1_btnSubscribe" class="subscribebutton" validationgroup="subscribe">
                            Đăng ký
                        </button>
                        <span id="ctl00_mdl140_ctl00_subscribe1_reqEmail" class="fa fa-exclamation-triangle" style="display:none;">Vui lòng nhập email.</span>
                        <span id="ctl00_mdl140_ctl00_subscribe1_regexEmail" class="fa fa-exclamation-triangle" style="display:none;">Email không hợp lệ.</span>
                    
        </div>
                    
                    
                
        </div>

        </div></div>
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-md-6 col-lg-3">
                                        <div class="ft-social">
                                            <div class="Module Module-141"><div class="ModuleContent"><nav class="nav">
        <a href="https://www.linkedin.com/nhome/"><em class="fa fa-linkedin-square" aria-hidden="true"></em> LinkedIn</a>
        <a href="http://www.tritri.org/#"><em class="fa fa-twitter" aria-hidden="true"></em> Twitter</a>
        <a href="https://www.facebook.com/tritrigroup"><em class="fa fa-facebook-square" aria-hidden="true"></em> Facebook</a>
        <a href="https://www.youtube.com/user/tritrifoundation"><em class="fa fa-youtube-play" aria-hidden="true"></em> Youtube</a>
        </nav></div></div>
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-md-6 col-lg-2">
                                        <div class="ft-menu">
                                            <div class="Module Module-55"><div class="ModuleContent"><nav class="nav"><a href="{{URL::to('/about-us')}}" target="_self">Giới thiệu</a><a href="{{URL::to('/fields-of-operation')}}" target="_self">Lĩnh vực hoạt động</a><a href="{{URL::to('/news')}}" target="_self">Tin tức</a><a href="" target="_self">Video</a><a href="{{URL::to('/contact')}}s" target="_blank">Liên hệ</a></nav></div></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="footer-bot">
                            <div class="container">
                                <div class="copyright">
                                    Copyright © 2017 - 2021 Công ty Cổ phần Trí Tri. <a href="https://melink.vn/" target="_blank">Thiết kế website</a> bởi <a target="_blank" href="https://melink.vn/">FasterCRM</a>
                                </div>
                            </div>
                        </div>
                    </footer>
                    
                    
                </div>
                
                
            
        <script type="text/javascript">
        //<![CDATA[
        var Page_Validators =  new Array(document.getElementById("ctl00_mdl140_ctl00_subscribe1_reqEmail"), document.getElementById("ctl00_mdl140_ctl00_subscribe1_regexEmail"));
        //]]>
        </script>

        <script type="text/javascript">
        //<![CDATA[
        var ctl00_mdl140_ctl00_subscribe1_reqEmail = document.all ? document.all["ctl00_mdl140_ctl00_subscribe1_reqEmail"] : document.getElementById("ctl00_mdl140_ctl00_subscribe1_reqEmail");
        ctl00_mdl140_ctl00_subscribe1_reqEmail.controltovalidate = "ctl00_mdl140_ctl00_subscribe1_txtEmail";
        ctl00_mdl140_ctl00_subscribe1_reqEmail.focusOnError = "t";
        ctl00_mdl140_ctl00_subscribe1_reqEmail.errormessage = "Vui lòng nhập email.";
        ctl00_mdl140_ctl00_subscribe1_reqEmail.display = "Dynamic";
        ctl00_mdl140_ctl00_subscribe1_reqEmail.validationGroup = "subscribe140";
        ctl00_mdl140_ctl00_subscribe1_reqEmail.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
        ctl00_mdl140_ctl00_subscribe1_reqEmail.initialvalue = "";
        var ctl00_mdl140_ctl00_subscribe1_regexEmail = document.all ? document.all["ctl00_mdl140_ctl00_subscribe1_regexEmail"] : document.getElementById("ctl00_mdl140_ctl00_subscribe1_regexEmail");
        ctl00_mdl140_ctl00_subscribe1_regexEmail.controltovalidate = "ctl00_mdl140_ctl00_subscribe1_txtEmail";
        ctl00_mdl140_ctl00_subscribe1_regexEmail.focusOnError = "t";
        ctl00_mdl140_ctl00_subscribe1_regexEmail.errormessage = "Email không hợp lệ.";
        ctl00_mdl140_ctl00_subscribe1_regexEmail.display = "Dynamic";
        ctl00_mdl140_ctl00_subscribe1_regexEmail.validationGroup = "subscribe140";
        ctl00_mdl140_ctl00_subscribe1_regexEmail.evaluationfunction = "RegularExpressionValidatorEvaluateIsValid";
        ctl00_mdl140_ctl00_subscribe1_regexEmail.validationexpression = "^([0-9a-zA-Z]([\'-.\\w]*[_0-9a-zA-Z])*@(([0-9a-zA-Z])+([-\\w\']*[0-9a-zA-Z])*\\.)+[a-zA-Z]{2,9})$";
        //]]>
        </script>


        <script type="text/javascript"></script><script type="text/javascript">
        <!--

          var wmctl00_mdl137_ctl00_Search_txtSearch = document.getElementById('ctl00_mdl137_ctl00_Search_txtSearch'); if(wmctl00_mdl137_ctl00_Search_txtSearch){wmctl00_mdl137_ctl00_Search_txtSearch.value = '';}
        //-->
        </script><script type="text/javascript">
        <!--

          var wmctl00_mdl140_ctl00_subscribe1_txtEmail = document.getElementById('ctl00_mdl140_ctl00_subscribe1_txtEmail'); if(wmctl00_mdl140_ctl00_subscribe1_txtEmail){wmctl00_mdl140_ctl00_subscribe1_txtEmail.value = '';}
        //-->
        </script>
        <script type="text/javascript">
        //<![CDATA[

        var Page_ValidationActive = false;
        if (typeof(ValidatorOnLoad) == "function") {
            ValidatorOnLoad();
        }

        function ValidatorOnSubmit() {
            if (Page_ValidationActive) {
                return ValidatorCommonOnSubmit();
            }
            else {
                return true;
            }
        }
                
        document.getElementById('ctl00_mdl140_ctl00_subscribe1_reqEmail').dispose = function() {
            Array.remove(Page_Validators, document.getElementById('ctl00_mdl140_ctl00_subscribe1_reqEmail'));
        }

        document.getElementById('ctl00_mdl140_ctl00_subscribe1_regexEmail').dispose = function() {
            Array.remove(Page_Validators, document.getElementById('ctl00_mdl140_ctl00_subscribe1_regexEmail'));
        }
        //]]>
        </script>
        </form>


      



             <!-- Load Facebook SDK for JavaScript -->
                  <div id="fb-root"></div>
                  <script>
                    window.fbAsyncInit = function() {
                      FB.init({
                        xfbml            : true,
                        version          : 'v10.0'
                      });
                    };

                    (function(d, s, id) {
                    var js, fjs = d.getElementsByTagName(s)[0];
                    if (d.getElementById(id)) return;
                    js = d.createElement(s); js.id = id;
                    js.src = 'https://connect.facebook.net/en_US/sdk/xfbml.customerchat.js';
                    fjs.parentNode.insertBefore(js, fjs);
                  }(document, 'script', 'facebook-jssdk'));</script>

                  <!-- Your Chat Plugin code -->
                  <div class="fb-customerchat"
                    attribution="setup_tool"
                    page_id="176770689781943">
                  </div>

    </body></html>
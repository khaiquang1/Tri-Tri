if (self.CavalryLogger) { CavalryLogger.start_js(["JOL8Oy6"]); }

__d("PluginLoggedOutUserTypedLogger",["Banzai","GeneratedLoggerUtils","nullthrows"],(function(a,b,c,d,e,f){"use strict";a=function(){function a(){this.$1={}}var c=a.prototype;c.log=function(a){b("GeneratedLoggerUtils").log("logger:PluginLoggedOutUserLoggerConfig",this.$1,b("Banzai").BASIC,a)};c.logVital=function(a){b("GeneratedLoggerUtils").log("logger:PluginLoggedOutUserLoggerConfig",this.$1,b("Banzai").VITAL,a)};c.logImmediately=function(a){b("GeneratedLoggerUtils").log("logger:PluginLoggedOutUserLoggerConfig",this.$1,{signal:!0},a)};c.clear=function(){this.$1={};return this};c.getData=function(){return babelHelpers["extends"]({},this.$1)};c.updateData=function(a){this.$1=babelHelpers["extends"]({},this.$1,a);return this};c.setHref=function(a){this.$1.href=a;return this};c.setIsSDK=function(a){this.$1.is_sdk=a;return this};c.setPluginAppID=function(a){this.$1.plugin_app_id=a;return this};c.setPluginName=function(a){this.$1.plugin_name=a;return this};c.setRefererURL=function(a){this.$1.referer_url=a;return this};c.updateExtraData=function(a){a=b("nullthrows")(b("GeneratedLoggerUtils").serializeMap(a));b("GeneratedLoggerUtils").checkExtraDataFieldNames(a,g);this.$1=babelHelpers["extends"]({},this.$1,a);return this};c.addToExtraData=function(a,b){var c={};c[a]=b;return this.updateExtraData(c)};return a}();var g={href:!0,is_sdk:!0,plugin_app_id:!0,plugin_name:!0,referer_url:!0};e.exports=a}),null);
__d("PresenceUtil",["CurrentUser","randomInt"],(function(a,b,c,d,e,f){f.getSessionID=a;f.hasUserCookie=c;var g=b("randomInt")(0,4294967295)+1;function a(){return g}function c(){return b("CurrentUser").isLoggedInNow()}}),null);
__d("PresencePrivacy",["Arbiter","ArbiterMixin","AsyncRequest","Bootloader","ChannelConstants","CurrentUser","PresencePrivacyInitialData","PresenceUtil","mixin"],(function(a,b,c,d,e,f){var g="/ajax/chat/privacy/settings.php",h="/ajax/chat/privacy/online_policy.php",i="/ajax/chat/privacy/visibility.php",j="friend_visibility",k="visibility",l="online_policy",m=babelHelpers["extends"]({},(c=b("PresencePrivacyInitialData")).privacyData),n=c.visibility,o=babelHelpers["extends"]({},c.privacyData),p=n,q=c.onlinePolicy,r=q,s=[],t=!1;d=function(a){babelHelpers.inheritsLoose(b,a);function b(){var b,c;for(var d=arguments.length,e=new Array(d),f=0;f<d;f++)e[f]=arguments[f];return(b=c=a.call.apply(a,[this].concat(e))||this,c.WHITELISTED=1,c.BLACKLISTED=-1,c.UNLISTED=0,c.ONLINE=1,c.OFFLINE=0,c.ONLINE_TO_WHITELIST=0,c.ONLINE_TO_BLACKLIST=1,b)||babelHelpers.assertThisInitialized(c)}var c=b.prototype;c.init=function(a,b,c){};c.setVisibility=function(a){p=n;y(a);var b={visibility:a},c={type:k,visibility:a};b=G(i,b,c);B(b,c);return a};c.getVisibility=function(){return n};c.setOnlinePolicy=function(a){r=q;z(a);var b={online_policy:a},c={type:l,online_policy:a};b=G(h,b,c);B(b,c);return a};c.getOnlinePolicy=function(){return q};c.getFriendVisibility=function(a){return m[a]||u.UNLISTED};c.getFriendsVisibility=function(){return m};c.isUserOffline=function(){return this.getVisibility()===u.OFFLINE};c.allows=function(a){return this.isUserOffline()?!1:this.allowsIfViewerIsOnline(a)};c.allowsIfViewerIsOnline=function(a){var b=this.getOnlinePolicy();return b===u.ONLINE_TO_WHITELIST?m[a]==u.WHITELISTED:m[a]!=u.BLACKLISTED};c.getOnlinePolicyStr=function(){if(this.isUserOffline())return"offline";var a=this.getOnlinePolicy();if(a===u.ONLINE_TO_WHITELIST)return"online_to_whitelist";return a===u.ONLINE_TO_BLACKLIST?"online_to_blacklist":"unknown"};c.setFriendsVisibility=function(a,b){if(a.length>0){var c={};for(var d=0;d<a.length;d++){var e=a[d];o[e]=m[e];c[e]=b}v(c);e=b;e==u.UNLISTED&&(e=o[a[0]]);d={users:a,setting:b,setting_type:e};a={type:j,settings:c};e=G(g,d,a);B(e,a)}return b};c.setFriendVisibilityMap=function(a,b){for(var c in a)o[c]=m[c];v(a);a={type:j,settings:a};B(F(b,a),a)};c.allow=function(a){if(this.allows(a))throw new Error("allow() should only be called for users that are not already allowed");if(this.getVisibility()===u.OFFLINE)throw new Error("allow() should only be called when the user is already online");var b=this.getOnlinePolicy()===u.ONLINE_TO_WHITELIST?u.WHITELISTED:u.UNLISTED;return this.setFriendsVisibility([a],b)};c.disallow=function(a){if(!this.allows(a))throw new Error("disallow() should only be called for users that are not already disallowed");if(this.getVisibility()===u.OFFLINE)throw new Error("disallow() should only be called when the user is already online");var b=this.getOnlinePolicy()===u.ONLINE_TO_BLACKLIST?u.BLACKLISTED:u.UNLISTED;return this.setFriendsVisibility([a],b)};c.getBlacklist=function(){var a=[];for(var b in m)m[b]===u.BLACKLISTED&&a.push(b);return a};c.getWhitelist=function(){var a=[];for(var b in m)m[b]===u.WHITELISTED&&a.push(b);return a};c.getMapForTest=function(){return m};c.setMapForTest=function(a){m=a};return b}(b("mixin")(b("ArbiterMixin")));var u=new d();function v(a){var c;for(c in a){var d=a[c];if(c==b("CurrentUser").getID())throw new Error("Invalid to set current user's visibility");switch(d){case u.WHITELISTED:case u.BLACKLISTED:case u.UNLISTED:break;default:throw new Error("Invalid state: "+d)}}for(c in a)m[c]=a[c];u.inform("privacy-changed")}function w(a,b){var c={};c[a]=b;v(c)}function x(a){b("Bootloader").loadModules(["MessengerMQTTPresenceReporting"],function(b){b.reportChatVisibility(!!a)},"PresencePrivacy")}function y(a){switch(a){case u.ONLINE:case u.OFFLINE:break;default:throw new Error("Invalid visibility: "+a)}n=a;x(a);u.inform("privacy-changed");u.inform("privacy-user-presence-changed")}function z(a){switch(a){case u.ONLINE_TO_WHITELIST:case u.ONLINE_TO_BLACKLIST:break;default:throw new Error("Invalid default online policy: "+a)}q=a;u.inform("privacy-user-presence-changed");u.inform("privacy-changed")}function A(a,b){t=!0,a.send()}function B(a,b){s.push({request:a,data:b});if(!t){a=s.shift();A(a.request,a.data)}}function C(a,b){b=a.type;if(b===j){u.inform("privacy-availability-changed");for(var c in a.settings)o[c]=a.settings[c]}else b===k?p=a.visibility:b===l&&(r=a.online_policy),u.inform("privacy-user-presence-response")}function D(a,b){n!==p&&y(p),q!==r&&z(r),Object.assign(m,o),u.inform("privacy-changed"),s=[]}function E(a){t=!1;if(s.length>0){a=s.shift();A(a.request,a.data)}}function F(a,c){if(b("PresenceUtil")!=null){var d=a.getData();d.window_id=b("PresenceUtil").getSessionID();a.setData(d)}a.setHandler(C.bind(this,c)).setErrorHandler(D.bind(this,c)).setTransportErrorHandler(D.bind(this,c)).setFinallyHandler(E.bind(this)).setAllowCrossPageTransition(!0);return a}function G(a,c,d){return F(new(b("AsyncRequest"))(a).setData(c),d)}function a(a,c){a=c.obj;if(a.viewer_id!=b("CurrentUser").getID())throw new Error("Viewer got from the channel is not the real viewer");if(a.window_id===b("PresenceUtil").getSessionID())return;var d=a.data;if(a.event=="access_control_entry")d.target_ids.forEach(function(a){w(a,d.setting),o[a]=d.setting});else{if(a.event=="visibility_update"){c=d.visibility?u.ONLINE:u.OFFLINE;y(c);p=c}else a.event=="online_policy_update"&&(z(d.online_policy),r=d.online_policy);u.inform("privacy-user-presence-response")}}u.inform("privacy-changed");u.inform("privacy-user-presence-changed","state");b("Arbiter").subscribe(b("ChannelConstants").getArbiterType("privacy_changed"),a.bind(this));b("Arbiter").subscribe(b("ChannelConstants").ON_CONFIG,function(a,b){a=b.getConfig("visibility",null);if(a!==null&&typeof a!=="undefined"){b=a?u.ONLINE:u.OFFLINE;y(b)}}.bind(this));f=u;e.exports=f}),null);
__d("ChatVisibility",["Arbiter","PresencePrivacy"],(function(a,b,c,d,e,f){var g={isOnline:function(){return b("PresencePrivacy").getVisibility()===b("PresencePrivacy").ONLINE},hasBlackbirdEnabled:function(){return this.isVisibleToMostFriends()||this.isVisibleToSomeFriends()},isVisibleToMostFriends:function(){return b("PresencePrivacy").getOnlinePolicy()===b("PresencePrivacy").ONLINE_TO_BLACKLIST&&b("PresencePrivacy").getBlacklist().length>0},isVisibleToSomeFriends:function(){return b("PresencePrivacy").getOnlinePolicy()===b("PresencePrivacy").ONLINE_TO_WHITELIST&&b("PresencePrivacy").getWhitelist().length>0},goOnline:function(a){b("PresencePrivacy").getVisibility()===b("PresencePrivacy").OFFLINE&&(b("PresencePrivacy").setVisibility(b("PresencePrivacy").ONLINE),b("Arbiter").inform("chat-visibility/go-online")),a&&a()},goOffline:function(a){b("PresencePrivacy").getVisibility()===b("PresencePrivacy").ONLINE&&(b("PresencePrivacy").setVisibility(b("PresencePrivacy").OFFLINE),b("Arbiter").inform("chat-visibility/go-offline")),a&&a()},toggleVisibility:function(){g.isOnline()?g.goOffline():g.goOnline()}};e.exports=g}),null);
__d("LastActiveTimes",["fbt","ServerTime"],(function(a,b,c,d,e,f,g){f.update=a;f.getShortDisplay=c;f.get=d;f.getDebugData=e;var h={};function i(a){if(!a||a<0)return null;a=b("ServerTime").get()/1e3-a;a=Math.floor(a/60);var c=Math.floor(a/60),d=Math.floor(c/24);if(a<=1)return g._({"*":"{count}m"},[g._param("count",1,[0])]);else if(a<60)return g._({"*":"{count}m"},[g._param("count",a,[0])]);else if(c<24)return g._({"*":"{count}h"},[g._param("count",c,[0])]);else if(d<3)return g._({"*":"{count}d"},[g._param("count",d,[0])]);else return null}function j(a,b){(!(a in h)||h[a]<b)&&(h[a]=b)}function k(a){if(a in h)return h[a];else return 0}function a(a){for(var b in a)j(b,a[b])}function c(a){return i(k(a))}function d(a){return k(a)}function e(){return h}}),null);
__d("PresenceStatus",["ArbiterMixin","AvailableListConstants","AvailableListInitialData","Bootloader","ChatVisibility","CurrentUser","FBIDCheck","FBLogger","LastActiveTimes","ODS","PresenceConfig","PresencePrivacy","ServerTime","createObjectFrom","debounceAcrossTransitions","gkx"],(function(a,b,c,d,e,f){b("ODS").setEntitySample("presence",1e-4);var g={},h={},i={},j={},k=Object.assign({},b("ArbiterMixin")),l=b("debounceAcrossTransitions")(function(){return k.inform("change")},0);function m(a){var c,d=parseInt(a.topic.match(/\d+$/),10);a=parseInt(JSON.parse(a.payload).lat,10);var e=Date.now()-a*1e3;e=b("PresenceConfig").get("active_cutoff")*1e3-e;b("LastActiveTimes").update((c={},c[d]=a,c));k.checkPresence(d);k.get(d)===b("AvailableListConstants").ACTIVE&&(window.clearTimeout(j[d].timeout),j[d].timeout=window.setTimeout(function(){k.checkPresence(d)},e))}function n(a){return/^\d+$/.test(a)}Object.assign(k,{resetPresenceData:function(){g={},h={}},reset:function(){k.resetPresenceData(),i={}},get:function(a){!n(a)&&b("PresenceConfig").get("presence_throw_for_malformed_id")&&b("FBLogger")("presence").warn("received malformed id '%s'",a);if(a==b("CurrentUser").getID())return b("ChatVisibility").isOnline()?b("AvailableListConstants").ACTIVE:b("AvailableListConstants").OFFLINE;n(a)&&!b("FBIDCheck").isUser_deprecated(a)&&!j[a]&&(b("ODS").bumpEntityKey(3303,"presence","page_subscribe"),j[a]={},b("PresenceConfig").get("presence_page_green_dot_sub")&&b("Bootloader").loadModules(["SkywalkerManager"],function(b){return b.subscribe("presence_push/fb/"+a,m)},"PresenceStatus"));var c=b("AvailableListConstants").OFFLINE;a in g&&(c=g[a]);b("PresencePrivacy").allows(a)||(c=b("AvailableListConstants").OFFLINE);return c},getCapabilities:function(a){a=h[a];return a?a:0},isPlayingCanvasGameUser:function(a){return!!i[a]},getGroup:function(a){return a.some(function(a){return a==b("CurrentUser").getID()?!1:k.get(a)===b("AvailableListConstants").ACTIVE})?b("AvailableListConstants").ACTIVE:b("AvailableListConstants").OFFLINE},set:function(a,c,d,e,f,i){if(a==b("CurrentUser").getID())return!1;var j;if(c!==null&&c!==void 0){c=c==b("AvailableListConstants").ACTIVE?b("AvailableListConstants").ACTIVE:b("AvailableListConstants").OFFLINE;d=k.get(a);j=d!=c;if((j||c==b("AvailableListConstants").ACTIVE)&&b("FBIDCheck").isUser_deprecated(a)){b("LastActiveTimes").update((e={},e[a]=b("ServerTime").get()/1e3,e))}g[a]=c}d=!1;f!==void 0&&f!==null&&(d=k.getCapabilities(a)!=f,h[a]=f);e=j||d;e&&!i&&l();return e},setPlayingCanvasGameFriends:function(a){if(!b("gkx")("678262"))return;i=b("createObjectFrom")(a)},getOnlineIDs:function(){var a,c=[];for(a in g)k.get(a)===b("AvailableListConstants").ACTIVE&&c.push(a);return c},getAllIDs:function(){return Object.keys(g)},getOnlineCount:function(){return k.getOnlineIDs().length},getPresenceStats:function(){var a=0,c=0,d=0;for(var e in g){a+=1;switch(k.get(e)){case b("AvailableListConstants").OFFLINE:c+=1;break;case b("AvailableListConstants").ACTIVE:d+=1;break;default:break}}return{total:a,offline:c,active:d}},getAllDebugInfo:function(){var a={};for(var b in g)a[b]={p:g[b],vc:h[b]};return a},setMultiFromMQTT:function(a){var c={};Array.isArray(a)&&a.forEach(function(a){a.l&&(c[a.u]=a.l),k.set(a.u,a.p,!1,"mqtt",a.c,!0)});b("LastActiveTimes").update(c);l()},setMultiChatproxy:function(a){var c={};for(var d in a){a[d].lat&&(c[d]=a[d].lat);var e=a[d].p;k.set(d,e,!1,"chatproxy",a[d].vc,!0)}b("LastActiveTimes").update(c);l()},setMultiActive:function(a,c){var d=!1;a.forEach(function(a){k.set(a,b("AvailableListConstants").ACTIVE,!1,c,null,!0)&&(d=!0)});d&&l()},checkPresence:function(a){var c=!1,d=Math.ceil(Date.now()/1e3)-b("LastActiveTimes").get(a);k.set(a,d<b("PresenceConfig").get("active_cutoff")?b("AvailableListConstants").ACTIVE:b("AvailableListConstants").OFFLINE,!1,"pylon",null,!0)&&(c=!0);c&&l()}});b("AvailableListInitialData").activeList&&b("AvailableListInitialData").activeList.length>0&&k.setMultiActive(b("AvailableListInitialData").activeList,"available_list_active");b("AvailableListInitialData").playingNow&&b("AvailableListInitialData").playingNow.length>0&&k.setPlayingCanvasGameFriends(b("AvailableListInitialData").playingNow);b("AvailableListInitialData").lastActiveTimes&&Object.keys(b("AvailableListInitialData").lastActiveTimes).length>0&&b("LastActiveTimes").update(b("AvailableListInitialData").lastActiveTimes);a=k;e.exports=a}),null);
__d("collectDataAttributes",["DataAttributeUtils","getContextualParent"],(function(a,b,c,d,e,f){var g="normal";function a(a,c,d){var e={},f=[],h=c.length,i;for(i=0;i<h;++i)e[c[i]]={},f.push("data-"+c[i]);if(d){e[g]={};for(i=0;i<(d||[]).length;++i)f.push(d[i])}d={tn:"","tn-debug":","};a=a;while(a){if(a.getAttribute)for(i=0;i<f.length;++i){var j=f[i],k=b("DataAttributeUtils").getDataAttribute(a,j);if(k){if(i>=h){e[g][j]===void 0&&(e[g][j]=k);continue}j=JSON.parse(k);for(var l in j)d[l]!==void 0?(e[c[i]][l]===void 0&&(e[c[i]][l]=[]),e[c[i]][l].push(j[l])):e[c[i]][l]===void 0&&(e[c[i]][l]=j[l])}}a=b("getContextualParent")(a)}for(var m in e)for(var n in d)e[m][n]!==void 0&&(e[m][n]=e[m][n].join(d[n]));return e}e.exports=a}),null);
__d("FeedTrackingAsync",["Arbiter","Run","collectDataAttributes"],(function(a,b,c,d,e,f){f.init=a;var g;function a(){if(g)return;g=b("Arbiter").subscribe("AsyncRequest/send",function(a,c){a=c.request;c=a.getRelativeTo();if(c){a=a.getData();c=b("collectDataAttributes")(c,["ft"]);c.ft&&Object.keys(c.ft).length&&Object.assign(a,c)}});b("Run").onLeave(function(){g&&(g.unsubscribe(),g=null)})}}),null);
__d("FormSubmit",["AsyncRequest","AsyncResponse","CSS","DOMQuery","Event","Form","Parent","trackReferrer"],(function(a,b,c,d,e,f){var g={buildRequest:function(a,c){var d=(b("Form").getAttribute(a,"method")||"GET").toUpperCase();c=c&&b("Parent").byTag(c,"button")||c;var e=c&&b("Parent").byClass(c,"stat_elem")||a;if(b("CSS").hasClass(e,"async_saving"))return null;if(c&&(c.form!==a||c.nodeName!="INPUT"&&c.nodeName!="BUTTON"||c.type!="submit")){var f=b("DOMQuery").scry(a,".enter_submit_target")[0];f&&(c=f)}f=b("Form").serialize(a,c);b("Form").setDisabled(a,!0);c=b("Form").getAttribute(a,"ajaxify")||b("Form").getAttribute(a,"action");var g=!!b("Form").getAttribute(a,"data-cors");b("trackReferrer")(a,c);return new(b("AsyncRequest"))().setAllowCrossOrigin(g).setURI(c).setData(f).setNectarModuleDataSafe(a).setReadOnly(d=="GET").setMethod(d).setRelativeTo(a).setStatusElement(e).setInitialHandler(b("Form").setDisabled.bind(null,a,!1)).setHandler(function(c){b("Event").fire(a,"success",{response:c})}).setErrorHandler(function(c){b("Event").fire(a,"error",{response:c})!==!1&&b("AsyncResponse").defaultErrorHandler(c)}).setFinallyHandler(b("Form").setDisabled.bind(null,a,!1))},send:function(a,b){a=g.buildRequest(a,b);a&&a.send();return a}};a=g;e.exports=a}),null);
__d("AsyncFormRequestUtils",["Arbiter"],(function(a,b,c,d,e,f){f.subscribe=a;function a(a,c,d){b("Arbiter").subscribe("AsyncRequest/"+c,function(b,c){b=c.request.relativeTo;b&&b===a&&d(c)})}}),null);
__d("MessengerWebPluginAnonymousTypedLogger",["Banzai","GeneratedLoggerUtils"],(function(a,b,c,d,e,f){"use strict";a=function(){function a(){this.$1={}}var c=a.prototype;c.log=function(a){b("GeneratedLoggerUtils").log("logger:MessengerWebPluginAnonymousLoggerConfig",this.$1,b("Banzai").BASIC,a)};c.logVital=function(a){b("GeneratedLoggerUtils").log("logger:MessengerWebPluginAnonymousLoggerConfig",this.$1,b("Banzai").VITAL,a)};c.logImmediately=function(a){b("GeneratedLoggerUtils").log("logger:MessengerWebPluginAnonymousLoggerConfig",this.$1,{signal:!0},a)};c.clear=function(){this.$1={};return this};c.getData=function(){return babelHelpers["extends"]({},this.$1)};c.updateData=function(a){this.$1=babelHelpers["extends"]({},this.$1,a);return this};c.setAppID=function(a){this.$1.app_id=a;return this};c.setCallsite=function(a){this.$1.callsite=a;return this};c.setClientFbid=function(a){this.$1.client_fbid=a;return this};c.setDebugData=function(a){this.$1.debug_data=a;return this};c.setDeltaType=function(a){this.$1.delta_type=a;return this};c.setDeviceParam=function(a){this.$1.device_param=a;return this};c.setDomainSource=function(a){this.$1.domain_source=a;return this};c.setDuration=function(a){this.$1.duration=a;return this};c.setEvent=function(a){this.$1.event=a;return this};c.setEventTimestamp=function(a){this.$1.event_timestamp=a;return this};c.setExceptionMessage=function(a){this.$1.exception_message=a;return this};c.setExceptionStacktrace=function(a){this.$1.exception_stacktrace=a;return this};c.setExceptionType=function(a){this.$1.exception_type=a;return this};c.setGateway=function(a){this.$1.gateway=a;return this};c.setIsUserLoggedIn=function(a){this.$1.is_user_logged_in=a;return this};c.setNewEventName=function(a){this.$1.new_event_name=a;return this};c.setOtherFields=function(a){this.$1.other_fields=b("GeneratedLoggerUtils").serializeMap(a);return this};c.setPageID=function(a){this.$1.page_id=a;return this};c.setPluginExtra=function(a){this.$1.plugin_extra=b("GeneratedLoggerUtils").serializeMap(a);return this};c.setPluginInterface=function(a){this.$1.plugin_interface=a;return this};c.setPluginName=function(a){this.$1.plugin_name=a;return this};c.setRefererURI=function(a){this.$1.referer_uri=a;return this};c.setRequestHeaders=function(a){this.$1.request_headers=a;return this};c.setRequestID=function(a){this.$1.request_id=a;return this};c.setRequestParam=function(a){this.$1.request_param=a;return this};c.setTabName=function(a){this.$1.tab_name=a;return this};c.setUpgradeLoggedInUserID=function(a){this.$1.upgrade_logged_in_user_id=a;return this};c.setUpstreamEvent=function(a){this.$1.upstream_event=a;return this};c.setWhitelistedDomains=function(a){this.$1.whitelisted_domains=a;return this};return a}();c={app_id:!0,callsite:!0,client_fbid:!0,debug_data:!0,delta_type:!0,device_param:!0,domain_source:!0,duration:!0,event:!0,event_timestamp:!0,exception_message:!0,exception_stacktrace:!0,exception_type:!0,gateway:!0,is_user_logged_in:!0,new_event_name:!0,other_fields:!0,page_id:!0,plugin_extra:!0,plugin_interface:!0,plugin_name:!0,referer_uri:!0,request_headers:!0,request_id:!0,request_param:!0,tab_name:!0,upgrade_logged_in_user_id:!0,upstream_event:!0,whitelisted_domains:!0};e.exports=a}),null);
__d("PluginOptin",["DOMEvent","DOMEventListener","MessengerWebPluginAnonymousTypedLogger","PlatformWidgetEndpoint","PluginLoggedOutUserTypedLogger","PluginMessage","PopupWindow","URI","UserAgent_DEPRECATED"],(function(a,b,c,d,e,f){var g;function h(a,c){Object.assign(this,{return_params:(g||(g=b("URI"))).getRequestURI().getQueryData(),login_params:{},optin_params:{},plugin:a,api_key:c}),this.addReturnParams({ret:"optin"}),delete this.return_params.hash}Object.assign(h.prototype,{addReturnParams:function(a){Object.assign(this.return_params,a);return this},addLoginParams:function(a){Object.assign(this.login_params,a);return this},addOptinParams:function(a){Object.assign(this.optin_params,a);return this},start:function(){var a=this.api_key||127760087237610;(g||(g=b("URI"))).getRequestURI().getQueryData().kid_directed_site&&(this.login_params.kid_directed_site=!0);this.login_params.referrer=document.referrer;var c=new(g||(g=b("URI")))(b("PlatformWidgetEndpoint").dialog("plugin.optin")).addQueryData(this.optin_params).addQueryData({app_id:a,secure:g.getRequestURI().isSecure(),social_plugin:this.plugin,return_params:JSON.stringify(this.return_params),login_params:JSON.stringify(this.login_params)});b("UserAgent_DEPRECATED").mobile()?c.setSubdomain("m"):c.addQueryData({display:"popup"});this.return_params.act!==null&&this.return_params.act==="send"&&new(b("PluginLoggedOutUserTypedLogger"))().setPluginAppID(a).setPluginName(this.return_params.act).setHref(this.return_params.href).logVital();this.popup=b("PopupWindow").open(c.toString(),420,450);this.plugin==="customer_chat"&&this.login_params.chat_plugin_upgrade!=null&&this.login_params.chat_plugin_upgrade===!0&&new(b("MessengerWebPluginAnonymousTypedLogger"))().setPageID(this.login_params.page_id).setClientFbid(this.login_params.guest_id).setRequestID(this.login_params.request_id).setNewEventName("upgrade_plugin_optin_popup_opened").log();b("PluginMessage").listen();return this}});h.starter=function(a,b,c,d){a=new h(a);a.addReturnParams(b||{});a.addLoginParams(c||{});a.addOptinParams(d||{});return a.start.bind(a)};h.listen=function(a,c,d,e,f){b("DOMEventListener").add(a,"click",function(a){new(b("DOMEvent"))(a).kill(),h.starter(c,d,e,f)()})};a=h;e.exports=a}),null);
__d("PluginConnectButton",["Arbiter","CSS","DOM","DOMEvent","DOMEventListener","Focus","FormSubmit","PlatformWidgetEndpoint","Plugin","PluginOptin","URI"],(function(a,b,c,d,e,f){var g,h="new",i=b("Arbiter").subscribe,j=function(a,c){return b("DOMEventListener").add(a,"click",c)};function a(a){this.config=a;this.busy=!1;var c=b("DOM").find(a.form,".pluginConnectButton");this.buttons=c;this.node_connected=b("DOM").find(c,".pluginConnectButtonConnected");this.node_disconnected=b("DOM").find(c,".pluginConnectButtonDisconnected");var d=function(a){new(b("DOMEvent"))(a).kill(),this.busy||(this.submit(),this.busy=this.canpersonalize)}.bind(this);j(this.node_disconnected,d);a.buttontype===1?j(b("DOM").find(c,".pluginButtonX button"),d):a.buttontype===2&&j(this.node_connected,d);j(this.node_connected,function(a){return b("Arbiter").inform(b("Plugin").DIALOG,a)});c=this.update.bind(this);i(b("Plugin").CONNECT,c,h);i(b("Plugin").DISCONNECT,c,h);i(b("Plugin").ERROR,this.error.bind(this),h)}Object.assign(a.prototype,{update:function(a,c){this.busy=!1;var d=this.config;if(c.identifier!==d.identifier)return;c=a===b("Plugin").CONNECT;a=b("PlatformWidgetEndpoint").plugins(d.plugin);a+="/"+(c?"disconnect":"connect");b("CSS")[c?"show":"hide"](this.node_connected);b("CSS")[c?"hide":"show"](this.node_disconnected);try{if(document.activeElement.nodeName.toLowerCase()==="button"){var e=c?this.node_connected:this.node_disconnected;e=b("DOM").find(e,"button");e.disabled=!1;b("Focus").set(e)}}catch(a){}d.connected=c;d.form.setAttribute("action",a);d.form.setAttribute("ajaxify",a)},error:function(a,c){this.busy=!1;if(c.action in{connect:1,disconnect:1}){b("DOM").setContent(this.buttons,c.content);a=b("DOM").scry(this.buttons,".confirmButton");a.length===1&&b("Focus").set(a[0])}},submit:function(){if(!this.config.canpersonalize)return this.login();b("FormSubmit").send(this.config.form);this.fireStateToggle()},fireStateToggle:function(){var a=this.config;a.connected?b("Plugin").disconnect(a.identifier):b("Plugin").connect(a.identifier)},login:function(){var a=this.config.plugin;new(b("PluginOptin"))(a,(g||(g=b("URI"))).getRequestURI().getQueryData().api_key).addReturnParams({act:"connect"}).addLoginParams({social_plugin_action:this.config.pluginaction,kid_directed_site:this.config.kidDirectedSite}).start()}});e.exports=a}),null);
__d("PluginFeedLikeButton",["Arbiter","AsyncFormRequestUtils","CSS","ClientIDs","DOM","DOMEventListener","FormSubmit","Keys","PluginOptin","URI"],(function(a,b,c,d,e,f){f.addClientId=a;f.loggedOutLikeButton=c;f.init=d;var g;window.resetConfirmStoryLike=function(a){b("CSS").show(b("DOM").find(document,"#likeStory_"+a)),b("DOM").remove(b("DOM").find(document,"#confirmStory_"+a))};function a(a){a.setAttribute("value",b("ClientIDs").getNewClientID())}function c(a,c,d){var e="";if(c===23)e="post";else if(c===50)e="page";else throw new Error("Invalid FBFeedLocation type.");c=new(b("PluginOptin"))(e).addReturnParams({act:"like_"+a});b("DOMEventListener").add(d,"click",c.start.bind(c))}function d(a,c,d,e,f){var h,i=function(a){if(a.type==="keypress")if(a.keyCode===b("Keys").RETURN||a.keyCode===b("Keys").SPACE)b("FormSubmit").send(f);else return;b("FormSubmit").send(f)};(h=b("DOMEventListener")).add(c,"click",i);h.add(d,"click",i);h.add(c,"keypress",i);h.add(d,"keypress",i);h=e.getAttribute("value")==="1";b("AsyncFormRequestUtils").subscribe(f,"send",function(f){f=e.getAttribute("value")==="1";b("CSS").conditionShow(d,f);b("CSS").conditionShow(c,!f);b("Arbiter").inform("embeddedUfiToggle",{isLike:f,storyToken:a});e.setAttribute("value",f?"":"1")});b("AsyncFormRequestUtils").subscribe(f,"response",function(f){f=f.response.payload;if(f&&!f.success){f=f.isLike;b("CSS").conditionShow(c,f);b("CSS").conditionShow(d,!f);b("Arbiter").inform("revertLike",{isLike:f,storyToken:a});e.setAttribute("value",f?"1":"")}});i=new(g||(g=b("URI")))(window.location.search).getQueryData();h&&i.act==="like_"+a&&b("FormSubmit").send(f)}}),null);
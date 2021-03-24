if (self.CavalryLogger) { CavalryLogger.start_js(["jQlnCnf"]); }

__d("ChatReliabilityTypedLogger",["Banzai","GeneratedLoggerUtils"],(function(a,b,c,d,e,f){"use strict";a=function(){function a(){this.$1={}}var c=a.prototype;c.log=function(a){b("GeneratedLoggerUtils").log("logger:ChatReliabilityLoggerConfig",this.$1,b("Banzai").BASIC,a)};c.logVital=function(a){b("GeneratedLoggerUtils").log("logger:ChatReliabilityLoggerConfig",this.$1,b("Banzai").VITAL,a)};c.logImmediately=function(a){b("GeneratedLoggerUtils").log("logger:ChatReliabilityLoggerConfig",this.$1,{signal:!0},a)};c.clear=function(){this.$1={};return this};c.getData=function(){return babelHelpers["extends"]({},this.$1)};c.updateData=function(a){this.$1=babelHelpers["extends"]({},this.$1,a);return this};c.setEvent=function(a){this.$1.event=a;return this};c.setEventData=function(a){this.$1.event_data=a;return this};return a}();c={event:!0,event_data:!0};e.exports=a}),null);
__d("CometDialogContextBlue",["BaseModal.react","ReactDOM","react"],(function(a,b,c,d,e,f){"use strict";var g,h=g||b("react");function a(a,c,d){var e=document.body,f=document.createElement("div");e!=null&&e.appendChild(f);e=function(){d!=null&&d.apply(void 0,arguments),window.setTimeout(function(){b("ReactDOM").unmountComponentAtNode(f),f.remove()},0)};b("ReactDOM").render(h.jsx(b("BaseModal.react"),{stackingBehavior:"above-everything",children:h.jsx(a,babelHelpers["extends"]({},c,{onClose:e}))}),f)}c=h.createContext(a);e.exports=c}),null);
__d("useCometPrerendererFallback",["emptyFunction"],(function(a,b,c,d,e,f){"use strict";a=function(a,c,d,e,f){return[{isVisible:c,shouldPrerender:!1},a=b("emptyFunction"),a,a,a]};c=a;e.exports=c}),null);
__d("BaseBlueModal.react",["BaseHeadingContext","BasePortal.react","CometContextualLayerAnchorRoot.react","FocusRegion.react","Layer","LayerTabIsolation","ModalLayer","focusScopeQueries","react","useStable"],(function(a,b,c,d,e,f){"use strict";e.exports=a;var g,h=g||b("react");function a(a){a=a.children;var c=b("useStable")(function(){return document.createElement("div")});h.useLayoutEffect(function(){var a=new(b("Layer"))({addedBehaviors:[b("ModalLayer"),b("LayerTabIsolation")]},c);a.show();return function(){a.destroy()}},[c]);return h.jsx(b("BasePortal.react"),{target:c,children:h.jsx(b("BaseHeadingContext").Provider,{value:1,children:h.jsx("div",{className:"l9j0dhe7 h3gjbzrl",children:h.jsx(b("CometContextualLayerAnchorRoot.react"),{children:h.jsx(b("FocusRegion.react").FocusRegion,{autoFocusQuery:b("focusScopeQueries").headerFirstTabbableSecondScopeQuery,autoRestoreFocus:!0,containFocusQuery:b("focusScopeQueries").tabbableScopeQuery,recoverFocusQuery:b("focusScopeQueries").headerFirstTabbableSecondScopeQuery,children:a})})})})})}}),null);
__d("ClickableArea.react",["Focus","ReactDOM","react"],(function(a,b,c,d,e,f){var g,h=g||b("react");a=function(a){babelHelpers.inheritsLoose(c,a);function c(){return a.apply(this,arguments)||this}var d=c.prototype;d.componentDidMount=function(){if(this.props.buttonRef){var a=this.props.buttonRef();b("Focus").relocate(b("ReactDOM").findDOMNode(a),b("ReactDOM").findDOMNode(this))}};d.render=function(){var a=this.props,b=a.children,c=a.onClick;a=babelHelpers.objectWithoutPropertiesLoose(a,["children","onClick"]);return h.cloneElement(h.Children.only(b),babelHelpers["extends"]({},a,{onClick:c}))};return c}(h.Component);e.exports=a}),null);
__d("ChatReliabilityEvents",[],(function(a,b,c,d,e,f){a=Object.freeze({ERROR:"error",CHANNEL_DISCONNECT:"channel_disconnect",CHANNEL_CONNECT:"channel_connect",CHANNEL_INIT:"channel_init",CHANNEL_NOCONFIG:"channel_noconfig",CHANNEL_HISTORY_INVALID:"channel_history_invalid",CHANNEL_STALLED:"channel_stalled",MESSAGE_RECEIVED:"msg_received",MESSAGE_SEND_START:"msg_send_start",THREAD_INFO_ENDPOINT_FATAL:"thread_info_fatal",DFF_ENDPOINT_FATAL:"invalidate_global_state_fatal",DFF_DELTA_INIT:"dff_initiated_by_delta",DFF_HOLE_INIT:"dff_initiated_by_hole",FETCHING_MANY_MESSAGES:"fetching_many_messages",THREAD_INFO_MISSING:"thread_info_missing",SET_THREAD_ID_MAP:"set_thread_id_map",DELETE_THREAD:"delete_thread",PROCESS_DELTA:"process_delta",RTI_SESSION:"chatproxy_rti_session",ON_INVALID_HISTORY:"chatproxy_on_invalid_history",GET_DEBUG_PRESENCE:"chatproxy_get_debug_presence"});e.exports=a}),null);
__d("ChatReliabilityInstrumentation",["ChatReliabilityEvents","ChatReliabilityTypedLogger","gkx"],(function(a,b,c,d,e,f){"use strict";f.logERROR=a;f.logCHANNEL_DISCONNECT=c;f.logCHANNEL_CONNECT=d;f.logCHANNEL_HISTORY_INVALID=e;f.logMESSAGE_RECEIVED=h;f.logMESSAGE_SEND_START=i;f.logCHANNEL_STALLED=j;f.logCHANNEL_INIT=k;f.logCHANNEL_NOCONFIG=l;f.logDFF_DELTA_INIT=m;f.logDFF_HOLE_INIT=n;f.logFETCHING_MANY_MESSAGES=o;f.logPROCESS_DELTA=p;f.logTHREAD_INFO_MISSING=q;f.logSET_THREAD_ID_MAP=r;f.logDELETE_THREAD=s;f.logCHATPROXY_EVENT=t;var g=function(a,c){if(!b("gkx")("678576"))return;new(b("ChatReliabilityTypedLogger"))().setEvent(a).setEventData(c).log()};function a(a){g(b("ChatReliabilityEvents").ERROR,a)}function c(a){g(b("ChatReliabilityEvents").CHANNEL_DISCONNECT,a)}function d(a){g(b("ChatReliabilityEvents").CHANNEL_CONNECT,a)}function e(a){g(b("ChatReliabilityEvents").CHANNEL_HISTORY_INVALID,a)}function h(a){g(b("ChatReliabilityEvents").MESSAGE_RECEIVED,a)}function i(a){g(b("ChatReliabilityEvents").MESSAGE_SEND_START,a)}function j(a){g(b("ChatReliabilityEvents").CHANNEL_STALLED,a)}function k(a){g(b("ChatReliabilityEvents").CHANNEL_INIT,a)}function l(a){g(b("ChatReliabilityEvents").CHANNEL_NOCONFIG,a)}function m(a){g(b("ChatReliabilityEvents").DFF_DELTA_INIT,a)}function n(a){g(b("ChatReliabilityEvents").DFF_HOLE_INIT,a)}function o(a){g(b("ChatReliabilityEvents").FETCHING_MANY_MESSAGES,a)}function p(a){g(b("ChatReliabilityEvents").PROCESS_DELTA,a)}function q(a){g(b("ChatReliabilityEvents").THREAD_INFO_MISSING,a)}function r(a){g(b("ChatReliabilityEvents").SET_THREAD_ID_MAP,a)}function s(a){g(b("ChatReliabilityEvents").DELETE_THREAD,a)}function t(a){g(a)}}),null);
__d("MessengerDispatcher",["Dispatcher_DEPRECATED"],(function(a,b,c,d,e,f){"use strict";a=new(b("Dispatcher_DEPRECATED"))();e.exports=a}),null);
__d("MercuryFilters.bs",[],(function(a,b,c,d,e,f){"use strict";var g="unread";function a(a){return[g]}function b(a){return a===g}c="all";d="groups";e="named";var h="unnamed",i="WORK_UNSYNCED_CHAT";f.all=c;f.unread=g;f.groups=d;f.named=e;f.unnamed=h;f.unsyncedChat=i;f.getSupportedFilters=a;f.isSupportedFilter=b}),null);
__d("MercuryFilters.re",["MercuryFilters.bs"],(function(a,b,c,d,e,f){c=(a=b("MercuryFilters.bs")).all;f.all=c;d=a.unread;f.unread=d;e=a.groups;f.groups=e;b=a.named;f.named=b;c=a.unnamed;f.unnamed=c;d=a.unsyncedChat;f.unsyncedChat=d;e=a.getSupportedFilters;f.getSupportedFilters=e;b=a.isSupportedFilter;f.isSupportedFilter=b}),null);
__d("MessengerThreadFetchLoggerUtil",["FBLogger","MercuryIDs","QuickPerformanceLogger","performanceAbsoluteNow"],(function(a,b,c,d,e,f){"use strict";var g,h=1,i=new Map();a=function(a){try{b("QuickPerformanceLogger").markerStart(25296904,h);a=b("MercuryIDs").isValid(a)?b("MercuryIDs").tokenize(a).value:a;i.set(a,h);h++}catch(a){b("FBLogger")("mercury").catching(a).warn("Logging thread info fetch encountered error")}};f.markerStart=a;c=function(a,c){try{a=b("MercuryIDs").isValid(a)?b("MercuryIDs").tokenize(a).value:a;var d=i.get(a);d!=null&&(b("QuickPerformanceLogger").markerEnd(25296904,c,d),i["delete"](a))}catch(a){b("FBLogger")("mercury").catching(a).warn("Logging thread info fetch encountered error")}};f.markerEnd=c;d=function(a,c,d){d===void 0&&(d=(g||(g=b("performanceAbsoluteNow")))());a=i.get(a);a!=null&&b("QuickPerformanceLogger").markerPoint(25296904,c,{instanceKey:a,timestamp:d})};f.markerPoint=d}),null);
__d("WebGraphQLLegacyHelper",["invariant"],(function(a,b,c,d,e,f,g){"use strict";f.getURI=a;function a(a){var b=a.controller,c=a.docID,d=a.queryID;a=a.variables;c!=d&&(c||d)!=null||g(0,5819,c,d);b=b.getURIBuilder();d?b.setFBID("query_id",d):b.setFBID("doc_id",c);a&&b.setString("variables",JSON.stringify(a));return b.getURI()}}),null);
__d("XWebGraphQLQueryController",["XController"],(function(a,b,c,d,e,f){e.exports=b("XController").create("/webgraphql/query/",{query_id:{type:"FBID"},variables:{type:"String"},doc_id:{type:"FBID"}})}),null);
__d("WebGraphQLQueryBase",["invariant","WebGraphQLLegacyHelper","XWebGraphQLQueryController"],(function(a,b,c,d,e,f,g){"use strict";a=function(){function a(a){this.$1=a}var c=a.prototype;c.__getVariables=function(){return this.$1};c.__getDocID=function(){return this.constructor.__getDocID()};a.__getController=function(){return b("XWebGraphQLQueryController")};a.__getDocID=function(){g(0,1804)};a.getURI=function(a){return b("WebGraphQLLegacyHelper").getURI({controller:this.__getController(),docID:this.__getDocID(),variables:a})};a.getLegacyURI=function(a){return b("WebGraphQLLegacyHelper").getURI({controller:this.__getController(),queryID:this.getQueryID(),variables:a})};a.getQueryID=function(){g(0,5095)};return a}();e.exports=a}),null);
__d("MessengerThreadsWebGraphQLQuery",["WebGraphQLQueryBase"],(function(a,b,c,d,e,f){"use strict";e.exports=function(a){babelHelpers.inheritsLoose(b,a);function b(){return a.apply(this,arguments)||this}b.__getDocID=function(){return"3576539852469343"};b.getQueryID=function(){return"3477917919101030"};return b}(b("WebGraphQLQueryBase"))}),null);
__d("XGraphQLBatchAPIController",["XController"],(function(a,b,c,d,e,f){e.exports=b("XController").create("/api/graphqlbatch/",{queries:{type:"String"},batch_name:{type:"String"},scheduler:{type:"Enum",enumType:1},shared_params:{type:"String"},fb_api_req_friendly_name:{type:"String"},uft_request_id:{type:"String"}})}),null);
__d("WebGraphQL",["errorCode","ActorURI","AsyncRequest","Deferred","FBLogger","WebGraphQLConfig","XGraphQLBatchAPIController","getAsyncParams"],(function(a,b,c,d,e,f,g){"use strict";var h="for (;;);",i=h.length;function j(a){var c=a.getURIBuilder().getURI(),d={exec:function(a,b){return d.execAll([a],b)[0]},execAll:function(a,d){var e={},f={};a=a.map(function(a,c){c="o"+c;e[c]={doc_id:a.__getDocID(),query_params:a.__getVariables()};a=new(b("Deferred"))();f[c]=a;return a.getPromise()});var g=babelHelpers["extends"]({},b("getAsyncParams")("POST"));d&&d.actorID!=null&&(g[b("ActorURI").PARAMETER_ACTOR]=d.actorID);var j=d&&d.batchName?{batch_name:d.batchName}:{};j=new(b("AsyncRequest"))().setURI(c).setOption("suppressEvaluation",!0).setMethod("POST").setRequestHeader("Content-Type","application/x-www-form-urlencoded").setData(babelHelpers["extends"]({},j,g,{queries:JSON.stringify(e)})).setHandler(function(a){a=a.getPayload();a=a.response;try{if(a.startsWith(h)){var c=a.substring(i);c=JSON.parse(c);if(c.error==1357001){Object.keys(f).forEach(function(a){f[a].isSettled()||f[a].reject({data:{},errors:[{message:"Not logged in.",severity:"CRITICAL",should_end_session:!0}]})});return}}c=a.split("\r\n");c.pop();c=c.map(function(a){return JSON.parse(a)});c.forEach(function(a){return Object.keys(a).forEach(function(b){var c=f[b];if(c){b=a[b];b.errors?c.reject(b):b.data?c.resolve(b.data):c.reject({data:{},errors:[{message:"Unexpected response received from server.",severity:"CRITICAL",response:b}]})}})})}catch(c){b("FBLogger")("webgraphql").catching(c).mustfix("Bad response: ","%s%s",a.substr(0,250),a.length>250?"[truncated]":"")}Object.keys(f).forEach(function(a){f[a].isSettled()||f[a].reject({data:{},errors:[{message:"No response received from server.",severity:"CRITICAL"}]})})}).setTimeoutHandler(b("WebGraphQLConfig").timeout,function(){Object.keys(f).forEach(function(a){f[a].isSettled()||f[a].reject({data:{},errors:[{message:"Request timed out.",severity:"CRITICAL"}]})})}).setErrorHandler(function(a){var b=a.getErrorDescription();Object.keys(f).forEach(function(c){f[c].isSettled()||f[c].reject({data:{},errors:[{message:b,severity:"CRITICAL",error:a.getError()}]})})});d&&d.msgrRegion&&j.setRequestHeader("X-MSGR-Region",d.msgrRegion);j.setAllowCrossPageTransition(!0);j.send();return a},__forController:j};return d}a=j(b("XGraphQLBatchAPIController"));c=a;e.exports=c}),null);
__d("MessengerGraphQLThreadFetcher.bs",["ChatReliabilityInstrumentation","MercuryServerRequestsConfig","MessengerServerPayloadTransformer.bs","MessengerThreadFetchLoggerUtil","MessengerThreadsWebGraphQLQuery","ODS","Promise","WebGraphQL","bs_caml_array","bs_caml_exceptions","bs_caml_format","bs_caml_option","bs_js_null_undefined","bs_pervasives","gkx"],(function(a,b,c,d,e,f){"use strict";var g={contents:!0};function h(a,c,d,e,f){if(a==null)if(e)return{actions:null,thread:void 0,end_of_history:{type:"user",fbid:c},roger:null,delivery_receipts:[]};else return{actions:null,thread:void 0,end_of_history:void 0,roger:null,delivery_receipts:[]};e=[];var g=b("MessengerServerPayloadTransformer.bs").getThreadFBID(a),h=b("MessengerServerPayloadTransformer.bs").getOtherUserID(a);g=h==null?g==null?b("bs_pervasives").failwith("No thread ID"):g:h;g!==c&&b("bs_pervasives").failwith("Thread ID mismatch");h=b("MessengerServerPayloadTransformer.bs").transformThread(d,a,f);g=b("bs_js_null_undefined").fromOption(b("MessengerServerPayloadTransformer.bs").transformMessages(d,a,f));f=b("MessengerServerPayloadTransformer.bs").transformReadReceipts(d,a);if(f!==void 0){d={};d[c]=b("bs_caml_option").valFromOption(f);f=d}else f=null;d=b("MessengerServerPayloadTransformer.bs").transformDeliveryReceipts(a);if(d.length>=1){d=b("bs_caml_array").get(d,0);h.is_canonical?e.push({other_user_fbid:c,thread_fbid:null,time:b("bs_caml_format").caml_float_of_string(d.timestamp_precise)}):e.push({other_user_fbid:null,thread_fbid:c,time:b("bs_caml_format").caml_float_of_string(d.timestamp_precise)})}d=b("MessengerServerPayloadTransformer.bs").getMessagePageInfo(a);if(d!==void 0)if(b("bs_caml_option").valFromOption(d).has_previous_page)return{actions:g,thread:h,end_of_history:void 0,roger:f,delivery_receipts:e};else return{actions:g,thread:h,end_of_history:{type:"thread",fbid:c},roger:f,delivery_receipts:e};else return{actions:g,thread:h,end_of_history:void 0,roger:f,delivery_receipts:e}}function i(a){b("MessengerThreadFetchLoggerUtil").markerPoint(a.id,"sendThreadInfoFetchRequest");return new(b("MessengerThreadsWebGraphQLQuery"))({id:a.id,message_limit:a.limit,load_messages:a.limit>0,load_read_receipts:a.loadReadReceipts,load_delivery_receipts:a.loadDeliveryReceipts,before:a.timestamp,is_work_teamwork_not_putting_muted_in_unreads:b("gkx")("1105011"),threadlistViewFieldsOnly:b("gkx")("1950744")})}var j=b("bs_caml_exceptions").create("MessengerGraphQLThreadFetcher.SessionLoggedOut");function a(a,c,d){if(!g.contents)return b("Promise").reject({RE_EXN_ID:j});var e=c.map(i);return b("Promise").all(b("WebGraphQL").execAll(e,{actorID:d?a:null,batchName:"MessengerGraphQLThreadFetcher",msgrRegion:b("MercuryServerRequestsConfig").msgrRegion,allowCrossPageTransition:!0}))["catch"](function(a){var d;try{d=b("bs_caml_array").get(a.errors,0).should_end_session}catch(a){d=!1}d&&(g.contents=!1);b("ODS").bumpEntityKey(2966,"messenger_webgraphql","fetch_thread.failure");c.forEach(function(a){b("MessengerThreadFetchLoggerUtil").markerEnd(a.id,"FAIL")});b("ChatReliabilityInstrumentation").logERROR("fetch_thread_fail");return b("Promise").reject(a)}).then(function(e){b("ODS").bumpEntityKey(2966,"messenger_webgraphql","fetch_thread.success");return e.map(function(e,f){e=e.message_thread;f=b("bs_caml_array").get(c,f);b("MessengerThreadFetchLoggerUtil").markerPoint(f.id,"getThreadInfoFetchResponse");return h(e,f.id,a,f.isCanonical,d)})})}f.canMakeRequests=g;f._transformPayload=h;f._getQuery=i;f.SessionLoggedOut=j;f.fetchAll=a}),null);
__d("requestIdleCallback",["cr:694370"],(function(a,b,c,d,e,f){a=b("cr:694370");e.exports=a}),null);
__d("onAfterLoadSafe",["Run","TimeSlice","requestIdleCallback"],(function(a,b,c,d,e,f){"use strict";e.exports=a;function a(a){return b("TimeSlice").guard(function(){return b("Run").onAfterLoad(function(){b("requestIdleCallback")(a)})},"delayed after load",{propagationType:b("TimeSlice").PropagationType.ORPHAN})()}}),null);
__d("MercuryMessagingLightswitch",["gkx"],(function(a,b,c,d,e,f){"use strict";a={guard:function(a){if(b("gkx")("1828242"))return;a()},shouldRun:function(){return!b("gkx")("1828242")}};c=a;e.exports=c}),null);
__d("UserActivity",["cr:1634616"],(function(a,b,c,d,e,f){e.exports=b("cr:1634616")}),null);
__d("UserActivityBlue",["Arbiter","Event","isTruthy"],(function(a,b,c,d,e,f){var g=5e3,h=500,i=-5,j=Date.now(),k=j,l=!1,m=Date.now(),n=document.hasFocus?document.hasFocus():!0,o=0,p=Date.now(),q=-1,r=-1,s={EVENT_INTERVAL_MS:h,subscribeOnce:function(a){var b=s.subscribe(function(c,d){s.unsubscribe(b),a(d)});return b},subscribe:function(a){return b("Arbiter").subscribe("useractivity/activity",a)},unsubscribe:function(a){a.unsubscribe()},isActive:function(a){return new Date()-j<(b("isTruthy")(a)?a:g)},isOnTab:function(){return n},hasBeenInactive:function(){return l},resetActiveStatus:function(){n=!0,l=!1},getLastInActiveEnds:function(){return m},getLastActive:function(){return j},setIdleTime:function(a){o=a},getLastLeaveTime:function(){return p},getLastInformTime:function(){return k},reset:function(){j=Date.now(),k=j,l=!1,m=Date.now(),n=document.hasFocus?document.hasFocus():!0,o=0,p=Date.now(),q=-1,r=-1}};function t(a){v(a,h)}function u(a){v(a,0)}function v(c,d){d===void 0&&(d=0);var e=a.MouseEvent;if(e&&c instanceof e){if(/^mouse(enter|leave|move|out|over)$/.test(c.type)&&c.pageX==q&&c.pageY==r)return;q=c.pageX;r=c.pageY}j=Date.now();e=j-k;e>d?(k=j,n||(p=j),e>=(o||g)&&(l=!0,m=j),b("Arbiter").inform("useractivity/activity",{event:c,idleness:e,last_inform:k})):e<i&&(k=j)}function c(a){n=!0,m=Date.now(),u(a)}function d(a){n=!1,l=!0,p=Date.now()}b("Event").listen(window,"scroll",t);b("Event").listen(window,"focus",c);b("Event").listen(window,"blur",d);b("Event").listen(document.documentElement,{keydown:t,mouseover:t,mousemove:t,click:t},void 0,void 0,{passive:!0});b("Arbiter").subscribe("Event/stop",function(a,b){t(b.event)});e.exports=s}),null);
__d("WorkGalahadDispatcher",["ExplicitRegistrationDispatcher"],(function(a,b,c,d,e,f){"use strict";a=function(a){babelHelpers.inheritsLoose(b,a);function b(){var b,c;for(var d=arguments.length,e=new Array(d),f=0;f<d;f++)e[f]=arguments[f];return(b=c=a.call.apply(a,[this].concat(e))||this,c.dispatch=c.dispatch.bind(babelHelpers.assertThisInitialized(c)),b)||babelHelpers.assertThisInitialized(c)}return b}(b("ExplicitRegistrationDispatcher"));c=new a({strict:!0});e.exports=c}),null);
__d("PrivacyTransparentOverlay.react",["cx","react"],(function(a,b,c,d,e,f,g){"use strict";var h,i=h||b("react");a=function(a){babelHelpers.inheritsLoose(b,a);function b(){return a.apply(this,arguments)||this}var c=b.prototype;c.render=function(){return i.jsxs("div",{className:"_4cqr",children:[this.props.children,i.jsx("div",{className:"clearfix"})]})};return b}(i.PureComponent);e.exports=a}),null);
__d("TypingStates",[],(function(a,b,c,d,e,f){a=Object.freeze({INACTIVE:0,TYPING:1,QUITTING:2});e.exports=a}),null);
__d("DOMContainer.react",["invariant","isNode","react"],(function(a,b,c,d,e,f,g){var h,i=h||b("react");a=function(a){babelHelpers.inheritsLoose(c,a);function c(){var b,c;for(var d=arguments.length,e=new Array(d),f=0;f<d;f++)e[f]=arguments[f];return(b=c=a.call.apply(a,[this].concat(e))||this,c.containerNode=null,c.setContainerNode=function(a){c.containerNode=a;var b=c.props.containerRef;typeof b==="function"&&b(a)},b)||babelHelpers.assertThisInitialized(c)}var d=c.prototype;d.getDOMChild=function(){var a=this.props.children;b("isNode")(a)||g(0,1533);return a};d.shouldComponentUpdate=function(a){return a.children!==this.props.children};d.componentDidMount=function(){var a=this.containerNode;a!=null&&a.appendChild(this.getDOMChild())};d.componentDidUpdate=function(a){a=this.containerNode;if(a==null)return;while(a.lastChild)a.removeChild(a.lastChild);a.appendChild(this.getDOMChild())};d.render=function(){var a=this.props,b=a.display;a=babelHelpers.objectWithoutPropertiesLoose(a,["display"]);b=b==="block"?"div":"span";return i.jsx(b,babelHelpers["extends"]({},a,{ref:this.setContainerNode,children:void 0}))};return c}(i.Component);e.exports=a;a.defaultProps={display:"inline"}}),null);
__d("LineClamp.react",["cx","DOMContainer.react","Locale","getElementText","getVendorPrefixedName","joinClasses","react"],(function(a,b,c,d,e,f,g){"use strict";var h,i=h||b("react"),j=b("getVendorPrefixedName")("lineClamp");a=function(a){babelHelpers.inheritsLoose(c,a);function c(){var b,c;for(var d=arguments.length,e=new Array(d),f=0;f<d;f++)e[f]=arguments[f];return(b=c=a.call.apply(a,[this].concat(e))||this,c.state={enableTooltip:!1},c.$2=function(a){a instanceof HTMLElement&&(c.innerElement=a,c.$3())},c.$4=function(a){a instanceof HTMLElement&&(c.rootElement=a,c.$3())},b)||babelHelpers.assertThisInitialized(c)}var d=c.prototype;d.$1=function(){var a;this.props.lineHeight&&!this.props.customEllipsisDisableGradient&&(a={bottom:this.props.lineHeight+"px"});var c;this.props.customEllipsis&&this.props.customEllipsisDisableGradient?c=b("Locale").isRTL()?"_1osp":"_1osq":c=b("Locale").isRTL()?"_4ik3 _2k5c":"_4ik3"+(this.props.enableCustomizedStyleForEllipsis?" _6q5n":"")+(this.props.enableCustomizedStyleForEllipsis?"":" _2k5d");return i.jsx("div",{style:a,className:c,children:this.props.customEllipsis?this.props.customEllipsis:"\u2026"},"ellipsis")};d.$3=function(){if(!this.props.enableTooltipOnOverflow)return;var a=this.isOverflowing();this.state.enableTooltip!==a&&this.setState({enableTooltip:a})};d.$5=function(){return!!j&&!this.props.disableNative};d.isOverflowing=function(){var a=!1;if(!this.rootElement)return a;var b=this.rootElement;if(this.$5())a=b.scrollHeight>b.offsetHeight;else{if(!this.innerElement)return a;a=this.innerElement.offsetHeight>b.offsetHeight}return a};d.componentDidMount=function(){this.$3()};d.componentDidUpdate=function(){this.$3()};d.render=function(){var a=this.$5(),c=b("joinClasses")(this.props.className,"_4ik4"+(a?" _4ik5":"")+(this.props.width?" _8hwj":"")),d=this.props.hasXHPChildren?i.jsx(b("DOMContainer.react"),{children:this.props.children}):this.props.children,e={};this.props.lineHeight&&(e={lineHeight:this.props.lineHeight+"px"},this.props.fitHeightToShorterText?e=babelHelpers["extends"]({},e,{maxHeight:this.props.lineHeight*this.props.lines}):e=babelHelpers["extends"]({},e,{height:this.props.lineHeight*this.props.lines}));this.props.width&&(e=babelHelpers["extends"]({},e,{width:this.props.width+"px"}));a?e[j]=this.props.lines:(c=b("joinClasses")(c,"clearfix"),this.props.customEllipsisDisableGradient?d=[i.jsx("div",{className:"_1osu"},"spacer"),this.$1(),i.jsx("div",{className:"_1osv",ref:this.$2,children:this.props.children},"inner")]:d=[i.jsx("div",{className:"_4ik6",ref:this.$2,children:d},"inner"),this.$1()]);var f={};this.props.enableTooltipOnOverflow&&(f["data-hover"]="tooltip",this.state.enableTooltip&&(f["data-tooltip-content"]=a?b("getElementText")(this.rootElement):b("getElementText")(this.innerElement),this.props.tooltipDelay!=null&&(f["data-tooltip-delay"]=this.props.tooltipDelay)));return i.jsx("div",babelHelpers["extends"]({},f,{className:c,ref:this.$4,style:e,children:d}))};return c}(i.Component);e.exports=a}),null);
__d("Network",["$InternalEnum","mixInEventEmitter"],(function(a,b,c,d,e,f){var g=!0,h=a.navigator.connection,i={0:"unknown",1:"ethernet",2:"wifi",3:"2g",4:"3g"},j=b("$InternalEnum")({Bluetooth:"bluetooth",Cellular:"cellular",Ethernet:"ethernet",None:"none",Wifi:"wifi",Wimax:"wimax",Other:"other",Unavailable:"unavailable",Unknown:"unknown"}),k=b("$InternalEnum")({Type_Slow2g:"slow-2g",Type_2g:"2g",Type_3g:"3g",Type_4g:"4g",Unavailable:"unavailable"});function l(){return g}function c(a){if(a==g)return;g=a;o.emit(a?"online":"offline")}function d(){if(!l())return 0;var a=h==null?void 0:h.downlinkMax;if(typeof a==="number"&&Number.isFinite(a))return a;a=h==null?void 0:h.downlink;return typeof a==="number"&&Number.isFinite(a)?a:null}function f(){var a=h?String(h.type):"0";return i[a]||a}function m(){var a=h==null?void 0:h.type;return(a=typeof a==="string"?j.cast(a):null)!=null?a:j.Unavailable}function n(){var a=h==null?void 0:h.effectiveType;return(a=typeof a==="string"?k.cast(a):null)!=null?a:k.Unavailable}var o={NetworkConnectivityType:j,NetworkConnectivityEffectiveType:k,getBandwidth:d,getEffectiveType:n,getType:m,getType_DEPRECATED_DO_NOT_USE:f,isOnline:l,setOnline:c};b("mixInEventEmitter")(o,{online:!0,offline:!0});a.addEventListener?(a.addEventListener("online",c.bind(null,!0)),a.addEventListener("offline",c.bind(null,!1))):a.attachEvent&&(a.attachEvent("online",c.bind(null,!0)),a.attachEvent("offline",c.bind(null,!1)));d=o;e.exports=d}),null);
__d("AbstractTextInput.react",["cx","AbstractTextField.react","mergeRefs","react"],(function(a,b,c,d,e,f,g){var h,i=h||b("react");a=function(a){babelHelpers.inheritsLoose(c,a);function c(){var c,d;for(var e=arguments.length,f=new Array(e),g=0;g<e;g++)f[g]=arguments[g];return(c=d=a.call.apply(a,[this].concat(f))||this,d.$2=function(a){var c=d.props.inputRef;d.$1=a;b("mergeRefs")(c)((c=a)!=null?c:null)},c)||babelHelpers.assertThisInitialized(d)}var d=c.prototype;d.render=function(){var a=this.props;a.inputRef;a=babelHelpers.objectWithoutPropertiesLoose(a,["inputRef"]);return i.jsx(b("AbstractTextField.react"),babelHelpers["extends"]({},a,{children:i.jsx("input",{className:"_58al",onClick:this.props.onClick,onMouseDown:this.props.onMouseDown,onKeyUp:this.props.onKeyUp,onKeyDown:this.props.onKeyDown,onPaste:this.props.onPaste,size:this.props.size,tabIndex:this.props.tabIndex,type:this.props.type,ref:this.$2})}))};d.focusInput=function(){this.$1&&this.$1.focus()};d.blurInput=function(){this.$1&&this.$1.blur()};d.selectInput=function(){this.$1&&this.$1.select()};d.getTextFieldDOM=function(){return this.$1};d.getValue=function(){return this.$1?this.$1.value:""};return c}(i.Component);e.exports=a;a.propTypes=b("AbstractTextField.react").propTypes;a.defaultProps={type:"text"}}),null);
__d("FlexLayout.react",["cx","gkx","joinClasses","react"],(function(a,b,c,d,e,f,g){var h,i=h||b("react"),j=b("gkx")("1261344");a=function(a){babelHelpers.inheritsLoose(c,a);function c(){return a.apply(this,arguments)||this}var d=c.prototype;d.render=function(){var a=this,b=this.props,d=b.align,e=b.children,f=b.containerRef,g=b.direction,h=b.justify,j=b.style,k=b.wrap,l=b.onMouseEnter;b=b.onMouseLeave;var m=null;Object.keys(this.props).forEach(function(b){(b==="className"||b==="className_DO_NOT_USE")&&(m=a.props[b])});return i.jsx("div",babelHelpers["extends"]({},c.flexLayout({align:d,direction:g,justify:h,wrap:k},m),{"data-testid":void 0,ref:f,style:j,onMouseEnter:l,onMouseLeave:b,children:e}))};c.flexLayout=function(a,d){a=a!==void 0?a:{};var e=a.align,f=a.direction,g=a.justify;a=a.wrap;e===void 0&&(e=c.defaultProps.align);f===void 0&&(f=c.defaultProps.direction);g===void 0&&(g=c.defaultProps.justify);a===void 0&&(a=c.defaultProps.wrap);return{className:b("joinClasses")(d,"_3qn7"+(j?" _8xlz":"")+(g==="start"?" _61-0":"")+(g==="center"?" _61-1":"")+(g==="end"?" _61-2":"")+(g==="all"?" _61-3":"")+(g==="around"?" _6twk":"")+(g==="evenly"?" _6twl":"")+(f==="vertical"?" _2fyh":"")+(f==="horizontal"?" _2fyi":"")+(f==="vertical-reverse"?" _6xqp":"")+(f==="horizontal-reverse"?" _6xqq":"")+(e==="start"?" _3qnf":"")+(e==="center"?" _3qng":"")+(e==="end"?" _3qnu":"")+(e==="stretch"?" _1a9e":"")+(e==="baseline"?" _7is_":"")+(a==="wrap"?" _4tau":"")+(a==="wrap-reverse"?" _4tav":""))}};return c}(i.Component);e.exports=a;a.defaultProps={align:"start",direction:"horizontal",justify:"start",wrap:"nowrap"}}),null);
__d("MessengerLiveChatPluginTypedLogger",["Banzai","GeneratedLoggerUtils"],(function(a,b,c,d,e,f){"use strict";a=function(){function a(){this.$1={}}var c=a.prototype;c.log=function(a){b("GeneratedLoggerUtils").log("logger:MessengerLiveChatPluginLoggerConfig",this.$1,b("Banzai").BASIC,a)};c.logVital=function(a){b("GeneratedLoggerUtils").log("logger:MessengerLiveChatPluginLoggerConfig",this.$1,b("Banzai").VITAL,a)};c.logImmediately=function(a){b("GeneratedLoggerUtils").log("logger:MessengerLiveChatPluginLoggerConfig",this.$1,{signal:!0},a)};c.clear=function(){this.$1={};return this};c.getData=function(){return babelHelpers["extends"]({},this.$1)};c.updateData=function(a){this.$1=babelHelpers["extends"]({},this.$1,a);return this};c.setAppID=function(a){this.$1.app_id=a;return this};c.setAttribution=function(a){this.$1.attribution=a;return this};c.setCallsite=function(a){this.$1.callsite=a;return this};c.setDebugData=function(a){this.$1.debug_data=a;return this};c.setDeltaType=function(a){this.$1.delta_type=a;return this};c.setDeviceParam=function(a){this.$1.device_param=a;return this};c.setDomainSource=function(a){this.$1.domain_source=a;return this};c.setDuration=function(a){this.$1.duration=a;return this};c.setEvent=function(a){this.$1.event=a;return this};c.setEventTimestamp=function(a){this.$1.event_timestamp=a;return this};c.setExceptionMessage=function(a){this.$1.exception_message=a;return this};c.setExceptionStacktrace=function(a){this.$1.exception_stacktrace=a;return this};c.setExceptionType=function(a){this.$1.exception_type=a;return this};c.setGateway=function(a){this.$1.gateway=a;return this};c.setLoggedInGreeting=function(a){this.$1.logged_in_greeting=a;return this};c.setLoggedOutGreeting=function(a){this.$1.logged_out_greeting=a;return this};c.setPageID=function(a){this.$1.page_id=a;return this};c.setRefererURI=function(a){this.$1.referer_uri=a;return this};c.setRequestHeaders=function(a){this.$1.request_headers=a;return this};c.setRequestID=function(a){this.$1.request_id=a;return this};c.setRequestParam=function(a){this.$1.request_param=a;return this};c.setSyncToken=function(a){this.$1.sync_token=a;return this};c.setThemeColor=function(a){this.$1.theme_color=a;return this};c.setUpstreamEvent=function(a){this.$1.upstream_event=a;return this};c.setUserFbid=function(a){this.$1.user_fbid=a;return this};return a}();c={app_id:!0,attribution:!0,callsite:!0,debug_data:!0,delta_type:!0,device_param:!0,domain_source:!0,duration:!0,event:!0,event_timestamp:!0,exception_message:!0,exception_stacktrace:!0,exception_type:!0,gateway:!0,logged_in_greeting:!0,logged_out_greeting:!0,page_id:!0,referer_uri:!0,request_headers:!0,request_id:!0,request_param:!0,sync_token:!0,theme_color:!0,upstream_event:!0,user_fbid:!0};e.exports=a}),null);
__d("requestIdleCallbackBlue",["TimeSlice","TimerStorage","requestIdleCallbackAcrossTransitions"],(function(a,b,c,d,e,f){e.exports=c;function c(c,d){var e;function f(a){b("TimerStorage").unset(b("TimerStorage").IDLE_CALLBACK,e),c(a)}b("TimeSlice").copyGuardForWrapper(c,f);e=b("requestIdleCallbackAcrossTransitions").call(a,f,d);b("TimerStorage").set(b("TimerStorage").IDLE_CALLBACK,e);return e}}),null);
__d("setIntervalBlue",["TimerStorage","setIntervalAcrossTransitions"],(function(a,b,c,d,e,f){e.exports=a;function a(a,c){for(var d=arguments.length,e=new Array(d>2?d-2:0),f=2;f<d;f++)e[f-2]=arguments[f];var g=b("setIntervalAcrossTransitions").apply(void 0,[a,c].concat(e));b("TimerStorage").set(b("TimerStorage").INTERVAL,g);return g}}),null);
__d("RelayFBResponseCache",["RelayRuntime"],(function(a,b,c,d,e,f){"use strict";a=b("RelayRuntime").QueryResponseCache;c=10;d=5*60*1e3;e.exports=new a({size:c,ttl:d})}),null);
/**
 * License: https://www.facebook.com/legal/license/oyybAxN87_l/
 */
__d("hoist-non-react-statics-2.5.0",[],(function(a,b,c,d,e,f){"use strict";var g={},h={exports:g},i;function j(){(function(b,c){typeof g==="object"&&typeof h!=="undefined"?h.exports=c():typeof i==="function"&&i.amd?i(c):b.hoistNonReactStatics=c()})(this,function(){var a={childContextTypes:!0,contextTypes:!0,defaultProps:!0,displayName:!0,getDefaultProps:!0,getDerivedStateFromProps:!0,mixins:!0,propTypes:!0,type:!0},b={name:!0,length:!0,prototype:!0,caller:!0,callee:!0,arguments:!0,arity:!0},c=Object.defineProperty,d=Object.getOwnPropertyNames,e=Object.getOwnPropertySymbols,f=Object.getOwnPropertyDescriptor,g=Object.getPrototypeOf,h=g&&g(Object);return function i(j,k,l){if(typeof k!=="string"){if(h){var m=g(k);m&&m!==h&&i(j,m,l)}m=d(k);e&&(m=m.concat(e(k)));for(var n=0;n<m.length;++n){var o=m[n];if(!a[o]&&!b[o]&&(!l||!l[o])){var p=f(k,o);try{c(j,o,p)}catch(a){}}}return j}return j}})}var k=!1;function l(){k||(k=!0,j());return h.exports}function a(a){switch(a){case void 0:return l()}}e.exports=a}),null);
/**
 * License: https://www.facebook.com/legal/license/MDzNl_j9yvg/
 */
__d("object-assign-4.1.1",[],(function(a,b,c,d,e,f){"use strict";b={};var g={exports:b};function h(){var a=Object.getOwnPropertySymbols,b=Object.prototype.hasOwnProperty,c=Object.prototype.propertyIsEnumerable;function d(a){if(a===null||a===void 0)throw new TypeError("Object.assign cannot be called with null or undefined");return Object(a)}function e(){try{if(!Object.assign)return!1;var a=new String("abc");a[5]="de";if(Object.getOwnPropertyNames(a)[0]==="5")return!1;var b={};for(var a=0;a<10;a++)b["_"+String.fromCharCode(a)]=a;a=Object.getOwnPropertyNames(b).map(function(a){return b[a]});if(a.join("")!=="0123456789")return!1;var c={};"abcdefghijklmnopqrst".split("").forEach(function(a){c[a]=a});return Object.keys(Object.assign({},c)).join("")!=="abcdefghijklmnopqrst"?!1:!0}catch(a){return!1}}g.exports=e()?Object.assign:function(e,f){var g,h=d(e),i;for(var j=1;j<arguments.length;j++){g=Object(arguments[j]);for(var k in g)b.call(g,k)&&(h[k]=g[k]);if(a){i=a(g);for(var l=0;l<i.length;l++)c.call(g,i[l])&&(h[i[l]]=g[i[l]])}}return h}}var i=!1;function j(){i||(i=!0,h());return g.exports}function a(a){switch(a){case void 0:return j()}}e.exports=a}),null);
__d("XGroupsController",["XController"],(function(a,b,c,d,e,f){e.exports=b("XController").create("/groups/{idorvanity}/{?view}/{?post_id}/",{idorvanity:{type:"String",required:!0},view:{type:"Enum",enumType:1},post_id:{type:"Int"},rule_id:{type:"Int"},ref:{type:"String"},source_id:{type:"String"},notif_t:{type:"String"},nux:{type:"Enum",enumType:1},tip_id:{type:"Int"},feedback_id:{type:"FBID"},member_tag_id:{type:"FBID"},section:{type:"Enum",enumType:1},thread_id:{type:"String"},support_thread_id:{type:"String"},mentorship_profile_id:{type:"FBID"},autopopup_create_chat_dialog:{type:"Bool",defaultValue:!1},sorting_setting:{type:"String"},multi_events:{type:"String"},stories:{type:"Exists",defaultValue:!1},topics:{type:"Exists",defaultValue:!1},highlight_location:{type:"Exists",defaultValue:!1},highlight_sections:{type:"Exists",defaultValue:!1},highlight_groupapps:{type:"Exists",defaultValue:!1},highlight_pixel:{type:"Exists",defaultValue:!1},highlight_mentorship_option:{type:"Exists",defaultValue:!1},highlight_fundraiser_option:{type:"Exists",defaultValue:!1},highlight_auto_approval:{type:"Exists",defaultValue:!1},highlight_page_member:{type:"Exists",defaultValue:!1},highlight_units_edit_bar:{type:"Exists",defaultValue:!1},highlight_keyword_alerts:{type:"Exists",defaultValue:!1},queue:{type:"Enum",enumType:1},composer_prefill:{type:"String"},hide_workplace_pagelet:{type:"Bool",defaultValue:!1},permalink_add_comment_nux_shown:{type:"Bool",defaultValue:!1},badge_type:{type:"Enum",enumType:1},work_learning_entry_point:{type:"Enum",enumType:1},chained_wp:{type:"Bool",defaultValue:!1},hoist_pending_member_ids_suggested_order:{type:"FBIDKeyset"},comment_id:{type:"Int"},reply_comment_id:{type:"Int"},hashtags:{type:"Exists",defaultValue:!1},sale_post_id:{type:"FBID"},exp:{type:"String"},cursor:{type:"String"}})}),null);
"object"!=typeof globalThis&&(globalThis=window),function(e){function t(t){for(var n,s,i=t[0],c=t[1],l=t[2],u=0,f=[];u<i.length;u++)s=i[u],Object.prototype.hasOwnProperty.call(o,s)&&o[s]&&f.push(o[s][0]),o[s]=0;for(n in c)Object.prototype.hasOwnProperty.call(c,n)&&(e[n]=c[n]);for(d&&d(t);f.length;)f.shift()();return a.push.apply(a,l||[]),r()}function r(){for(var e,t=0;t<a.length;t++){for(var r=a[t],n=!0,i=1;i<r.length;i++){var c=r[i];0!==o[c]&&(n=!1)}n&&(a.splice(t--,1),e=s(s.s=r[0]))}return e}var n={},o={4:0},a=[];function s(t){if(n[t])return n[t].exports;var r=n[t]={i:t,l:!1,exports:{}};return e[t].call(r.exports,r,r.exports,s),r.l=!0,r.exports}s.e=function(e){var t=[],r=o[e];if(0!==r)if(r)t.push(r[2]);else{var n=new Promise((function(t,n){r=o[e]=[t,n]}));t.push(r[2]=n);var a,i=document.createElement("script");i.charset="utf-8",i.timeout=120,s.nc&&i.setAttribute("nonce",s.nc),i.src=function(e){return s.p+"lazy/"+({2:"countries",5:"lang-en",6:"lang-vi"}[e]||e)+"."+{2:"df7edef8aded4c75a2ff",5:"ccdb51018d5944f706bc",6:"9ca9c74afe65ba3491c6"}[e]+".js"}(e);var c=new Error;a=function(t){i.onerror=i.onload=null,clearTimeout(l);var r=o[e];if(0!==r){if(r){var n=t&&("load"===t.type?"missing":t.type),a=t&&t.target&&t.target.src;c.message="Loading chunk "+e+" failed.\n("+n+": "+a+")",c.name="ChunkLoadError",c.type=n,c.request=a,r[1](c)}o[e]=void 0}};var l=setTimeout((function(){a({type:"timeout",target:i})}),12e4);i.onerror=i.onload=a,document.head.appendChild(i)}return Promise.all(t)},s.m=e,s.c=n,s.d=function(e,t,r){s.o(e,t)||Object.defineProperty(e,t,{enumerable:!0,get:r})},s.r=function(e){"undefined"!=typeof Symbol&&Symbol.toStringTag&&Object.defineProperty(e,Symbol.toStringTag,{value:"Module"}),Object.defineProperty(e,"__esModule",{value:!0})},s.t=function(e,t){if(1&t&&(e=s(e)),8&t)return e;if(4&t&&"object"==typeof e&&e&&e.__esModule)return e;var r=Object.create(null);if(s.r(r),Object.defineProperty(r,"default",{enumerable:!0,value:e}),2&t&&"string"!=typeof e)for(var n in e)s.d(r,n,function(t){return e[t]}.bind(null,n));return r},s.n=function(e){var t=e&&e.__esModule?function(){return e.default}:function(){return e};return s.d(t,"a",t),t},s.o=function(e,t){return Object.prototype.hasOwnProperty.call(e,t)},s.p="https://zalo-chat-static.zadn.vn/v1/",s.oe=function(e){throw console.error(e),e};var i=this.webpackJsonp=this.webpackJsonp||[],c=i.push.bind(i);i.push=t,i=i.slice();for(var l=0;l<i.length;l++)t(i[l]);var d=c;a.push([0,1,0]),r()}({0:function(e,t,r){e.exports=r("EhbR")},EhbR:function(e,t,r){"use strict";r.r(t);var n=r("VTBJ"),o=r("dThN"),a=r("1pet"),s=r("z0WU"),i=r("vSga"),c=r("XS0u"),l=r("4HQc");const d={},u=["news.zing.vn","mp3.zing.vn","tv.zing.vn","baomoi.com","dev.hls-player.zapps.vn"];let f=null,g=!1,p=null;function h(e){if(e){if(!function(e){let t=!1;e=e.replace("https://","").replace("http://","");for(let r=0;r<u.length;r++)if(u[r]===e){t=!0;break}return t}(e)){g=!0;const e=window.location.search.substr(1).split("&");for(let t of e){const e=t.split("="),r=e[0],n=decodeURIComponent(e[1]);if("oaid"===r){p=n;break}}if(!p)return void console.error("No OA ID supplied!")}o.default.authenticate(!0).then((t=>{const r=()=>{f=e;let r=Object(n.a)({},t);delete r.UIN,d.user=r,o.default.poll((e=>{if(g){if("new_messages"!==e.action)return void console.log("Invalid poll action");if(!e||!e.data||!e.data.conversation||e.data.conversation.userId!==p)return void console.log("Invalid userId")}switch(e.type){case o.DataTypes.CONVERSATION:if("clearUnreads"==e.action)v({conversationid:e.data.conversation.userId},{action:"clearUnreads"});else if("typing"==e.action)v({userId:e.data.uid,ts:e.data.ts,conId:e.data.gid?"g"+e.data.gid:e.data.uid},{action:"typing"});else if("new_messages"==e.action){let t={},r=null;t[e.data.conversation.userId]=!0,r=e.data.conversation.userId.startsWith(a.GROUPID_PREFIX)?o.default.fetchGroupsIfNotExpire(t):o.default.fetchFriendsIfNotExist(t),r.then((t=>{let r=t[e.data.conversation.userId];r?e.data.messages&&e.data.messages.length>0&&v({messages:e.data.messages,conversation:Object.assign(e.data.conversation,r)}):s.default.logCoreError("No sender info for "+e.data.conversation.userId)})).catch((e=>{s.default.logCoreError("Error when push updated msg to view "+e),s.default.logCoreError("Error while trying to get friends for id "+JSON.stringify(t))}))}break;case o.DataTypes.UNDO:v(e.data,{action:"undo"});break;case o.DataTypes.DELETE:e.data&&e.data.delConversationId?v(e.data,{action:"del-conv"}):v(e.data,{action:"del-msg"})}})),v({},{action:"onready"})};g?o.default.fetchFriendsIfNotExist({[p]:!0}).then((e=>{e[p]&&e[p].type?r():console.error("Invalid OA ID supplied!")})).catch((e=>{console.error("Error validating profile:",e)})):r()})).catch((e=>{e&&s.default.logCoreError(e)}))}else console.error("No origin supplied!")}function v(e,t){f||"onloaded"===t.action?window.parent.postMessage("zchat_embed_"+JSON.stringify({response:e,req:t}),f||"*"):console.error("startUp event is expected")}window.addEventListener("message",(function(e){let t=e.origin||e.originalEvent.origin,r=e.message||e.data;if(r)if("string"==typeof r&&(r=JSON.parse(r)),f){if(t!==f)return void console.error("Origin "+t+" is not allowed. Parent window only");if(g){const e={sendMessage:"conversationId",getFriendProfile:"userId",getLastMessageOfThread:"payload.conversationId",getListStickerCategory:null,getListStickerFromCategory:null,sendSeen:"payload.conversationId",sendDelivered:null,getMyProfile:null};if(!e.hasOwnProperty(r.action))return void console.error("Invalid action for OA");const t=e[r.action];if(t){let e;if(-1!==t.indexOf(".")){const n=t.split(".");e=r[n[0]][n[1]]}else e=r[t];if(e!==p)return void console.error("Invalid userId")}}switch(r.action){case"getListStickerCategory":!function(e){i.f.getStickerCategoriesV2().then((t=>{v(t,e)})).catch((t=>{t&&t.default&&v(t.default,e)}))}(r);break;case"getListStickerFromCategory":!function(e){let t=e.payload.id;t===i.a?v({catId:i.a,stickers:i.f.getBuiltInStickers()},e):i.f.fetchCateStickerDetail(t).then((r=>{v({stickers:r,catId:t},e)}))}(r);break;case"getLastUsedSticker":!function(e){v(i.f.getRecentMediaItems(),e)}(r);break;case"getLastThread":!function(e){c.default.getConversations().then((t=>{t.sort(((e,t)=>parseInt(t.lastMessageTime)-parseInt(e.lastMessageTime))),v(t.slice(0,5),e)}))}(r);break;case"getLastMessageOfThread":!function(e){let t=e.payload.conversationId;c.default.getConversationWithoutFriendInfo(t).then((r=>{r?c.default.getLastMessageFrom(t,Array(r.lastSmsLocalId.length).join("9"),Array((r.lastMessageTime+"").length).join("9"),30,!0).then((t=>{v(t,e)})).catch((t=>{s.default.logCoreError(t),v([],e)})):v([],e)})).catch((t=>{s.default.logCoreError(t),v([],e)}))}(r);break;case"sendMessage":!function(e){if(e.type===a.MSG_FILE&&e.content&&e.content.files){const t=e.content.files[0];if(t&&t.name&&!s.default.isValidFileName(t.name))return v({error:"unsupport_file_format"},e)}let t=new l.b(e.userId,e.conversationId,e.msgId,e.clientId,e.type,e.isGroup,e.content);o.default.sendMsgObject(t).then((t=>{v(t,e)})).catch((e=>{s.default.logCoreError(e)}))}(r);break;case"getMyProfile":!function(e){v(d.user,e)}(r);break;case"sendSeen":!function(e){let t=e.payload;t.msgIds.constructor===Array&&t.msgIds.length>0&&o.default.sendSeen(t.msgIds,t.conversationId,t.isGroup).then((t=>{v(t,e)})).catch((e=>{s.default.logCoreError(e)}))}(r);break;case"sendDelivered":!function(e){let t=e.payload;o.default.sendDelivered(t.msgIds,t.isSeen,t.groupId).then((t=>{v(t,e)})).catch((e=>{s.default.logCoreError(e)}))}(r);break;case"getFriendProfile":!function(e){let t={};t[e.userId]=!0,o.default.fetchFriendsIfNotExist(t).then((t=>{v(t[e.userId],e)})).catch((t=>{s.default.logCoreError(t),v(null,e)}))}(r)}}else"startUp"!==r.action?console.error("startUp event is expected"):h(t)}),!1),v({},{action:"onloaded"})}});
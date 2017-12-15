/*!
 * @license
 * 
 * dhtmlxGantt v.5.0.5 Stardard
 * This software is covered by GPL license. You also can obtain Commercial or Enterprise license to use it in non-GPL project - please contact sales@dhtmlx.com. Usage without proper license is prohibited.
 * 
 * (c) Dinamenta, UAB.
 * 
 */
!function(e){function t(l){if(n[l])return n[l].exports;var o=n[l]={i:l,l:!1,exports:{}};return e[l].call(o.exports,o,o.exports,t),o.l=!0,o.exports}var n={};t.m=e,t.c=n,t.d=function(e,n,l){t.o(e,n)||Object.defineProperty(e,n,{configurable:!1,enumerable:!0,get:l})},t.n=function(e){var n=e&&e.__esModule?function(){return e.default}:function(){return e};return t.d(n,"a",n),n},t.o=function(e,t){return Object.prototype.hasOwnProperty.call(e,t)},t.p="",t(t.s=3)}([,,,function(e,t,n){e.exports=n(4)},function(e,t){!function(){gantt._fs_change=[];var e=gantt.getState;gantt.getState=function(){var t=e.apply(this,arguments);return t.fullscreen=!!this._expanded,t},gantt._onFullScreenChange=function(){if(gantt.$container){gantt.getState().fullscreen&&(gantt._isFullScreenActive()||gantt.collapse());var e=gantt._fs_change.length?gantt._fs_change.pop():null;if(gantt._expanded=!gantt._expanded,e)if(e.condition())e.callback();else{var t=setInterval(function(){e.condition()&&(clearInterval(t),t=null,e.callback())},10);setTimeout(function(){t&&(clearInterval(t),e.callback())},100)}else gantt.render()}},gantt._isFullScreenActive=function(){return document.fullscreenElement||document.mozFullScreenElement||document.webkitFullscreenElement||document.msFullscreenElement},gantt._isFullScreenAvailable=function(){return document.fullscreenEnabled||document.webkitFullscreenEnabled||document.mozFullScreenEnabled||document.msFullscreenEnabled},gantt.event(document,"webkitfullscreenchange",gantt._onFullScreenChange),gantt.event(document,"mozfullscreenchange",gantt._onFullScreenChange),gantt.event(document,"MSFullscreenChange",gantt._onFullScreenChange),gantt.event(document,"fullscreenChange",gantt._onFullScreenChange),gantt.event(document,"fullscreenchange",gantt._onFullScreenChange),gantt.expand=function(){if(gantt.callEvent("onBeforeExpand",[])){gantt._toggleFullScreen(!0);var e=gantt.$root;do{e._position=e.style.position||"",e.style.position="static"}while((e=e.parentNode)&&e.style);e=gantt.$root,e.style.position="absolute",e._width=e.style.width,e._height=e.style.height,e.style.width=e.style.height="100%",e.style.top=e.style.left="0px";var t=document.body;t.scrollTop=0,t=t.parentNode,t&&(t.scrollTop=0),document.body._overflow=document.body.style.overflow||"",document.body.style.overflow="hidden",document.body._width=document.body.style.width,document.body._height=document.body.style.height;var n=function(){document.documentElement.msRequestFullscreen&&gantt.$root&&(gantt.$root.style.width=document.body.style.width=window.outerWidth+"px",gantt.$root.style.height=document.body.style.height=window.outerHeight+"px"),gantt.render(),gantt.callEvent("onExpand",[])};if(gantt._isFullScreenAvailable()){var l=window.outerHeight,o=window.outerWidth;gantt._fs_change.push({condition:function(){return l<window.outerHeight&&o<=window.outerWidth},callback:n})}else gantt._expanded=!gantt._expanded,n()}},gantt.collapse=function(){if(gantt.callEvent("onBeforeCollapse",[])){var e=gantt.$root;do{e.style.position=e._position}while((e=e.parentNode)&&e.style);e=gantt.$root,e.style.width=e._width,e.style.height=e._height,document.body.style.overflow=document.body._overflow,document.body.style.width=document.body._width,document.body.style.height=document.body._height,gantt._toggleFullScreen(!1);var t=function(){gantt.render(),gantt.callEvent("onCollapse",[])};if(gantt._isFullScreenAvailable()){var n=window.outerHeight,l=window.outerWidth;gantt._fs_change.push({condition:function(){return n>window.outerHeight&&l>=window.outerWidth},callback:t})}else gantt._expanded=!gantt._expanded,t()}},gantt._toggleFullScreen=function(e){!e&&(document.fullscreenElement||document.mozFullScreenElement||document.webkitFullscreenElement||document.msFullscreenElement)?document.exitFullscreen?document.exitFullscreen():document.msExitFullscreen?document.msExitFullscreen():document.mozCancelFullScreen?document.mozCancelFullScreen():document.webkitExitFullscreen&&document.webkitExitFullscreen():document.documentElement.requestFullscreen?document.documentElement.requestFullscreen():document.documentElement.msRequestFullscreen?document.documentElement.msRequestFullscreen():document.documentElement.mozRequestFullScreen?document.documentElement.mozRequestFullScreen():document.documentElement.webkitRequestFullscreen&&document.documentElement.webkitRequestFullscreen(Element.ALLOW_KEYBOARD_INPUT)}}()}]);
//# sourceMappingURL=dhtmlxgantt_fullscreen.js.map
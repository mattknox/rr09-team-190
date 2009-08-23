// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
  function onYouTubePlayerReady(playerId) {
    ytplayer = document.getElementById("tv");
    ytplayer.addEventListener("onStateChange", "onytplayerStateChange");
}
function onytplayerStateChange(newState) {
  var vid = list_of_vid_urls.pop()
  if (newState == 0){
    write_new_vid(vid);
  } else if (newState == 5) {
    var player = document.getElementById("tv");
    player.playVideo();
  }
}

function write_new_vid(str) {
  var elt = document.getElementById("target").innerHTML = "<div id='psplayer'>you shouldn't see me for long.  </div>"
  // allowScriptAccess must be set to allow the Javascript from one domain to access the swf on the youtube domain
  var params = { allowScriptAccess: "always" };
  // this sets the id of the object or embed tag to 'tv'. You then use this id to access the swf and make calls to the player's API
  var atts = { id: "tv" };
  swfobject.embedSWF( str + "&amp;border=0&amp;enablejsapi=1&amp;playerapiid=ytplayer", "psplayer", "425", "344", "8", null, null, params, atts);
}
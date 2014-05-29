//= require_self
//= require_tree .

;(function init(){
  var each = [].forEach;
  var slice = [].slice;
  var video = document.querySelector('video');
  var tracks = video.textTracks;
  var platform = navigator.platform;
  var positions, position;

  // Also detect crappy Firefox.
  if (navigator.userAgent.match(/Firefox\/(\d+)/) && parseInt(RegExp.$1, 10) < 31) {
    var element = document.createElement('div');
    element.classList.add('firefox-warning');
    element.innerHTML = 'Use um outro navegador. O Firefox não suporta subtítulos.';
    document.body.appendChild(element);

    return;
  }

  if (!tracks.length) {
    return setTimeout(init, 1000);
  }

  // Detect positions
  if (platform.match(/mac/i)) {
    positions = [0];
  } else if (platform.match(/win/i)) {
    positions = [1, 0];
  } else {
    positions = [2, 1, 0];
  }

  // Hide all tracks
  each.call(tracks, function(track){
    track.mode = 'hidden';
  });

  // Find tracks for the current platform.
  for (var i = 0; i < positions.length; i++) {
    position = positions[i];

    if (tracks[position]) {
      tracks[position].mode = 'showing';
      break;
    }
  }
})();



(function () {
    var video = document.getElementById('webrtc-cam'),
        vendorUrl = window.URL || window.webkitURL;
    
        global.navigator.getMedia = global.navigator.getUserMedia ||
                             global.navigator.webkitGetUserMedia ||
                             global.navigator.mozGetUserMedia ||
                             global.navigator.msGetUserMedia ||
                         
    //Capture video
    global.navigator.getMedia({
        video: true,
        audio: false
    }, function(stream){
        video.src = vendorUrl.createObjectURL(stream);
        video.play();
    }, function(error) {
        //Ann error occured
        //error.code
    });
    
}) ();
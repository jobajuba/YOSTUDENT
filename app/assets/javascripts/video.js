var Peer = require('simple-peer')
var peer = new Peer({
    initiator: location.hash === '#init'
})


peer.on('signal' function (data) {
    document.getElementById('yourId').value = JSON.string(data)
})
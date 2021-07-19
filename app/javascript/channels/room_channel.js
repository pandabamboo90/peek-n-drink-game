import consumer from "./consumer"

consumer.subscriptions.create({
  channel: 'RoomsChannel',
  id: window.location.pathname.split('/')[2]
}, {
  connected: function() {
    // Called when the subscription is ready for use on the server
  },
  disconnected: function() {
    // Called when the subscription has been terminated by the server
  },
  received: function(data) {
    // Called when there's incoming data on the websocket for this channel
    $("#" + data['card_id']).addClass('active')
  }
});
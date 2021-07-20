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
    if (data["shuffle"]) {
      var shuffleContent = "<div onclick='shuffleCard(" + data["set_id"] + ")' id='shuffle-card' style='color: lightblue; cursor: pointer;'>Shuffle card</div>";
      var html = "";

      $.each(data["cards"], function(index, value) {
        html += "<div class='card-wrapper flip-right' id='" + value["id"] + "'>" +
          "<div class='card'>" +
            "<div class='front' onclick='clickCard(this)'>" + (index + 1) + "</div>" +
              "<div class='back'>" +
                "<image src=" + value['image'].thumb.url + "></image>" +
              "</div>" +
            "</div>" +
          "</div>" +
        "</div>";
      })

      $('.list-card').html(html);
      $('#shuffle-card').html(shuffleContent);
    } else {
      $("#" + data['card_id']).addClass('active');
    }
  }
});
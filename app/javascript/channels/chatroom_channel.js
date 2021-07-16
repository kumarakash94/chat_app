import consumer from "./consumer"

consumer.subscriptions.create("ChatroomChannel", {
  connected() {
  
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
     $('#message-container').append (data.mod_mesasge)
     scroll_bottom()
  }
});

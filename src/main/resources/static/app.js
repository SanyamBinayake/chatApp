let stompClient = null;

function connect() {
  const socket = new SockJS('/chat');
  stompClient = Stomp.over(socket);
  stompClient.connect({}, function() {
    stompClient.subscribe('/topic/messages', function(m) {
      const msg = JSON.parse(m.body);
      showMessage(msg);
    });
  });
}

function sendMessage() {
  const sender = document.getElementById('sender').value;
  const content = document.getElementById('content').value;
  stompClient.send("/app/sendMessage", {}, JSON.stringify({
    sender: sender,
    content: content
  }));
}

function showMessage(msg) {
  const list = document.getElementById('messages');
  const el = document.createElement('li');
  el.textContent = `${msg.sender}: ${msg.content}`;
  list.appendChild(el);
}

# 📞 Real-Time Chat & Video Call Application

A full-stack web application offering real-time chat and peer-to-peer video calling using **Spring Boot**, **WebSocket (STOMP over SockJS)**, **Thymeleaf**, and **WebRTC**.

---

## 🧩 Features

* 💬 Instant text messaging via WebSockets
* 📹 Secure, peer-to-peer WebRTC video calls
* 🌐 Cross-device support (laptops, phones, etc.)
* 🌓 Dark/Light theme toggle
* 📶 Live connection status indicator
* 📱 Fully responsive layout (mobile/tablet friendly)

---

## 🛠️ Technologies Used

| Layer      | Technology                             |
| ---------- | -------------------------------------- |
| Backend    | Spring Boot, WebSocket, STOMP          |
| Frontend   | HTML5, JavaScript, Bootstrap 5, WebRTC |
| Templating | Thymeleaf                              |
| Build Tool | Maven                                  |

---

## 📂 Directory Structure

```bash
sanyambinayake-chatapp/
├── pom.xml
├── mvnw / mvnw.cmd               # Maven Wrapper scripts
├── .mvn/
│   └── wrapper/
│       └── maven-wrapper.properties
├── src/
│   ├── main/
│   │   ├── java/com/chat/app/
│   │   │   ├── AppApplication.java            # Main Spring Boot entry point
│   │   │   ├── config/WebSocketConfig.java    # WebSocket endpoint & broker config
│   │   │   ├── controller/ChatController.java # Message & page handling
│   │   │   └── model/ChatMessage.java         # Message model
│   │   └── resources/
│   │       ├── application.properties         # Server setup
│   │       └── templates/chat.html            # Frontend page
│   └── test/java/...                          # Basic JUnit tests
```

---

## 🚀 Setup & Run the Project

### ✅ Prerequisites

* Java 17+
* Maven installed (or use `mvnw`)
* Modern browser (supports WebRTC, e.g., Chrome/Edge/Firefox)

### 🔧 Steps to Run

```bash
# Step 1: Clone the Repository
$ git clone https://github.com/<your-username>/sanyambinayake-chatapp.git
$ cd sanyambinayake-chatapp

# Step 2: Run the Spring Boot App
$ ./mvnw spring-boot:run        # On Unix/macOS
$ mvnw.cmd spring-boot:run      # On Windows

# Step 3: Open the app in browser
http://localhost:8080/
```

### 🌐 Access on Other Devices (Phone, Tablet, etc.)

1. Connect all devices to the **same Wi-Fi network**.
2. Find your system's IP (e.g., `192.168.1.100`).
3. Replace `localhost` with your IP in the URL: `http://192.168.1.100:8080`
4. Modify CORS origin in `WebSocketConfig.java`:

```java
registry.addEndpoint("/chat")
        .setAllowedOrigins("http://192.168.1.100:8080")
        .withSockJS();
```

5. Update the `application.properties`:

```properties
server.address=0.0.0.0
```

---

| Chat UI |
|--------|
| ![187](https://github.com/SanyamBinayake/chatApp/blob/b46558c2487d04c43868ddac8816bc6f40be81f7/Screenshot%20(187).png?raw=true) |
| ![188](https://github.com/SanyamBinayake/chatApp/blob/b46558c2487d04c43868ddac8816bc6f40be81f7/Screenshot%20(188).png?raw=true) |
| ![189](https://github.com/SanyamBinayake/chatApp/blob/b46558c2487d04c43868ddac8816bc6f40be81f7/Screenshot%20(189).png?raw=true) |
| ![190](https://github.com/SanyamBinayake/chatApp/blob/b46558c2487d04c43868ddac8816bc6f40be81f7/Screenshot%20(190).png?raw=true) |
| ![184](https://github.com/SanyamBinayake/chatApp/blob/b46558c2487d04c43868ddac8816bc6f40be81f7/Screenshot%20(184).png?raw=true) |
| ![185](https://github.com/SanyamBinayake/chatApp/blob/b46558c2487d04c43868ddac8816bc6f40be81f7/Screenshot%20(185).png?raw=true) |
| ![186](https://github.com/SanyamBinayake/chatApp/blob/b46558c2487d04c43868ddac8816bc6f40be81f7/Screenshot%20(186).png?raw=true) |
| ![191](https://github.com/SanyamBinayake/chatApp/blob/b46558c2487d04c43868ddac8816bc6f40be81f7/Screenshot%20(191).png?raw=true) |


## 🎬 Sample Demo – Click Below to Watch

<p align="center">
  <a href="https://drive.google.com/file/d/15pZ8kQoz6Wq36gj-Ti1bqcH3Zpp8bCXr/view?usp=sharing" target="_blank">
    <img src="https://github.com/SanyamBinayake/chatApp/blob/b46558c2487d04c43868ddac8816bc6f40be81f7/Screenshot%20(186).png?raw=true" alt="Watch Demo Video" width="720"/>
  </a>
</p>

<p align="center">
  ▶️ <b><a href="https://drive.google.com/file/d/15pZ8kQoz6Wq36gj-Ti1bqcH3Zpp8bCXr/view?usp=sharing">Click here to watch the video on Google Drive</a></b>
</p>

## 🧪 Testing

To run unit tests:

```bash
./mvnw test
```

---

## 📬 Contact & Support

**Author:** Sanyam Binayake

* GitHub: [@sanyambinayake](https://github.com/sanyambinayake)
* LinkedIn: [linkedin.com/in/sanyam-binayake](https://www.linkedin.com/in/sanyam-binayake)

---

## 📄 License

This project is licensed under the **MIT License**. See `LICENSE` for details.

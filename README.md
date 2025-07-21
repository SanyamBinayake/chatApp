
# 📞 Real-Time Chat & Video Call Application

A real-time chat and peer-to-peer video calling web application built using **Spring Boot**, **WebSocket (STOMP over SockJS)**, **Thymeleaf**, and **WebRTC**.

---

## 🚀 Features

- 💬 Real-time messaging via WebSockets
- 📹 Peer-to-peer video calling with WebRTC
- 🎨 Responsive frontend UI using Bootstrap
- 🔗 Simple setup and cross-device support over the same network
- 🧪 Spring Boot Test Integration (basic)

---

## 🧱 Tech Stack

- **Backend**: Spring Boot, STOMP, WebSocket
- **Frontend**: HTML5, JavaScript, Bootstrap 5, WebRTC
- **Templating**: Thymeleaf
- **Build Tool**: Maven

---

## 📁 Project Structure

```
sanyambinayake-chatapp/
├── src/
│   ├── main/
│   │   ├── java/com/chat/app/
│   │   │   ├── AppApplication.java            # Main Spring Boot class
│   │   │   ├── config/WebSocketConfig.java    # WebSocket configuration
│   │   │   ├── controller/ChatController.java # Controller for chat routes
│   │   │   └── model/ChatMessage.java         # Message model class
│   │   └── resources/
│   │       ├── application.properties         # Server config
│   │       └── templates/chat.html            # Frontend UI
│   └── test/java/...                          # Unit tests
├── pom.xml                                     # Maven dependencies
```

---

## ⚙️ Setup & Running Locally

### 1. Clone the Repo

```bash
git clone https://github.com/<your-username>/sanyambinayake-chatapp.git
cd sanyambinayake-chatapp
```

### 2. Run the Spring Boot App

```bash
./mvnw spring-boot:run
```

OR (Windows)

```bash
mvnw.cmd spring-boot:run
```

The app will be available at:  
**http://<your-local-ip>:8080/**

---

## 🌐 Access on Phone via IP

To access from another device (like your phone):

1. Connect both devices to the same Wi-Fi network.
2. Update the WebSocket endpoint in `WebSocketConfig.java`:
   ```java
   registry.addEndpoint("/chat")
           .setAllowedOrigins("http://<your-ip>:8080")
           .withSockJS();
   ```
3. Open `http://<your-ip>:8080` in the mobile browser.

✅ Example:  
If your PC IP is `192.168.45.91`, access `http://192.168.45.91:8080` from your phone.

---

## 🔒 CORS Fix (Important)

To allow cross-device communication, set:

```properties
# application.properties
server.address=0.0.0.0
```

And make sure CORS is properly configured using `setAllowedOrigins("http://<client-ip>:8080")`.

---

## 📸 Screenshots

| Chat View | Video Call |
|-----------|------------|
| ![Image](https://github.com/SanyamBinayake/chatApp/blob/3a63a579f05213a394f757cfa6fc0c93307acd28/Screenshot%20(162).png)|
|![Image](https://github.com/SanyamBinayake/chatApp/blob/3a63a579f05213a394f757cfa6fc0c93307acd28/Screenshot%20(163).png)|
|![Image](https://github.com/SanyamBinayake/chatApp/blob/3a63a579f05213a394f757cfa6fc0c93307acd28/Screenshot%20(164).png)|
|![Image](https://github.com/SanyamBinayake/chatApp/blob/3a63a579f05213a394f757cfa6fc0c93307acd28/Screenshot%20(165).png)|
|![Image](https://github.com/SanyamBinayake/chatApp/blob/3a63a579f05213a394f757cfa6fc0c93307acd28/Screenshot%20(166).png)|


---

## 🧪 Testing

```bash
./mvnw test
```

---

## 🙋 Author

**Sanyam Binayake**  
GitHub: [@sanyambinayake](https://github.com/sanyambinayake)


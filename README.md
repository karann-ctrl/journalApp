
# Journal App - Spring Boot Backend ( Deployed )

A RESTful backend application built with **Java**, **Spring Boot**, and **MongoDB Atlas**. It allows users to perform CRUD operations on journal entries. The project also integrates **Redis** for caching, **Apache Kafka** for asynchronous communication, and **Spring Security** for authentication and role-based access control.  
Live: https://journal-app-ix75.onrender.com  
Health Check: https://journal-app-ix75.onrender.com/public/health-check

---

## Features

- Create, Read, Update, Delete (CRUD) journal entries
- Secure APIs using Spring Security
- Asynchronous message handling with Kafka
- Fast response times using Redis caching
- MongoDB Atlas for cloud-based data persistence
- Layered architecture: Controller → Service → Repository

---

## Technologies Used

- **Java 17**
- **Spring Boot**
- **MongoDB Atlas**
- **Spring Security**
- **Apache Kafka**
- **Redis**
- **Spring Data MongoDB**
- **Maven**
- **Postman** (for API testing)

---

## Getting Started  

### Prerequisites  
- Java 17  
- Maven  
- MongoDB Atlas account (or local MongoDB)  
- Redis (optional, for caching)  
- Kafka (optional, for event-driven flow)  

### Installation  
1. Clone the repository  
   ```bash
   git clone https://github.com/karann-ctrl/journalApp.git
   cd journalApp
   ```

2. Build the project  
   ```bash
   ./mvnw clean install
   ```

3. Run the application  
   ```bash
   ./mvnw spring-boot:run
   ```

The app will start at → `http://localhost:8080`  

---

## API Endpoints  

### Public  
- `GET /public/health` → Health check
- `POST /public/signup` → Register new user  
- `POST /public/login` → Login and receive JWT token  

### Admin
- `GET /admin/all-users` → Get all users
- `GET /admin/clear-app-cache` → Clear app chache

### Journal Entries  
- `GET /journal` → Get all entries
- `POST /journal` → Create entry  
- `GET /journal/{id}` → Get entry by id 
- `PUT /journal/{id}` → Update entry by id
- `DELETE /journal/{id}` → Delete entry by id

### User  
- `GET /user` → Greetings with weather
  
---
## Project Structure

```
src/
├── controller/
├── service/
├── repository/
├── model/
└── config/

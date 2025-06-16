# 🚀 Laravel E-Commerce API with CI/CD

This is a modern **E-Commerce API** built with **Laravel**. It follows clean architecture principles, uses Laravel best practices, and includes **CI/CD integration** to ensure smooth deployment and code quality.

---

## 📦 Tech Stack

- **Backend Framework**: Laravel 10+
- **Database**: MySQL / PostgreSQL
- **Authentication**: Sanctum or Passport
- **CI/CD**: GitHub Actions (or GitLab CI, Bitbucket Pipelines, etc.)
- **Testing**: PHPUnit + Laravel Test Helpers
- **Email**: Laravel Mail
- **Queue**: Redis / Database Queue
- **Docker**: (Optional) For containerized environments

---

## 📂 Project Structure


## ✨ Features

### ✅ E-Commerce Core
- Product, Category, Order CRUD
- Stock management & real-time update
- Product ingredients (Bill of Materials)
- Production with ingredient tracking

### 🔒 Authentication
- Login, Register, Token Management
- Role-based Permissions (Admin/User)

### 📧 Email Notification
- Automated order confirmation emails
- Background queue for sending emails

### 🔁 Background Jobs & Queues
- Use of Laravel Jobs and Queues
- Queue connection via Redis or database

### 🌐 Third-party API Integration
- External APIs using `Http::withToken()->get()`
- Retry logic and error handling

### 🛠️ CI/CD Pipeline
- Linting, Testing, Migration checks
- Automated deployment on push/PR
- Environment-specific config

---

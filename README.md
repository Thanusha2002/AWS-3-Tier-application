#  AWS 3-Tier Java Web Application Deployment

##  Table of Contents

1. [Project Overview](#project-overview)
2. [3-Tier Architecture Overview](#3-tier-architecture-overview)
3. [Architecture Diagram](#architecture-diagram)
4. [Technologies Used](#technologies-used)
5. [How to Run the Application Locally](#how-to-run-the-application-locally)
6. [AWS Deployment Steps (High-Level)](#aws-deployment-steps-high-level)
7. [Screenshots](#screenshots)
8. [Application Output](#application-output)
9. [Security Best Practices Followed](#security-best-practices-followed)
10. [GitHub Repository](#github-repository)
11. [Project Status](#project-status)
12. [Author](#author)

---

##  Project Overview

This project demonstrates the design, development, and deployment of a **Java-based web application** using a **3-Tier Architecture** on **AWS**.
The application follows industry best practices by separating the **presentation layer**, **application layer**, and **database layer** to ensure **scalability, security, and maintainability**.

The application displays a **Student List fetched from a database**, proving real-time backend and database connectivity.

---

##  3-Tier Architecture Overview

```
User
 ↓
Nginx (Frontend – EC2)
 ↓
Apache Tomcat (Application – EC2)
 ↓
Database (MySQL)
```

### Architecture Explanation

* **Frontend Tier (Presentation Layer)**
  Nginx acts as a reverse proxy and handles incoming user requests.

* **Application Tier (Business Logic Layer)**
  Apache Tomcat hosts the Java Servlet application and processes requests.

* **Database Tier (Data Layer)**
  MySQL database stores student data and responds to backend queries.

---

##  Architecture Diagram

![Image](https://miro.medium.com/v2/resize%3Afit%3A1400/0%2A7PPwAxklkjptr3KI)

![Image](https://miro.medium.com/1%2ALqu0da_JJZNM-bHvxsBwxg.png)

**Diagram Explanation:**
This diagram represents the AWS 3-tier architecture used in this project, where user requests flow from **Nginx (Frontend)** to **Tomcat (Backend)** and finally to the **MySQL database**, ensuring separation of concerns and secure communication between layers.

---

## Technologies Used

| Technology    | Purpose                        |
| ------------- | ------------------------------ |
| Java          | Backend application logic      |
| Maven         | Build and package application  |
| Apache Tomcat | Java application server        |
| Nginx         | Frontend reverse proxy         |
| MySQL         | Database                       |
| AWS EC2       | Compute resources              |
| AWS VPC       | Network isolation              |
| AWS IAM       | Access and security management |
| Git & GitHub  | Version control                |

---

##  How to Run the Application Locally

1. Clone the repository:

   ```bash
   git clone https://github.com/Thanusha2002/AWS-3-Tier-application.git
   ```

2. Navigate to the project directory:

   ```bash
   cd studentapp
   ```

3. Build the application:

   ```bash
   mvn clean package
   ```

4. Deploy the WAR file to Tomcat:

   ```bash
   sudo cp target/studentapp.war /opt/tomcat/webapps/
   sudo systemctl restart tomcat
   ```

5. Access the application:

   ```
   http://localhost:8081/studentapp/students
   ```

---

##  AWS Deployment Steps (High-Level)

### Week 1: Foundation & Infrastructure

* Created IAM Admin user and enabled security controls
* Designed VPC with public and private subnets
* Configured Internet Gateway and routing
* Set up security groups for Nginx, Tomcat, and Database

### Week 2: Application Deployment

* Built Java application and packaged as WAR
* Deployed Tomcat backend on EC2
* Configured Nginx as frontend reverse proxy
* Verified application connectivity

### Week 3: Optimization & Go-Live

* Verified application availability
* Validated database connectivity
* Ensured secure access and monitoring readiness

---

##  Screenshots

Screenshots proving successful deployment and execution are available in the `screenshots/` folder:

```
screenshots/
├── app-output.png        # Application fetching data from database
├── ec2-instances.png     # Running EC2 instances
├── vpc-subnets.png       # VPC and subnet configuration
├── iam-user.png          # IAM user creation
```

---

##  Application Output

```
Student List (From Database)
1 | Thanusha | thanusha@gmail.com
2 | Alice | alice@gmail.com
3 | Bob | bob@gmail.com
```

This confirms:

* Backend application is running
* Database connectivity is successful
* End-to-end 3-tier architecture is functional

---

##  Security Best Practices Followed

* IAM non-root user usage
* Security group–based access control
* Private subnet isolation for backend and database
* Controlled inbound traffic flow

---

##  GitHub Repository

**Repository Link:**
[https://github.com/Thanusha2002/AWS-3-Tier-application.git](https://github.com/Thanusha2002/AWS-3-Tier-application.git)

---

##  Project Status

 **Project Completed Successfully**

This project fulfills all requirements of a **3-Tier Java Web Application Deployment on AWS**, including development, deployment, verification, and documentation.

---

##  Author

**Thanusha**

---



Just tell me 👍

# 🚀 Highly Available Web Server on AWS (ALB + ASG + Custom VPC)

## 📌 Project Overview
This project demonstrates the design and deployment of a **highly available and scalable web server architecture** on AWS.  
The entire setup is built inside a **custom VPC** and uses an **Application Load Balancer (ALB)** with an **Auto Scaling Group (ASG)** to ensure fault tolerance, traffic distribution, and automatic recovery.

This project focuses on real cloud architecture behavior, not just launching EC2 instances.

---

## 🏗️ Architecture
- Custom **VPC** with public subnets across multiple Availability Zones  
- **Application Load Balancer (Internet-facing)**  
- **Auto Scaling Group** managing EC2 instances  
- **Target Group** with health checks  
- **Security Groups** controlling inbound and outbound traffic  
- **User Data script** for automated server setup  

---

## ⚙️ AWS Services Used
- Amazon VPC  
- Amazon EC2 (Ubuntu)  
- Application Load Balancer (ALB)  
- Auto Scaling Group (ASG)  
- Target Groups  
- Security Groups  

---

## 🔄 How It Works
Incoming user traffic hits the **Application Load Balancer DNS**.  
The ALB forwards requests to **healthy EC2 instances** registered in the target group.  
If an EC2 instance becomes unhealthy or is terminated, the **Auto Scaling Group automatically replaces it**.  
All instances are distributed across **multiple Availability Zones**, ensuring high availability.

---

## 🧠 Key Learnings
- Inbound rules allow traffic in, but **outbound rules are required for responses**
- ALB **does not host applications**, it only routes traffic
- User Data runs **only during instance launch**
- ASG + ALB health checks provide **automatic self-healing**
- Direct EC2 public IP access is **not production architecture**

---

## 🏆 Achievements
1. Designed and deployed a **multi-AZ highly available architecture**
2. Achieved **100% healthy targets** behind the Application Load Balancer
3. Implemented **automatic instance replacement** using Auto Scaling Group
4. Removed direct EC2 exposure by routing **all traffic through the ALB**
5. Automated server provisioning using **User Data**

---

## 📸 Screenshots Included
- VPC and subnet configuration  
- Security group inbound and outbound rules  
- Auto Scaling Group capacity overview  
- Application Load Balancer overview  
- Target group health status  

(All screenshots are stored in the `screenshots/` folder.)

---

## 📂 Repository Structure

```text
.
├── user-data.sh
├── README.md
└── screenshots/
    ├── architecture.png
    ├── vpc-subnets.png
    ├── alb-overview.png
    ├── target-group-healthy.png
    ├── auto-scaling-group.png
    ├── browser-output-1.png
    └── browser-output-2.png

---

## 🎯 Why This Project
This project demonstrates practical understanding of:
- AWS networking fundamentals
- Load balancing and traffic routing
- Auto scaling and self-healing systems
- Real-world cloud architecture design

This is **production-style cloud infrastructure**, not a demo setup.

# cloudlegends_task

```markdown
# 🔐 Flask Login App (Dockerized)

This is a simple Flask web application that includes a basic user **login** functionality. It's fully containerized with Docker, making it easy to run locally or deploy to the cloud (e.g., AWS EC2 with Terraform).

![Local deployment Screenshot](/cloudlegends_task/localhost.PNG)
![Cloud deployment Screenshot](/cloudlegends_task/ec2.PNG)

---

## 🌟 Features

- 📝 User login form
- 🐳 Dockerized (build once, run anywhere)
- ☁️ Ready for cloud deployment (e.g., AWS EC2 via Terraform)

---

## 🏗️ Folder Structure

```bash
flask-login-app/
├── app.py
├── requirements.txt
├── Dockerfile
└── templates/
├── login.html

````
---

## 🚀 Getting Started

### 📋 Prerequisites

- Python 3.8+
- Docker
- (Optional) Terraform + AWS account for deployment

---

### 🧪 Run Locally (Without Docker)

```bash
# Clone the repo
git clone https://github.com/BorgOwen/cloudlegends_task
cd cloudlegends_task

# Create a virtual environment and activate
python -m venv venv
source venv/bin/activate   # on Windows: venv\Scripts\activate

# Install dependencies
pip install -r requirements.txt

# Run the app
python app.py
````

Visit: `http://localhost:5000`

---

### 🐳 Run with Docker

```bash
# Build the Docker image
docker build -t flask-login-app .

# Run the Docker container
docker run -d -p 8080:5000 flask-login-app
```

Visit: `http://localhost:8080`


## 🌍 Deploy to AWS EC2 with Terraform

> You can deploy this app to the cloud using [Terraform](https://www.terraform.io/) and an EC2 user data script that installs Docker, pulls this image from DockerHub, and runs it automatically.

---

## 📦 DockerHub Image

> You can also pull this image directly:

```bash
docker pull borgx/flask-login-app
```

---

## 📄 License

This project is licensed under the MIT License. You are free to use, modify, and distribute it.

---



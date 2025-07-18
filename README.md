# cloudlegends_task

```markdown
# 🔐 Flask Login App (Dockerized)

This is a simple Flask web application that includes a basic user **login** functionality. It's fully containerized with Docker, making it easy to run locally or deploy to the cloud (e.g., AWS EC2 with Terraform).

---

## 🌟 Features

- 📝 User login form
- 🐳 Dockerized (build once, run anywhere)
- ☁️ Ready for cloud deployment (e.g., AWS EC2 via Terraform)

---

## 🏗️ Folder Structure

```

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
cd flask-login-app

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

---

## 👨‍💻 Usage

1. Visit `/register` to create a new user.
2. Login using the same credentials at `/login`.
3. Once logged in, you're redirected to `/dashboard`.
4. You can logout with the link on the dashboard.

---

## 🌍 Deploy to AWS EC2 with Terraform

> **Coming Soon!** You can deploy this app to the cloud using [Terraform](https://www.terraform.io/) and an EC2 user data script that installs Docker, pulls this image from DockerHub, and runs it automatically.

---

## 📦 DockerHub Image

> You can also pull this image directly:

```bash
docker pull your-dockerhub-username/flask-login-app
```

---

## 📄 License

This project is licensed under the MIT License. You are free to use, modify, and distribute it.

---

## 🙌 Contributing

Pull requests are welcome! For major changes, please open an issue first to discuss what you’d like to change.

---

## 📫 Contact

For feedback, reach out to:
**Your Name**
[GitHub](https://github.com/yourusername)
[DockerHub](https://hub.docker.com/u/yourusername)

```

---

Let me know if you'd like a badge-filled or more styled version too (e.g., GitHub Actions, DockerHub, License, etc.) or if you want me to add the Terraform section directly into the README.
```

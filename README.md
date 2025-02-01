FAQ API - Multi-language FAQ System

📌 Overview

This project is a Django-based FAQ system that provides an API for retrieving frequently asked questions in different languages. It uses Redis for caching to improve performance and supports Docker for easy deployment.

🌍 Supported Languages

> Hindi (hi)

> Bengali (bn)

> Spanish (es)

> French (fr)

> German (de)

> Chinese (zh)

> Arabic (ar)

> Russian (ru)

> Japanese (ja)

> Portuguese (pt)

🛠 PREREQUISITES

Ensure you have the following installed before proceeding:

>Python 3.9+

>Docker & Docker Compose

>Redis (if not using Docker)

🚀 \FEATURES

Multi-language support: Retrieve FAQs in different languages using the lang query parameter.

Redis Caching: Optimized API performance by caching responses.

Docker Support: Easily deploy using Docker and Docker Compose.

GitHub CI/CD: Automated linting and testing with GitHub Actions.

AWS Deployment: Hosted on Amazon Web Services (AWS).

📂 Project Structure

faq_project/
│── faqs/                 # FAQ app containing models, views, serializers
│── faq_project/          # Main Django project configuration
│── requirements.txt      # Python dependencies
│── compose.yaml          # Docker Compose file
│── Dockerfile            # Docker configuration
│── entrypoint.sh         # Entry script for Docker container
│── manage.py             # Django management script
│── README.md             # Documentation

📥 Installation

🔹 Running with Docker

To run the project using Docker:

docker-compose up --build

🔹 Manual Setup

Clone the repository

git clone https://github.com/ecoder21/Backend-BharatFd-Multilingual-FAQs.git
cd faq-api

Set up a virtual environment and install dependencies

python -m venv venv
source venv/bin/activate  # On Windows use `venv\Scripts\activate`
pip install -r requirements.txt

Apply database migrations

python manage.py migrate

Start the development server

python manage.py runserver

🏃SETTING UP REDIS FOR CACHING

If using Redis separately, you can pull and run the Redis container:

docker pull redis

To run Redis as a container:

docker run --name redis-cache -d -p 6379:6379 redis

This starts both the Django application and Redis container.

📡 API Endpoints

🔹 Admin Panel

Access the Django admin panel at:

http://127.0.0.1:8000/admin

Default Admin Credentials:

Username: akanksha

Password: akanksha

🔹 Retrieve FAQs

Get FAQs in a specific language:

Request:

GET /api/faqs/?lang=<language_code>

Default Language (English):

GET http://127.0.0.1:8000/api/faqs

Response:

[
    {
        "id": 1,
        "question": "What is your return policy?",
        "answer": "We accept returns within 30 days."
    },
    {
        "id": 2,
        "question": "How can I contact customer support?",
        "answer": "You can contact us by email at support@example.com or by phone at +1 555 123 4567."
    }
]

🤝 Contribution Guidelines

Fork the repository and create a new branch

Ensure your code follows PEP8 standards

Run lint checks before submitting a pull request

flake8 .

Run tests to confirm functionality

python manage.py test

Submit a pull request with a detailed description of your changes

📌 Assumptions & Design Choices

The admin panel displays only English questions for consistency.

Pre-translations are currently supported only for Hindi and Bengali.

📜 License

This project is licensed under the MIT License.

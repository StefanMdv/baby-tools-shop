# E-Commerce Project For Baby Tools

This is a Django-based e-commerce application for baby tools and products. The project demonstrates a complete e-commerce system with user authentication, product catalog management, and category filtering.

## Table of Contents

- [About](#about)
- [Quickstart](#quickstart)
- [Usage](#usage)
- [Technologies](#technologies)
- [Screenshots](#screenshots)

## Quickstart

### Prerequisites

- Python 3.9 or higher
- Docker (optional, for containerized deployment)

### Quick Start Guide

**Docker**

```bash
# Copy the source code via SSH
git clone git@github.com:username/baby-tools-shop.git
cd baby-tools-shop

# Create .env file from .example.env
cp .example.env .env
# Edit .env with your configuration

# Build the Docker image
docker build -t baby_tools_app -f Dockerfile .

# Run the container
docker run -it --rm -p 8025:8025 baby_tools_app
```

Visit `http://<your_ip>:8025` in your browser.

## Usage

### Local Development Setup

```bash
# Navigate to the Django app directory
cd babyshop_app

# Create migrations for model changes
python manage.py makemigrations

# Apply migrations to database
python manage.py migrate

# Create a superuser for admin access
python manage.py createsuperuser

# Run the development server
python manage.py runserver 0.0.0.0:8000
```

### Docker Deployment

#### Building the Image

```bash
docker build -t baby_tools_app --no-cache .
```

The `--no-cache` flag ensures a fresh build without using cached layers.

#### Running the Container

```bash
docker run -it --rm -p 8025:8025 baby_tools_app
```

## Technologies

- **Python 3.9** - Programming language
- **Django 4.0.2** - Web framework
- **Pillow** - Image processing library
- **Venv** - Python virtual environment
- **Docker** - Containerization (optional)

### Screenshots

##### Home Page with login

<img alt="" src="https://github.com/MET-DEV/Django-E-Commerce/blob/master/project_images/capture_20220323080815407.jpg"></img>
##### Home Page with filter
<img alt="" src="https://github.com/MET-DEV/Django-E-Commerce/blob/master/project_images/capture_20220323080840305.jpg"></img>
##### Product Detail Page
<img alt="" src="https://github.com/MET-DEV/Django-E-Commerce/blob/master/project_images/capture_20220323080934541.jpg"></img>

##### Home Page with no login
<img alt="" src="https://github.com/MET-DEV/Django-E-Commerce/blob/master/project_images/capture_20220323080953570.jpg"></img>


##### Register Page

<img alt="" src="https://github.com/MET-DEV/Django-E-Commerce/blob/master/project_images/capture_20220323081016022.jpg"></img>


##### Login Page

<img alt="" src="https://github.com/MET-DEV/Django-E-Commerce/blob/master/project_images/capture_20220323081044867.jpg"></img>

FROM python:3.12-alpine

WORKDIR /babyshop_app

COPY /babyshop_app .

COPY requirements.txt .

RUN pip install --upgrade pip

RUN python -m pip install -r requirements.txt

RUN python manage.py makemigrations && python manage.py migrate

EXPOSE 8025

ENTRYPOINT [ "/bin/sh", "-c", "python manage.py runserver 0.0.0.0:8025" ]
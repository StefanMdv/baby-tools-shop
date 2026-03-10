FROM python:3.9-alpine

WORKDIR /babyshop_app

COPY babyshop_app/ requirements.txt .env ./

RUN pip install --upgrade pip && python -m pip install -r requirements.txt

EXPOSE 8025

ENTRYPOINT [ "/bin/sh", "-c", "python manage.py migrate && python manage.py runserver 0.0.0.0:8025" ]
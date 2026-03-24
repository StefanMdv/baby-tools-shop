FROM python:3.9-alpine

WORKDIR /babyshop_app

COPY babyshop_app/ requirements.txt ./

RUN pip install --upgrade pip && python -m pip install -r requirements.txt

RUN python manage.py migrate

EXPOSE 8025

ENTRYPOINT [ "/bin/sh", "-c", "python manage.py migrate && python manage.py runserver 0.0.0.0:8025" ]
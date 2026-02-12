FROM python:3.12-alpine

WORKDIR /babyshop_app

COPY . .

RUN python -m pip install -r requirements.txt

RUN python manage.py make-migrations && python manage.py migrate

EXPOSE 5000

ENTRYPOINT [ "/bin/sh", "-c", "python manage.py runserver --host 0.0.0.0:8025" ]
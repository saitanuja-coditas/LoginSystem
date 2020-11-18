FROM python:3.10.0a2-buster
FROM httpd:2.4.46

WORKDIR /app

#Install dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . /app
RUN make /app
CMD python /app/app.py

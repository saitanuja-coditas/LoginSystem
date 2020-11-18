FROM python:3.10.0a2-buster

WORKDIR /app

#Install dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt

COPY /* /app
#Run the application
CMD [ "python", "app.py" ]

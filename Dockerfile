FROM python:3.10.0a2-buster

WORKDIR /app

#Install dependencies
COPY . /app
RUN pip install -r requirements.txt

#Run the application
CMD [ "python", "app.py" ]

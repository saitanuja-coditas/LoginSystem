FROM python:3.10.0a2-buster

WORKDIR /LoginSystem

#Install dependencies
COPY requirements.txt
RUN pip install -r requirements.txt

COPY . /LoginSystem
#Run the application
CMD [ "python", "app.py" ]

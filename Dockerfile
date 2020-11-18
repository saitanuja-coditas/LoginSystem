FROM python:3.10.0a2-buster

#Make a directory 
WORKDIR /

#Install dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt

#Run the application
CMD [ "python", "app.py" ]

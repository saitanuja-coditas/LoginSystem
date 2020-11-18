FROM python:3.10.0a2-buster

#Make a directory 
WORKDIR /app

#Install dependencies
COPY requirements.txt .
RUN pip install -r requiremnts.txt

#copy the source code
COPY /app .

#Run the application
CMD [ "python", "app.py" ]
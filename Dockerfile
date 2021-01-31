#Docker file for the wkhtltopdf
FROM python:3.9
MAINTAINER rahulkamalbhaskar@gmail.com

#install dependency
#COPY requirements.txt ./

#create project directory
RUN mkdir /usr/src/app/

#Copy app inside the docker container
COPY app.py requirements.txt /usr/src/app/

#move to dir
WORKDIR /usr/src/app/

#install dependency 
RUN pip install -r requirements.txt

#start the app
CMD ["python","app.py"]

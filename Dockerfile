FROM ubuntu



COPY . /project
COPY requirements.txt /project
WORKDIR /project
RUN apt update -y
RUN apt install python3 -y
RUN apt -y install python3-pip
RUN ["pip", "install" ,"--no-cache-dir" ,"-r" ,"/project/requirements.txt"]

WORKDIR ["python3","manage.py",'runserver','0.0.0.0:8000']
# CMD ["manage.py",'runserver','0.0.0.0:8000']
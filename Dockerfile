FROM python:3.8-alpine
# this sets the base image for the container
# a lightweight python 3.8 image based on alpine linux

COPY . /app
# copies all files from current directory into /app inside the container
# ensure your app files are available in the container

WORKDIR /app
# sets /app as the working directory inside the container
# any follwing commands (RUN, CMD) will run inside /app

RUN pip install -r requirements.txt
# installs python dependencies

CMD python /app/main.py
# this specifies the command that will run when the container starts
# so when you start the container it will run 'python /app/main.py' which runs the app.
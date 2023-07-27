# Flask Application with Sqlite Database

A todo app using Flask with SQLite Database.

Below are the steps required to deploy this on a Linux based O.S.

1. Install all required dependencies
2. Install and configure the web server
3. Start the web server

## 1. Install all required dependencies

Python and its dependencies

apt-get install -y python python-setuptools python-dev build-essential python-pip

## 2. Install and Configure Web Server

Install Python Flask dependency

pip install -r requirements.txt

- Copy app.py or download it from source repository
- Copy /templates directory or download it from source repository
- Configure database by copying the /instances directory

## 3. Start Web Server

Start web server

FLASK_APP=app.py flask run --host=0.0.0.0

## 4. Test

Open a browser and go to URL

http://<IP>:5000 => Homepage

## Using Docker

docker run -p <PORT>:5000 jelilio/my-simple-todo-app

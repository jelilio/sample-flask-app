FROM ubuntu

RUN apt update
RUN apt install -y python3 pip

COPY requirements.txt /opt/requirements.txt
RUN pip install -r /opt/requirements.txt

COPY instance/ /opt/instance

COPY app.py /opt/app.py

COPY templates/ /opt/templates
COPY static/ /opt/static

ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0



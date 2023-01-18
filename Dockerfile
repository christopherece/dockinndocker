# base image  
FROM python:3.10.9
# setup environment variable  
ENV PYTHONUNBUFFERED 1
WORKDIR /pyapps

COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD ["python3", "dockinnqueue/manage.py", "runserver", "0.0.0.0:8080"]
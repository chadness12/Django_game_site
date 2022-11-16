FROM python:3.9-slim
ENV PYTHONUNBUFFERED 1
RUN mkdir /srv/docker-server
ADD . /srv/docker-server
WORKDIR /srv/docker-server
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
EXPOSE 8000
CMD ["python", "manage.py", "migrate"]
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]






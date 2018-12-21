FROM python:3.6.5

LABEL maintainer="benliogl@yahoo.com"

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

COPY . /app
WORKDIR /app

EXPOSE 5060

CMD ["python3", "app/app.py"]

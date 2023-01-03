FROM python:latest
WORKDIR /service
COPY requirements.txt .
COPY ../data/states.csv ./
COPY ./states.py ./
EXPOSE 8080
ENTRYPOINT ["python3", "states.py"]
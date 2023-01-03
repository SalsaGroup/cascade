FROM python:latest
WORKDIR /service
COPY requirements.txt .
COPY ./states.py states.csv ./
EXPOSE 8080
ENTRYPOINT ["python3", "states.py"]
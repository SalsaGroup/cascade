FROM python:latest
WORKDIR /service
COPY requirements.txt .
COPY ./states* ./
EXPOSE 8080
ENTRYPOINT ["python3", "states.py"]
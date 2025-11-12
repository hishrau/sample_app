FROM python:3.12-alpine
WORKDIR /app
COPY . .
# ADD
RUN python -m venv venv
RUN ./venv/bin/pip install -r requirements.txt
ENV DB_NAME=sample_app.db
EXPOSE 9000
RUN addgroup app && adduser -S -G app app
USER app
# CMD
# ENTRYPOINT
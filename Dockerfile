FROM python:3.12-alpine
WORKDIR /app
COPY . .
# ADD
RUN python -m venv venv
RUN ./venv/bin/pip install -r requirements.txt
ENV DB_NAME=sample_app.db
# EXPOSE port
# USER
# CMD
# ENTRYPOINT
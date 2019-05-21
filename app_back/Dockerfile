FROM python:2.7-slim
ENV PYTHONUNBUFFERED 1
RUN pip install Django==1.9.7
RUN mkdir /app
ADD ./src /app
WORKDIR /app
EXPOSE 8000

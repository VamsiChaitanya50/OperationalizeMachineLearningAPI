FROM python:3.7.3-stretch

RUN mkdir /app

WORKDIR /app

COPY . /app/

# hadolint ignore=DL3013
RUN pip install --upgrade pip && pip install -r requirements.txt

EXPOSE 80

CMD ["python", "app.py"]
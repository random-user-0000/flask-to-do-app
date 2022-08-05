FROM python:3

ENV PYTHONDONTWRITEBYTECODE 1
ENV FLASK_APP "main.py"
ENV FLASK_ENV "development"
ENV FLASK_DEBUG True

RUN mkdir /code
WORKDIR /code
ADD requirements.txt /code/
RUN pip install -r requirements.txt
ADD . /code/
EXPOSE 5000

CMD flask run --host=0.0.0.0


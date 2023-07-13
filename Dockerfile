FROM python:3.7.12

RUN pip install pipenv

WORKDIR /app

COPY Pipfile Pipfile.lock /app/

RUN pipenv install --deploy --ignore-pipfile

COPY server.py settings.py storage.py /app/

EXPOSE 80

CMD ["pipenv", "run", "python", "server.py"]

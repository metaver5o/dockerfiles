FROM python:3.7

COPY requirements.txt /tmp/

RUN pip install -r /tmp/requirements.txt

RUN useradd --create-home appuser
WORKDIR /home/appuser
USER appuser

COPY yourscript.py .

CMD [ "python", "./yourscript.py" ]

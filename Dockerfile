FROM python:3.6

EXPOSE 5000

RUN mkdir /opt/flaskapp
ADD . /opt/flaskapp/testapp
RUN pip install -r /opt/flaskapp/testapp/requirements.txt

RUN mkdir /var/log/flaskapp/

ENTRYPOINT ["python"]
CMD ["python", "/opt/flaskapp/testapp/routes.py"]

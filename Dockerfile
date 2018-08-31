FROM python:2.7-onbuild

USER www-data

EXPOSE 10053

CMD [ "python", "server.py" ]

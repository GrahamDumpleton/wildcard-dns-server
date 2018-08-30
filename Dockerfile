FROM docker.io/library/python:2.7.15-alpine3.8
RUN true \
 && set -x \
 && apk add --no-cache build-base \
 && pip install twisted \
 && apk del build-base \
 && true
COPY server.py .
EXPOSE 10053
CMD ["python", "server.py"]

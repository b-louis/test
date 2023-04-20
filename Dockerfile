FROM ubuntu:latest

LABEL author="Louis B"

RUN apt-get update && apt-get install -y python3

COPY test.py /exemple/test.py
COPY startup.py /exemple/startup.py

ENTRYPOINT [ "python3","/exemple/startup.py" ]

WORKDIR /exemple/

CMD ["python3","/exemple/test.py"]
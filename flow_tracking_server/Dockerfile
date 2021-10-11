FROM python:3.9

RUN pip install mlflow 

WORKDIR /flow_track
COPY src/run.sh .

ENTRYPOINT ["/flow_track/run.sh"]

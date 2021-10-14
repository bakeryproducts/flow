curl -X DELETE http://localhost:3081/models/fastrcnn && \
cp model-store/fastrcnn.mar ../ts_server/model-store/ && \
curl -X POST  "http://localhost:3081/models?url=fastrcnn.mar" && \
curl -X PUT  "http://localhost:3081/models/fastrcnn?min_worker=4"

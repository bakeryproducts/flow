curl -X DELETE http://localhost:3081/models/resnet34 && \
cp model-store/resnet34.mar ../ts_server/model-store/ && \
curl -X POST  "http://localhost:3081/models?url=resnet34.mar" && \
curl -X PUT  "http://localhost:3081/models/resnet34?min_worker=4"

FROM pytorch/torchserve

WORKDIR /home/model-server
COPY ./data/config.properties /home/model-server/config.properties

# RUN ln -sf /proc/1/fd/1 /home/model-server/logs/ts_log.log
COPY ./data/resnet50-0676ba61.pth /root/.cache/torch/hub/checkpoints/resnet50-0676ba61.pth
COPY ./data/resnet101-63fe2227.pth /root/.cache/torch/hub/checkpoints/resnet101-63fe2227.pth

ENTRYPOINT ["/bin/bash", "-c"]
# CMD ["echo", "HI"]
# CMD ["sleep infinity"]

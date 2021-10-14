FROM pytorch/torchserve

WORKDIR /home/model-server
COPY ./config.properties /home/model-server/config.properties

# RUN ln -sf /proc/1/fd/1 /home/model-server/logs/ts_log.log
COPY ./resnet50-0676ba61.pth /root/.cache/torch/hub/checkpoints/resnet50-0676ba61.pth

ENTRYPOINT ["/bin/bash", "-c"]
# CMD ["echo", "HI"]
# CMD ["sleep infinity"]

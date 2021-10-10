FROM python:3.9

# Create the environment using conda
#RUN conda install -c conda-forge mlflow
RUN pip install mlflow
WORKDIR /home/dockeruser

# Set up SSH
RUN apt-get update && apt-get install -y openssh-server
RUN useradd -m -s /bin/bash dockeruser
RUN mkdir /var/run/sshd
RUN echo 'dockeruser:123' | chpasswd
RUN echo 'root:123' | chpasswd
EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]

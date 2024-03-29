FROM jenkins:2.32.3

USER root
RUN apt-get update \
      && apt-get install -y sudo \
      && rm -rf /var/lib/apt/lists/*
RUN echo "jenkins ALL=NOPASSWD: ALL" >> /etc/sudoers

RUN mkdir /home/jenkins

# copy ssh credentials to our container for git
COPY ssh  /home/jenkins/.ssh


FROM jenkins:2.46.2
USER root
RUN curl -sSL https://get.docker.com | sh
RUN usermod -aG docker jenkins
RUN install-plugins.sh docker-workflow
USER jenkins

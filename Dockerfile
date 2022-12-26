FROM google/dart

WORKDIR /app

ADD pubspec.* /app/
RUN pwd
RUN pub get
ADD . /app
RUN pub get --offline
RUN pwd

CMD []
ENTRYPOINT ["/usr/bin/dart", "main.dart"]

# Why run pub get twice => https://hub.docker.com/r/google/dart/
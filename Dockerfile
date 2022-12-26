FROM google/dart

WORKDIR /app

ADD pubspec.* /app/
RUN ls -a
RUN pub get
ADD . /app
RUN pub get --offline
RUN ls -a

CMD []
ENTRYPOINT ["/usr/bin/dart", "main.dart"]

# Why run pub get twice => https://hub.docker.com/r/google/dart/
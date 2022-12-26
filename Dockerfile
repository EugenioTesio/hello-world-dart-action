# Specify the Dart SDK base image version using dart:<version> (ex: dart:2.12)
FROM dart:stable AS build

# Resolve app dependencies.
RUN dart pub get

CMD []
ENTRYPOINT ["dart", "main.dart"]

# Why run pub get twice => https://hub.docker.com/r/google/dart/
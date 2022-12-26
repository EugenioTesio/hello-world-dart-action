# Specify the Dart SDK base image version using dart:<version> (ex: dart:2.12)
FROM dart:stable AS build

# Resolve app dependencies.
WORKDIR /app
COPY pubspec.* ./
RUN pwd && ls -a
RUN dart pub get
RUN pwd && ls -a

# Copy app source code and AOT compile it.
COPY . .
RUN pwd && ls -a
# Ensure packages are still up-to-date if anything has changed
RUN dart pub get --offline
RUN pwd && ls -a

ENTRYPOINT ["dart", "main.dart"]
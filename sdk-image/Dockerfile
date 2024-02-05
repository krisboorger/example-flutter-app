FROM debian:12.4-slim

RUN apt-get update\
    && apt-get install -y curl file git unzip xz-utils zip default-jdk\
    && apt-get clean

RUN adduser user --disabled-password --gecos ""

USER user

WORKDIR /home/user/

RUN mkdir android_sdk\
    && cd android_sdk\
    && curl https://dl.google.com/android/repository/commandlinetools-linux-11076708_latest.zip --output android_sdk.zip\
    && unzip android_sdk.zip\
    && rm android_sdk.zip

RUN echo 'y' | ./android_sdk/cmdline-tools/bin/sdkmanager --sdk_root=/home/user/android_sdk --install "build-tools;34.0.0"

RUN mkdir flutter_sdk\
    && cd flutter_sdk\
    && curl https://storage.googleapis.com/flutter_infra_release/releases/stable/linux/flutter_linux_3.13.9-stable.tar.xz --output flutter-sdk.tar.xz\
    && tar xf flutter-sdk.tar.xz\
    && rm flutter-sdk.tar.xz

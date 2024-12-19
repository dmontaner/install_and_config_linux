# Install Flet and Flutter

See:
- https://www.youtube.com/watch?v=mtqTnGAAHw0&t=647s : for flutter setup

- https://www.youtube.com/watch?v=IZvJOlE5lgc&t=433s
- https://www.youtube.com/watch?v=IcT_QrLWi10&t=199s



## Flutter

https://docs.flutter.dev/get-started/install/linux/desktop

Just donwload, unzip and set the PATH

To verify your installation:

    flutter doctor



## Android Studio

https://developer.android.com/studio

Just donwload, unzip and set the PATH

or use snap

sudo snap install android-studio --classic




## Install the Dart SDK

https://dart.dev/get-dart#install

```
sudo apt-get update && sudo apt-get install apt-transport-https

wget -qO- https://dl-ssl.google.com/linux/linux_signing_key.pub \
  | sudo gpg  --dearmor -o /usr/share/keyrings/dart.gpg

echo 'deb [signed-by=/usr/share/keyrings/dart.gpg arch=amd64] https://storage.googleapis.com/download.dartlang.org/linux/debian stable main' \
  | sudo tee /etc/apt/sources.list.d/dart_stable.list

sudo apt-get update && sudo apt-get install dart
```

## Android SDK

    sudo apt-get install sdkmanager

### install NDK

    sudo sdkmanager --install "ndk;25.1.8937393"

or from Android Studio:

go to SDK Manager → SDK Tools tab → NDK (reinstall the NDK version you're using or install the latest stable version).



content_copy
Use the following sudo apt-get commands.





flet build apk

# install
https://flutter.dev/docs/get-started/install/macos

- flutter를 설치하고, 터미널의 설정을 vi에 들어가서 바꿔준다. 터미널에서 flutter 명령어를 어디서나 쓸 수 있게 된다.

```bash
$ flutter doctor
```
- 닥터 명령어를 실행하면 필요한 프로그램들이 깔려있는지를 체크해 준다. 원래 ios앱을 만들었기 때문에 X code 는 버전이 안 맞는다고 나오고, Android Studio는 없다고 나온다. X code도 업데이트하고 Android Studio도 깔아준다. (예상대로 가장 오래걸리는 작업은 X code 업데이트...)

- iOS device에 배포하기
```bash
$ brew update
$ brew install --HEAD usbmuxd
$ brew link usbmuxd
$ brew install --HEAD libimobiledevice
$ brew install ideviceinstaller ios-deploy cocoapods
$ pod setup
```

- 안드로이드는 device가 없으니, 그냥 시뮬레이터만 설정했다.
https://developer.android.com/studio/run/emulator-acceleration

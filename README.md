# KMP-iosApp
UIKit-based iOS app for Kotlin Multiplatform

- [x] Created with Xcode 15.0.1
- [x] UIKit based with `SceneDelegate` and `Main` storyboard, plus unit tests and UI tests
- [x] Updated settings to work with KMP gradle project

## Usage
- Replace the `iosApp` folder of the KMP project by this repo!

## Guide for manual update of existing iosApp without using this repo
1. Create new Xcode iOS application with name `iosApp`
2. Select the **iosApp target** -> **Build Phases** -> Create **New Run Script Phase**, move it just below _Compile Source_ phase, set _Shell_ and content as:
  ```sh
  /bin/sh
  ```
  ```sh
  cd "$SRCROOT/.."
  ./gradlew :shared:embedAndSignAppleFrameworkForXcode
  ```

| New | Script |
|---|---|
| <img width="761" alt="Screenshot 2023-11-04 at 12 12 14 PM" src="https://github.com/trinnguyen/kmp-iosApp/assets/5253933/7a2a310d-44da-4e17-9055-d3da4931408c">|<img width="1083" alt="Screenshot 2023-11-04 at 12 12 46 PM" src="https://github.com/trinnguyen/kmp-iosApp/assets/5253933/f5a964bd-f1ab-40d8-862e-50777545e366">|
3. Update **Other Linker Flags** of the iosApp target to: 
  
  ```sh
  -framework shared
  ```
<img width="1036" alt="Screenshot 2023-11-04 at 12 16 24 PM" src="https://github.com/trinnguyen/kmp-iosApp/assets/5253933/74a69a82-6231-4d68-b14b-b2c110ba224f">

4. Update **FRAMEWORK_SEARCH_PATHS** to

  ```sh
  $(SRCROOT)/../shared/build/xcode-frameworks/$(CONFIGURATION)/$(SDK_NAME)
  ```
<img width="1092" alt="Screenshot 2023-11-04 at 12 18 19 PM" src="https://github.com/trinnguyen/kmp-iosApp/assets/5253933/221cd040-8c98-4475-9a9d-f17d06ac02a4">


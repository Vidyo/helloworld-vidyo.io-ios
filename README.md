# vidyo.io-helloworld-ios
Simple video chat application using Vidyo.io on iOS

> For an instructional video detailing how to build this app, take a look at this [Blog Post](https://vidyo.io/how-to/build-mobile-video-chat-app-ios-minutes).

## Clone Repository
git clone https://github.com/Vidyo/vidyo.io-helloworld-ios.git

## Acquire Framework
1. Download the latest Vidyo.io iOS SDK package: https://static.vidyo.io/latest/package/VidyoClient-iOSSDK.zip
2. Copy the framework located at VidyoClient-iOSSDK/lib/ios/VidyoClientIOS.framework to the root directory of where this repository was cloned (i.e. parallel to this README.md file).

> Note: VidyoClient SDK version 4.1.21.7 or greater is required.
> The version of the SDK that you are acquiring is highlighted in the blue box here: https://developer.vidyo.io/documentation/latest

## Notes
1. Since the instructional video was created, there have been a number of updates to the VidyoClient SDK. One of these updates relates to the necessary frameworks that should be included in "Linked Frameworks and Libraries" in the target's General settings. The following "Linked Frameworks and Libraries" should be added:
- AudioToolbox.framework
- AVFoundation.framework
- CoreLocation.framework
- CoreMedia.framework
- SystemConfiguration.framework
- UIKit.framework
- VidyoClientIOS.framework

## Build and Run Application
1. Open the project VidyoIODemo/VidyoIODemo.xcodeproj in Xcode 9.0 or later.
2. Open the source file VidyoIODemo/VidyoIODemo/ViewController.m and update the token value "InsertValidTokenHere" with a valid generated token. See the Token section of the Documentation at https://developer.vidyo.io for more info on generating tokens or watch an instructional video [here](https://support.vidyo.io/hc/en-us/articles/115004915647-Generate-Vidyo-io-Tokens).
3. Connect an iOS device to your computer via USB.
4. Select the iOS device as the build target of your application.
5. Build and run the application on the iOS device.

## Alternatively, Build Using Libraries & Third Party Frameworks
If preferred, you may create your project using a combination of libraries and third party frameworks, as opposed to the VidyoClientIOS framework.

1. Import the library and header directories from the Vidyo.io iOS SDK package into your project:
	* VidyoClient-iOSSDK/lib
	* VidyoClient-iOSSDK/include

2. Add the following libraries and frameworks to the Linked Frameworks and Libraries settings in the General settings of the target:
	* libVidyoClient.a	(included in Vidyo.io iOS SDK package)
	* libcrypto.a		(included in Vidyo.io iOS SDK package)
	* libopus.a		(included in Vidyo.io iOS SDK package)
	* libspeex.a		(included in Vidyo.io iOS SDK package)
	* libspeexdsp.a		(included in Vidyo.io iOS SDK package)
	* libsrtp.a		(included in Vidyo.io iOS SDK package)
	* libssl.a 		(included in Vidyo.io iOS SDK package)
	* VPX.framework		(included in Vidyo.io iOS SDK package)
	* AVFoundation.framework
	* CoreGraphics.framework
	* CoreVideo.framework
	* QuartzCore.framework
	* UIKit.framework
	* AudioToolbox.framework
	* CoreLocation.framework
	* Foundation.framework
	* Security.framework
	* CFNetwork.framework
	* CoreMedia.framework
	* OpenGLES.framework
	* SystemConfiguration.framework

3. In the Build Settings of the target, update the Framework Search Paths, Header Search Paths, and Library Search Paths to reference the directories imported in step 1.


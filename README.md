<p>
<img src="https://github.com/user-attachments/assets/13e98e72-b2ec-473b-8889-b5b54773a775" alt="Image 1" style="margin-right: 10px; margin-bottom: 10px;" width="20%"> 
 <img src="https://github.com/user-attachments/assets/b33d7de4-a142-4d6d-9d65-9c889f48f232" alt="Image 1" style="margin-right: 10px; margin-bottom: 10px;" width="20%"> 
 <img src="https://github.com/user-attachments/assets/1aac5e6d-332b-4b62-93c4-1ed59952e497" alt="Image 1" style="margin-right: 10px; margin-bottom: 10px;"width="20%"> 
 <img src="https://github.com/user-attachments/assets/339deace-291a-45e2-9b6a-fe81733458bf" alt="Image 1" style="margin-right: 10px; margin-bottom: 10px;"width="20%"> 
  </p>


# VideoCalling through ZEGOCLOUD

This project enables users to join video and audio calls using the ZEGOCLOUD platform. The app is built with **Flutter** and integrates the **zego_uikit_prebuilt_call** and **zego_uikit_signaling_plugin** packages to provide seamless communication features.

## Features

- **Video Calls**: Users can initiate and join video calls.
- **Audio Calls**: Users can switch to or initiate audio-only calls.
- **ZEGOCLOUD Integration**: The app uses ZEGOCLOUD’s SDK for high-quality video and audio communication.

## Packages Used

- **zego_uikit_prebuilt_call: ^4.16.2**: Provides pre-built UI and functionality for video and audio calls.
- **zego_uikit_signaling_plugin: ^2.8.4**: Used for signaling and real-time communication between users.

## Getting Started

1. **Clone the repository**:
   ```bash
   git clone https://github.com/arbabhussain7/zegocloud-video-call.git
   cd zegocloud-video-call
   ```

2. **Install dependencies**:
   ```bash
   flutter pub get
   ```

3. **Set up ZEGOCLOUD**:
   - Sign up at [ZEGOCLOUD](https://www.zegocloud.com) and get your AppID and AppSign.
   - Add your ZEGOCLOUD credentials in the project.

4. **Run the app**:
   ```bash
   flutter run
   ```

## ZEGOCLOUD Setup

1. **Sign up on ZEGOCLOUD** and create a new project.
2. **Retrieve AppID and AppSign** from the ZEGOCLOUD console.
3. **Initialize ZEGOCLOUD in the app** using the following code in your main file:
   ```dart
   ZegoUIKitPrebuiltCall(
     appID: yourAppID, 
     appSign: yourAppSign, 
     userID: userID, 
     userName: userName,
   );
   ```

## Code Structure

- **lib/screens/call_screen.dart**: Handles UI and logic for video/audio call initiation and joining.
- **lib/services/zego_service.dart**: Manages ZEGOCLOUD API interaction and initialization.

## Technologies Used

- **Flutter**: Mobile app framework.
- **Dart**: Programming language for building the app.
- **ZEGOCLOUD**: Real-time video/audio communication SDK.
- **GetX**: Used for state management and navigation.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Contact

For any questions or issues, feel free to reach out at [arbabhussain414@gmail.com](arbabhussain414@gmail.com).

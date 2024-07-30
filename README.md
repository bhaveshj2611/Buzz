
# Buzz - Real Time Chat App

Buzz is a real-time chat application built with Flutter for the frontend and Node.js with Socket.IO for the backend. It allows users to engage in instant messaging with a sleek, modern interface. The app leverages the power of PostgreSQL, a robust open-source relational database, for efficient data storage and retrieval. Prisma, a next-generation ORM, is used to simplify database operations and provide type-safe database access.

## Tech Stack

- **Frontend**: Flutter
- **Backend**: Node.js, Express.js
- **Real-time Communication**: Socket.IO
- **Database**: PostgreSQL
- **ORM**: Prisma

## Features

- Real-time messaging with instant updates
- Unique user identification for each session
- Message persistence across sessions using PostgreSQL
- Cross-platform support (iOS, Android, Web) thanks to Flutter
- Efficient database operations and type-safe queries with Prisma
- Scalable backend architecture using Node.js and Express.js

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

- Flutter SDK
- Node.js
- PostgreSQL
- Git

### Installation

1. Clone the repository

```
git clone https://github.com/bhaveshj2611/Buzz.git
cd buzz-chat-app
```

2. Set up the backend
```
cd server
npm install
cp .env.example .env
```

Edit the `.env` file with your PostgreSQL database credentials.

3. Set up the database
   ```
   npx prisma migrate dev

4. Start the server
   ```
   npm start
   
5. Set up the Flutter app

   ```
   cd ../buzz-chat-app
   flutter pub get

6. Update the backend URL
Open `lib/url.dart` and update the `getBackendUrl()` to match your server address.

7. Run the Flutter app
   ```
   flutter run


## Usage

1. Launch the app on your device or emulator.
2. You'll be automatically assigned a unique user ID.
3. Start typing messages in the text field at the bottom of the screen.
4. Press the send button or hit enter to send your message.
5. You'll see your messages appear on the right side of the screen.
6. Messages from other users will appear on the left side.

This is a v1 for the app. I plan to introduce several exciting features in upcoming versions:

- User authentication and accounts
- Private messaging between users
- Group chat functionality
- File and image sharing
- Voice messages

## Development

To contribute to this project:

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/newFeature`)
3. Commit your changes (`git commit -m 'Add some new feature'`)
4. Push to the branch (`git push origin feature/newFeature`)
5. Open a Pull Request

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details


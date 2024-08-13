# Intalent Technical Test - Books App

This iOS application displays a list of books from an API, allows users to view book details, favorite books, and manage custom books.

## Features

- Display a list of books from the API
- View detailed information for each book
- Cache API responses for improved performance
- Favorite and unfavorite books with persistent storage
- Add, edit, and delete custom books
- Support for iOS 13 and later

## Tech Stack

- **Language**: Swift
- **UI Framework**: SwiftUI
- **Minimum iOS Version**: iOS 13
- **Architecture**: MVVM (Model-View-ViewModel)
- **Networking**: Alamofire for API calls
- **Caching**: Alamofire (a third-party library for API response caching)
- **Persistence**: Realm for storing favorites and custom books
- **Dependency Injection**: Factory for Container-Based Dependency Injection.
- **Dependency Management**: Swift Package Manager (SPM)

## API

The app uses a mock API for fetching book data:

- Book List: `GET https://my-json-server.typicode.com/cutamar/mock/books`
- Book Details: `GET https://my-json-server.typicode.com/cutamar/mock/books/{id}`

## Installation

1. Clone the repository
2. Open the project in Xcode
3. Build and run the application on a simulator or device running iOS 13 or later

## Project Structure

- `Models/`: Data models for books and API responses
- `Views/`: SwiftUI views or UIKit view controllers
- `ViewModels/`: View models for managing business logic and data flow
- `Services/`: API client, caching service, and persistence service
- `Utilities/`: Helper classes and extensions

## Contributing

Please read our contributing guidelines before submitting pull requests.

## License

This project is licensed under the MIT License - see the LICENSE file for details.

# iOS-rpenya-rickandmorty-challenge
Ricky and Morty iOS app built for a challenge.

## Project specs:
- Xcode 14.2
- Deployment target: iOS 16.2
- 100% Swift & SwiftUI
- Response & Image caching.
- iOS SDKs: Combine
- Dependencies: [Kingfisher](https://github.com/onevcat/Kingfisher)

## Architecture
This project is built under SOLID principles, clean architecture, modular architecture and MVVM in the presentation layer. It uses SwiftUI for presentation and Combine framework to communicate between the different layers.

The layers that compose this project are:
- Presentation Layer:
    - It uses MVVM for presentation layer.
    - Also it uses dependency injection to inject dependencies to the view and the view model (for example: use cases, custom objects, etc.)
    - The presentation layer has its own view entities different than domain entities.
- Domain layer:
    - Business logic layer.
    - Dependency inversion to abstract domain layer from the data repositories.
    - Each use case is a reusable and independent component that executes an specific business logic.
    - Domain layer has its own domain entities different than view o data entities.
- Data layer:
    - Dependency inversion to communicate with Domain layer.
    - It uses the repository pattern. The repository pattern adds an abstraction layer over the the data sources from which the use cases get the data. With repository pattern, you can query your model objects from different data sources (Core Data, Realm, web server, etc.) with a only single-entry point.
    - Business logic shouldn’t know where the data comes from.
    - Data layer has its own data entities different than domain entities. 

## Architecture scheme:
![rpenya-eshop-challenge](https://user-images.githubusercontent.com/28446011/224689432-744d7c3e-8f95-4598-bcab-406a0e38e077.png)

![CleanArchitecture+MVVM_2](https://user-images.githubusercontent.com/28446011/226105136-df55c356-9e21-4759-affd-57f5713e46da.png)

## Layout
![Untitled](https://user-images.githubusercontent.com/28446011/226105571-77b01335-f91b-4457-b279-e3a617c625c4.png)

## Cache handling
This project includes caching for both responses and images.
To handle response caching I use `URLCache` and to handle image caching I use the external library `Kingfisher`. There're two constants to configure the cache lifetime individually:

<img width="534" alt="Screen Shot 2023-03-18 at 18 32 59" src="https://user-images.githubusercontent.com/28446011/226124363-66711e20-88ba-4ce6-81a7-ff52d275f735.png">

The app checks these constants every time it becomes active to know if reset is needed or not.


## Dependencies
This project has one and only dependency, which is [Kingfisher](https://github.com/onevcat/Kingfisher). I added this library to manage image cache, due the cache management is a key feature in this project. Kingfisher is a well-maintained and popular library, it provides performant APIs for downloading, caching, and processing images. When picking a 3rd party library, I try to look at the following points: Maintenance, Popularity, Code quality, Dependencies.

## Testing coverage
![Screen Shot 2023-03-18 at 00 36 44](https://user-images.githubusercontent.com/28446011/226105346-b9b709b1-d2d8-4d9d-8ea8-41605a1b49f5.png)

This project contains unit tests, UI test and snapshots using fastlane (https://docs.fastlane.tools/actions/snapshot/).

## Next steps:
- Add episodes & locations screens.
- Add more filter: status, espisode.
- Add search.

## More info:
https://docs.google.com/presentation/d/1o6DdUPBTLntO6rxQVlngmaZ9cKfMa-8qJuPZl_jLbo0/edit?usp=sharing


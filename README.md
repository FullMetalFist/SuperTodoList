## Synopsis

Todo list written in Swift with Kitura

## Code Example

```swift
public class CentralAPI {

    public let router = Router()

    let taskDatabase = TaskDatabase()

    let queue = DispatchQueue(label: "com.fullmetalfist.todo")

    public init() {
        router.all("*", middleware: BodyParser())
        router.get("/v1/tasks", handler: handleGetTasks)
        router.post("/v1/tasks", handler: handleAddTask)
    }
}
```

## Motivation

Side project to create a REST API in Swift.

## Installation

In Terminal visit the directory with this repo and type
    `swift package generate-xcodeproj`

Type
    `swift build`
Then
    `.build/debug/SuperTodoList`

Visit [localhost:8099/v1/tasks](http://localhost:8099/v1/tasks)


## API Reference

GET & POST routes at [http://localhost:8099/v1/tasks](http://localhost:8099/v1/tasks)


## Contributors

I'm on [Twitter](https://twitter.com/MVilabrera)

       [StackOverflow](https://stackoverflow.com/users/2533857/fullmetalfist)

Any bugs or feature requests please send me an [issue](https://github.com/FullMetalFist/SuperTodoList/issues)


## Thank you

These videos I found helpful:

[Robert Dickerson: Kitura demo](https://youtu.be/xEStdmwFVBg)

[Kitura - Post Request Tutorial Marvin Böddeker](https://youtu.be/iyPibwSk85w)

[Kitura: "What's New" and Demo with David Okun](https://youtu.be/tCI6wppenII)


## License

Copyright 2017 Michael Vilabrera

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

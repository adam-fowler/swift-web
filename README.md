# swift-web

A web server serving local static files.

## Installation

You can clone this project and build it using `swift build -c release` but the easiest way to install this is via [mint](https://github.com/yonaskolb/Mint).

```swift
mint install adam-fowler/swift-web
```

## Running

To serve files from the current folder run

```sh
swift web
```

This will run a web server bound to port 8001. Type `localhost:8001/<filename>` into your web browser to view a file.

To serve files from a particular folder run

```sh
swift web <folder>
```

You can also change the port the server uses with the `--port` option.

```sh
swift web <folder> --port 8080
```

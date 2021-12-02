# swift-web

A web server serving local static files.

## Installation

### Using Mint

The easiest way to install swift-web is via [mint](https://github.com/yonaskolb/Mint).

```sh
mint install adam-fowler/swift-web
```

### Using Swift Package Manager

```sh
git clone https://github.com/adam-fowler/swift-web
swift build -c release
```
And then copy `.build/release/swift-web` to a folder in your $PATH

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

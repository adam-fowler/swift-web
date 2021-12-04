import ArgumentParser
import Hummingbird
import HummingbirdFoundation

@main
struct WebServer: ParsableCommand {
    @Option(name: .shortAndLong)
    var hostname: String = "127.0.0.1"

    @Option(name: .shortAndLong)
    var port: Int = 8001

    @Argument
    var folder: String = "."

    func run() throws {
        let app = HBApplication(
            configuration: .init(
                address: .hostname(self.hostname, port: self.port),
                serverName: "swift-web"
            )
        )
        app.middleware.add(HBFileMiddleware(self.folder, searchForIndexHtml: true, application: app))
        app.middleware.add(HBLogRequestsMiddleware(.info))
        try app.start()
        app.wait()
    }
}

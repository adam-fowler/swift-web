import ArgumentParser
import Hummingbird
import HummingbirdFoundation

@main
struct WebServer: ParsableCommand {
    @Option(name: .shortAndLong)
    var port: Int = 8001

    @Argument
    var folder: String = "."

    func run() throws {
        let app = HBApplication(
            configuration: .init(
                address: .hostname("127.0.0.1", port: self.port),
                serverName: "swift-web"
            )
        )
        app.middleware.add(HBFileMiddleware(self.folder, application: app))
        app.middleware.add(HBLogRequestsMiddleware(.info))
        try app.start()
        app.wait()
    }
}

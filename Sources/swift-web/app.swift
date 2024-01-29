import ArgumentParser
import Hummingbird
import Logging

@main
struct WebServer: AsyncParsableCommand {
    @Option(name: .shortAndLong)
    var hostname: String = "127.0.0.1"

    @Option(name: .shortAndLong)
    var port: Int = 8001

    @Argument
    var folder: String = "."

    func run() async throws {
        let logger = Logger(label: "swift-web")
        let router = HBRouter()
        router.middlewares.add(HBFileMiddleware(self.folder, searchForIndexHtml: true, logger: logger))
        router.middlewares.add(HBLogRequestsMiddleware(.info))
        let app = HBApplication(
            router: router,
            configuration: .init(
                address: .hostname(self.hostname, port: self.port),
                serverName: "swift-web"
            ),
            logger: logger
        )
        try await app.runService()
    }
}

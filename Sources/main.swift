import Kitura
import HeliumLogger

//import CentralAPI

HeliumLogger.use()

let centralAPI = CentralAPI()

Kitura.addHTTPServer(onPort: 8099, with: centralAPI.router)

Kitura.run()

import Kitura
import HeliumLogger

import SuperTodoList

HeliumLogger.use()

let centralAPI = CentralAPI()

Kitura.addHTTPServer(onPort: 8099, with: centralAPI.router)

Kitura.run()

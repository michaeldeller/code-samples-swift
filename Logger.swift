//  Copyright 2022 Michael Deller
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//
//  https://developer.apple.com/documentation/os/logger
//
//  Logger.debug(message: "Strange things are afoot at the Circle K")

import os.log

struct Logger {
    static func error(message: String) {
        os_log("%s", type: .error, message)
    }

    static func info(message: String) {
        os_log("%s", type: .info, message)
    }

    static func debug(message: String) {
        os_log("%s", type: .debug, message)
    }
}


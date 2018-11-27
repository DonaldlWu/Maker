//
//  Maker.swift
//  Maker
//
//  Created by Maru on 2017/5/10.
//  Copyright © 2017年 Souche. All rights reserved.
//

import Foundation

let temple = "ZGlzYWJsZWRfcnVsZXM6ICMgcnVsZSBpZGVudGlmaWVycyB0byBleGNsdWRlIGZyb20gcnVubmluZwogIC0gY29sb24KICAtIGNvbW1hCiAgLSBjb250cm9sX3N0YXRlbWVudApvcHRfaW5fcnVsZXM6ICMgc29tZSBydWxlcyBhcmUgb25seSBvcHQtaW4KICAtIGVtcHR5X2NvdW50CiAgIyBGaW5kIGFsbCB0aGUgYXZhaWxhYmxlIHJ1bGVzIGJ5IHJ1bm5pbmc6CiAgIyBzd2lmdGxpbnQgcnVsZXMKaW5jbHVkZWQ6ICMgcGF0aHMgdG8gaW5jbHVkZSBkdXJpbmcgbGludGluZy4gYC0tcGF0aGAgaXMgaWdub3JlZCBpZiBwcmVzZW50LgogIC0gU291cmNlCmV4Y2x1ZGVkOiAjIHBhdGhzIHRvIGlnbm9yZSBkdXJpbmcgbGludGluZy4gVGFrZXMgcHJlY2VkZW5jZSBvdmVyIGBpbmNsdWRlZGAuCiAgLSBDYXJ0aGFnZQogIC0gUG9kcwogIC0gU291cmNlL0V4Y2x1ZGVkRm9sZGVyCiAgLSBTb3VyY2UvRXhjbHVkZWRGaWxlLnN3aWZ0CiAgLSBTb3VyY2UvKi9FeGNsdWRlZEZpbGUuc3dpZnQgIyBFeGNsdWRlIGZpbGVzIHdpdGggYSB3aWxkY2FyZAphbmFseXplcl9ydWxlczogIyBSdWxlcyBydW4gYnkgYHN3aWZ0bGludCBhbmFseXplYCAoZXhwZXJpbWVudGFsKQogIC0gZXhwbGljaXRfc2VsZgoKIyBjb25maWd1cmFibGUgcnVsZXMgY2FuIGJlIGN1c3RvbWl6ZWQgZnJvbSB0aGlzIGNvbmZpZ3VyYXRpb24gZmlsZQojIGJpbmFyeSBydWxlcyBjYW4gc2V0IHRoZWlyIHNldmVyaXR5IGxldmVsCmZvcmNlX2Nhc3Q6IHdhcm5pbmcgIyBpbXBsaWNpdGx5CmZvcmNlX3RyeToKICBzZXZlcml0eTogd2FybmluZyAjIGV4cGxpY2l0bHkKIyBydWxlcyB0aGF0IGhhdmUgYm90aCB3YXJuaW5nIGFuZCBlcnJvciBsZXZlbHMsIGNhbiBzZXQganVzdCB0aGUgd2FybmluZyBsZXZlbAojIGltcGxpY2l0bHkKbGluZV9sZW5ndGg6IDExMAojIHRoZXkgY2FuIHNldCBib3RoIGltcGxpY2l0bHkgd2l0aCBhbiBhcnJheQp0eXBlX2JvZHlfbGVuZ3RoOgogIC0gMzAwICMgd2FybmluZwogIC0gNDAwICMgZXJyb3IKIyBvciB0aGV5IGNhbiBzZXQgYm90aCBleHBsaWNpdGx5CmZpbGVfbGVuZ3RoOgogIHdhcm5pbmc6IDUwMAogIGVycm9yOiAxMjAwCiMgbmFtaW5nIHJ1bGVzIGNhbiBzZXQgd2FybmluZ3MvZXJyb3JzIGZvciBtaW5fbGVuZ3RoIGFuZCBtYXhfbGVuZ3RoCiMgYWRkaXRpb25hbGx5IHRoZXkgY2FuIHNldCBleGNsdWRlZCBuYW1lcwp0eXBlX25hbWU6CiAgbWluX2xlbmd0aDogNCAjIG9ubHkgd2FybmluZwogIG1heF9sZW5ndGg6ICMgd2FybmluZyBhbmQgZXJyb3IKICAgIHdhcm5pbmc6IDQwCiAgICBlcnJvcjogNTAKICBleGNsdWRlZDogaVBob25lICMgZXhjbHVkZWQgdmlhIHN0cmluZwppZGVudGlmaWVyX25hbWU6CiAgbWluX2xlbmd0aDogIyBvbmx5IG1pbl9sZW5ndGgKICAgIGVycm9yOiA0ICMgb25seSBlcnJvcgogIGV4Y2x1ZGVkOiAjIGV4Y2x1ZGVkIHZpYSBzdHJpbmcgYXJyYXkKICAgIC0gaWQKICAgIC0gVVJMCiAgICAtIEdsb2JhbEFQSUtleQpyZXBvcnRlcjogInhjb2RlIiAjIHJlcG9ydGVyIHR5cGUgKHhjb2RlLCBqc29uLCBjc3YsIGNoZWNrc3R5bGUsIGp1bml0LCBodG1sLCBlbW9qaSwgc29uYXJxdWJlKQ=="

enum OutputType {

    case error
    case standard
}

enum ParameterType: String {

    case swiftlintyml = "y"
    case podfile = "p"
    case unkown

    init(raw: String) {
        switch raw {
        case "y":
            self = .swiftlintyml
            break
        case "p":
            self = .podfile
        default:
            self = .unkown
            break
        }
    }
}

final class ConsoleIO {

    func fetchOption(value: String) -> (option: ParameterType, value: String) {
        return (ParameterType(raw: value), value)
    }

    func logUsage() {

        let executableName = (CommandLine.arguments[0] as NSString).lastPathComponent
        print("Maker Usage:")
        print("🤡 🤡 🤡 🤡 🤡 🤡 🤡 🤡 🤡 🤡 🤡 🤡 🤡 🤡 🤡 🤡 🤡 🤡 🤡 🤡 🤡 🤡 🤡 🤡 🤡 🤡 🤡 🤡 🤡")
        print("\(executableName) -y: aotocreate a .swiftlint.yml file with template")
        print("\(executableName) -p: autocreate a Podfile file with template")
        print("❤️ ❤️ ❤️ ❤️ ❤️ ❤️ ❤️ ❤️ ❤️ ❤️ ❤️ ❤️ ❤️ ❤️ ❤️ ❤️ ❤️ ❤️ ❤️ ❤️❤️ ❤️ ❤️ ❤️ ❤️ ❤️ ❤️ ❤️ ❤️")
        print("Enjoy your coding time!")

    }

    func write(message: String, to: OutputType = .standard) {

        switch to {
        case .standard:
            print("\u{001B}[;m\(message)")
        case .error:
            fputs("\u{001B}[0;31m\(message)\n", stderr)
        }
    }
}

final class Maker {

    let consoleIO = ConsoleIO()

    // MARK: - Public Method

    func staticMode() {

        let argCount = CommandLine.argc
        let argument = CommandLine.arguments[1]
        let index = argument.index(argument.startIndex, offsetBy: 1)

        guard argCount == 2 else {
            consoleIO.write(message: "Sorry! you input invaild params count.", to: .error)
            return
        }

        let (param, _) = consoleIO.fetchOption(value: String(argument[index...]))
        switch param {
        case .podfile:
            createPodFile()
            break
        case .swiftlintyml:
            createYML()
            break
        default:
            consoleIO.write(message: "Sorry! you input unrecognized params")
        }
    }
}

extension Maker {

    // MARK: - Business Logic

    fileprivate func createYML() {

        let currentPath = FileManager.default.currentDirectoryPath

        if FileManager.default.createFile(atPath: "\(currentPath)/.swiftlint.yml", contents: Data(base64Encoded: temple), attributes: nil) {
            consoleIO.write(message: "create .swiftlint.yml success.", to: .standard)
        }else {
            consoleIO.write(message: "create .swiftlint.yml fail.", to: .error)
        }
    }

    fileprivate func createPodFile() {
        consoleIO.write(message: "Sorry! Not support yet.", to: .error)
    }
}

//
//  Data+.swift
//  ModelsTest
//
//  Created by Taryn Hovenkamp on 10/2/22.
//

import Foundation

extension Data {
    static func fromJSONFile(forName activity: String) -> Data? {
        do {
            if let bundlePath = Bundle.main.path(forResource: activity, ofType: "json"),
               let jsonData = try String(contentsOfFile: bundlePath).data(using: .utf8) {
                return jsonData
            }
        } catch {
            print("Couldn't read JSON file.", error)
        }

        return nil
    }
}

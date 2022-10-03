//
//  Activity.swift
//  ModelsTest
//
//  Created by Taryn Hovenkamp on 10/2/22.
//

import Foundation

struct Activity: Codable {
    var activity: String
    var type: String
    var participants: Int

    static var randomActivity: Activity? {
        Activity.fromJSON(named: "randomActivity")
    }

    static func fromJSON(named activity: String) -> Activity? {
        if let data = Data.fromJSONFile(forName: activity) {
            let decoder = JSONDecoder()
            do {
                let randomActivity = try decoder.decode(Activity.self, from: data)
                return randomActivity
            } catch {
                print("Could not get a random activity from data.", error.localizedDescription)
            }
        }
        return nil
    }
}

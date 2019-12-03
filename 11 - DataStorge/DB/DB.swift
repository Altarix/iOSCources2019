//
//  DB.swift
//  DB
//
//  Created by Sergey Balalaev on 02.12.2019.
//  Copyright © 2019 Altarix. All rights reserved.
//

import Foundation
import RealmSwift

enum RealmFile : String {
    case file = "file.realm"
}

class DB {
    
    static let shared = DB()

    let realm : Realm
    
    
    
    static var fileManager: FileManager = {
        return FileManager.default
    }()
    
    static var documentDirectoryURL: URL = {
        return fileManager.urls(for: .documentDirectory, in: .userDomainMask).first!
    }()
    
    public static func openRealm(_ file: RealmFile) -> Realm {
        var realm: Realm? = nil
        let realmURL = documentDirectoryURL.appendingPathComponent(file.rawValue, isDirectory: false)
        let configuration = realmConfiguration(fileURL: realmURL)
        do {
            realm = try Realm(configuration: configuration)
        } catch let error as NSError {
            print(error)
            removeOldFilesFromRealmAtURL(realmURL: realmURL)
            realm = try! Realm(configuration: realmConfiguration(fileURL: realmURL))
        }
        return realm!
    }
    
    init() {
        self.realm = Self.openRealm(.file)
    }
    
    private static func realmConfiguration(fileURL: URL) -> Realm.Configuration {
        let result = Realm.Configuration(
            fileURL: fileURL,
            inMemoryIdentifier: nil,
            encryptionKey: nil,
            readOnly: false,
            schemaVersion: 404,
            migrationBlock: nil,
            deleteRealmIfMigrationNeeded: false,
            objectTypes: nil)
        return result
    }
    
    private static  func removeOldFilesFromRealmAtURL(realmURL: URL) {
        let directory = realmURL.deletingLastPathComponent()
        let fileName = realmURL.deletingPathExtension().lastPathComponent
        do {
            let existFiles = try fileManager.contentsOfDirectory(
                at: directory,
                includingPropertiesForKeys: nil)
                .filter({
                    return $0.lastPathComponent.hasPrefix(fileName as String)
                })
            for oldFile in existFiles {
                try fileManager.removeItem(at: oldFile)
            }
        }
        catch let error as NSError {
            print(error)
        }
    }
}

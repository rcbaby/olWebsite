//
//  Post.swift
//  App
//
//  Created by Zach Eriksen on 10/23/19.
//

import FluentSQLite
import Vapor
import Authentication

final class PostItem: SQLiteModel {
    var id: Int?
    let title: String
    let description: String
    let author: User.ID
    let tags: String
    let url: String
    let content: String
    
    init(id: Int? = nil,
         title: String,
         description: String,
         author: User.ID,
         tags: String,
<<<<<<< HEAD
         url: String,
         content: String) {
        self.id = id
        self.title = title
        self.description = description
        self.author = author
        self.tags = tags
        .replacingOccurrences(of: " ,", with:",")
        .replacingOccurrences(of: ", ", with: ",")
        .split(separator: ",")
        .map { String($0) }
        self.url = url
        self.content = content
    }

    init(id: Int? = nil,
         title: String,
         description: String,
         author: User.ID,
         tags: [String],
=======
>>>>>>> 0b51715e508d936f79d6feed4ae31e7b5956cb89
         url: String,
         content: String) {
        self.id = id
        self.title = title
        self.description = description
        self.author = author
        self.tags = tags
        self.url = url
        self.content = content
    }
}

extension PostItem: Content {}
extension PostItem: Migration {}

extension PostItem: Parameter {
    typealias ResolvedParameter = String
    
    static func resolveParameter(_ parameter: String,
                                 on container: Container) throws -> ImageUpload.ResolvedParameter {
        return parameter
    }
}

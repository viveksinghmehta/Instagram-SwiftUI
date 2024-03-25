//
//  PostModel.swift
//  Instagram
//
//  Created by Vivek Singh Mehta on 24/03/24.
//

import Foundation

struct PostModel: Identifiable, Hashable, Codable {
    let id: String
    let ownerUid: String
    var caption: String?
    var likes: Int
    let imageUrl: String
    let timeStamp: Date
    var user: UserModel?
}

extension PostModel {
    static let MOCK_POSTS: [PostModel] = [
        .init(id: UUID().uuidString, ownerUid: UUID().uuidString, caption: nil, likes: 23, imageUrl: ImageUrl.getRandomImage(), timeStamp: Date(), user: UserModel.MOCK_USERS[3]),
        .init(id: UUID().uuidString, ownerUid: UUID().uuidString, caption: nil, likes: 53, imageUrl: ImageUrl.getRandomImage(), timeStamp: Date(), user: UserModel.MOCK_USERS[2]),
        .init(id: UUID().uuidString, ownerUid: UUID().uuidString, caption: nil, likes: 13, imageUrl: ImageUrl.getRandomImage(), timeStamp: Date(), user: UserModel.MOCK_USERS[1]),
        .init(id: UUID().uuidString, ownerUid: UUID().uuidString, caption: nil, likes: 23, imageUrl: ImageUrl.getRandomImage(), timeStamp: Date(), user: UserModel.MOCK_USERS[3]),
        .init(id: UUID().uuidString, ownerUid: UUID().uuidString, caption: nil, likes: 29, imageUrl: ImageUrl.getRandomImage(), timeStamp: Date(), user: UserModel.MOCK_USERS[0]),
        .init(id: UUID().uuidString, ownerUid: UUID().uuidString, caption: nil, likes: 234, imageUrl: ImageUrl.getRandomImage(), timeStamp: Date(), user: UserModel.MOCK_USERS[2])
    ]
}

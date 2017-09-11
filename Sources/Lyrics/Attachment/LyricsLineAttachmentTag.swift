//
//  LyricsLineAttachmentTag.swift
//
//  This file is part of LyricsX
//  Copyright (C) 2017  Xander Deng
//
//  This program is free software: you can redistribute it and/or modify
//  it under the terms of the GNU General Public License as published by
//  the Free Software Foundation, either version 3 of the License, or
//  (at your option) any later version.
//
//  This program is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//  GNU General Public License for more details.
//
//  You should have received a copy of the GNU General Public License
//  along with this program.  If not, see <http://www.gnu.org/licenses/>.
//

import Foundation

public struct LyricsLineAttachmentTag: RawRepresentable {
    
    public var rawValue: String
    
    public init(_ rawValue: String) {
        self.rawValue = rawValue
    }
    
    public init(rawValue: String) {
        self.init(rawValue)
    }
    
    static let translation: LyricsLineAttachmentTag = "tr"
    static let timetag: LyricsLineAttachmentTag = "tt"
    static let furigana: LyricsLineAttachmentTag = "fu"
    static let romaji: LyricsLineAttachmentTag = "ro"
    
    static func translation(languageCode: String) -> LyricsLineAttachmentTag {
        if languageCode.isEmpty {
            return .init("tr")
        } else {
            return .init("tr:" + languageCode)
        }
    }
}

extension LyricsLineAttachmentTag: Equatable, Hashable {
    
    public var hashValue: Int {
        return rawValue.hashValue
    }
    
    public static func ==(lhs: LyricsLineAttachmentTag, rhs: LyricsLineAttachmentTag) -> Bool {
        return lhs.hashValue == rhs.hashValue
    }
}

extension LyricsLineAttachmentTag: ExpressibleByStringLiteral {
    
    public init(stringLiteral value: String) {
        self.init(value)
    }
}

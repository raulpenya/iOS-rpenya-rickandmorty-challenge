//
//  String+Extensions.swift
//  Data
//
//  Created by raulbot on 5/3/23.
//

import Foundation
@testable import Data

extension String {
    static func getCharactersPageSuccessResponse() -> String {
        return "{\"info\":{\"count\":826,\"pages\":42,\"next\":null,\"prev\":\"https://rickandmortyapi.com/api/character/?page=41\"},\"results\":[{\"id\":821,\"name\":\"Gotron\",\"status\":\"unknown\",\"species\":\"Robot\",\"type\":\"FerretRobot\",\"gender\":\"Genderless\",\"origin\":{\"name\":\"Earth(ReplacementDimension)\",\"url\":\"https://rickandmortyapi.com/api/location/20\"},\"location\":{\"name\":\"Earth(ReplacementDimension)\",\"url\":\"https://rickandmortyapi.com/api/location/20\"},\"image\":\"https://rickandmortyapi.com/api/character/avatar/821.jpeg\",\"episode\":[\"https://rickandmortyapi.com/api/episode/48\"],\"url\":\"https://rickandmortyapi.com/api/character/821\",\"created\":\"2021-11-02T17:15:24.788Z\"},{\"id\":822,\"name\":\"YoungJerry\",\"status\":\"unknown\",\"species\":\"Human\",\"type\":\"\",\"gender\":\"Male\",\"origin\":{\"name\":\"Earth(Unknowndimension)\",\"url\":\"https://rickandmortyapi.com/api/location/30\"},\"location\":{\"name\":\"Earth(Unknowndimension)\",\"url\":\"https://rickandmortyapi.com/api/location/30\"},\"image\":\"https://rickandmortyapi.com/api/character/avatar/822.jpeg\",\"episode\":[\"https://rickandmortyapi.com/api/episode/51\"],\"url\":\"https://rickandmortyapi.com/api/character/822\",\"created\":\"2021-11-02T17:18:31.934Z\"}]}"
    }
    
    static func getCharacterSuccessResponse() -> String {
        return "{\"id\":2,\"name\":\"MortySmith\",\"status\":\"Alive\",\"species\":\"Human\",\"type\":\"\",\"gender\":\"Male\",\"origin\":{\"name\":\"unknown\",\"url\":\"\"},\"location\":{\"name\":\"CitadelofRicks\",\"url\":\"https://rickandmortyapi.com/api/location/3\"},\"image\":\"https://rickandmortyapi.com/api/character/avatar/2.jpeg\",\"episode\":[\"https://rickandmortyapi.com/api/episode/1\",\"https://rickandmortyapi.com/api/episode/2\",\"https://rickandmortyapi.com/api/episode/3\",\"https://rickandmortyapi.com/api/episode/4\",\"https://rickandmortyapi.com/api/episode/5\",\"https://rickandmortyapi.com/api/episode/6\",\"https://rickandmortyapi.com/api/episode/7\",\"https://rickandmortyapi.com/api/episode/8\",\"https://rickandmortyapi.com/api/episode/9\",\"https://rickandmortyapi.com/api/episode/10\",\"https://rickandmortyapi.com/api/episode/11\",\"https://rickandmortyapi.com/api/episode/12\",\"https://rickandmortyapi.com/api/episode/13\",\"https://rickandmortyapi.com/api/episode/14\",\"https://rickandmortyapi.com/api/episode/15\",\"https://rickandmortyapi.com/api/episode/16\",\"https://rickandmortyapi.com/api/episode/17\",\"https://rickandmortyapi.com/api/episode/18\",\"https://rickandmortyapi.com/api/episode/19\",\"https://rickandmortyapi.com/api/episode/20\",\"https://rickandmortyapi.com/api/episode/21\",\"https://rickandmortyapi.com/api/episode/22\",\"https://rickandmortyapi.com/api/episode/23\",\"https://rickandmortyapi.com/api/episode/24\",\"https://rickandmortyapi.com/api/episode/25\",\"https://rickandmortyapi.com/api/episode/26\",\"https://rickandmortyapi.com/api/episode/27\",\"https://rickandmortyapi.com/api/episode/28\",\"https://rickandmortyapi.com/api/episode/29\",\"https://rickandmortyapi.com/api/episode/30\",\"https://rickandmortyapi.com/api/episode/31\",\"https://rickandmortyapi.com/api/episode/32\",\"https://rickandmortyapi.com/api/episode/33\",\"https://rickandmortyapi.com/api/episode/34\",\"https://rickandmortyapi.com/api/episode/35\",\"https://rickandmortyapi.com/api/episode/36\",\"https://rickandmortyapi.com/api/episode/37\",\"https://rickandmortyapi.com/api/episode/38\",\"https://rickandmortyapi.com/api/episode/39\",\"https://rickandmortyapi.com/api/episode/40\",\"https://rickandmortyapi.com/api/episode/41\",\"https://rickandmortyapi.com/api/episode/42\",\"https://rickandmortyapi.com/api/episode/43\",\"https://rickandmortyapi.com/api/episode/44\",\"https://rickandmortyapi.com/api/episode/45\",\"https://rickandmortyapi.com/api/episode/46\",\"https://rickandmortyapi.com/api/episode/47\",\"https://rickandmortyapi.com/api/episode/48\",\"https://rickandmortyapi.com/api/episode/49\",\"https://rickandmortyapi.com/api/episode/50\",\"https://rickandmortyapi.com/api/episode/51\"],\"url\":\"https://rickandmortyapi.com/api/character/2\",\"created\":\"2017-11-04T18:50:21.651Z\"}"
    }
    
    static func getErrorResponse() -> String {
        return "404 Bad request"
    }
    
    static func getEmptyResponse() -> String {
        return ""
    }
}

//
//  specmodel.swift
//  SampleResearchKit
//
//  Created by Eslam Abotaleb on 04/11/2021.
//  Copyright © 2021 AppCoda. All rights reserved.
//

import Foundation
struct SpeciesInfo: Codable {
    let species: [Species]
}
struct Species: Codable {
    
    let name: String
    
    let info: Info //<-
    
    struct Info: Codable { //<-
        let family: String
        let iNatLink: String
        let WikipediaLink: String
        let otherName: String
    }
}

//
//   SurveyExtensions.swift
//  SampleResearchKit
//
//  Created by Eslam Abotaleb on 04/11/2021.
//  Copyright © 2021 AppCoda. All rights reserved.
//

import Foundation
extension ORKTextAnswerFormat {
    public convenience init(maxLength: Int, multiLine: Bool) {
        self.init(maximumLength: maxLength)
        self.multipleLines = multiLine
    }
}
//
//extension ORKEmailAnswerFormat {
//    public convenience init(title: String, multiLine: Bool) {
//            
//    }
//}


extension ORKCompletionStep {
    public convenience init(identifier: String, title: String, text: String) {
        self.init(identifier: identifier)
        self.title = title
        self.text = text
    }
}


extension ORKQuestionStep {
    public convenience init(identifier: String, title: String, text: String) {
        self.init(identifier: identifier)
        self.title = title
        self.text = text
    }
}




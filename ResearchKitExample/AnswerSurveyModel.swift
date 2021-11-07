// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let answersSurveyModel = try? newJSONDecoder().decode(AnswersSurveyModel.self, from: jsonData)

import Foundation

// MARK: - AnswersSurveyModel
struct AnswersSurveyModel: Codable {
    let endDate: Date
    let results: [AnswersSurveyModelResult]
    let answersSurveyModelClass: String
    let startDate: Date
    let taskRunUUID, identifier: String

    enum CodingKeys: String, CodingKey {
        case endDate, results
        case answersSurveyModelClass
        case startDate, taskRunUUID, identifier
    }
}

// MARK: - AnswersSurveyModelResult
struct AnswersSurveyModelResult: Codable {
    let results: [ResultResult]
    let resultClass: PurpleClass
    let startDate: Date
    let identifier: String
    let endDate: Date

    enum CodingKeys: String, CodingKey {
        case results
        case resultClass
        case startDate, identifier, endDate
    }
}

enum PurpleClass: String, Codable {
    case orkStepResult = "ORKStepResult"
}

// MARK: - ResultResult
struct ResultResult: Codable {
    let questionType: Int
    let choiceAnswers: [String]?
    let resultClass: FluffyClass
    let startDate: Date
    let identifier: String
    let endDate: Date
    let textAnswer: String?
    let timeZone: Int?
    let dateAnswer: Date?
    let calendar, unit: String?
    let numericAnswer: Int?

    enum CodingKeys: String, CodingKey {
        case questionType, choiceAnswers
        case resultClass
        case startDate, identifier, endDate, textAnswer, timeZone, dateAnswer, calendar, unit, numericAnswer
    }
}

enum FluffyClass: String, Codable {
    case orkChoiceQuestionResult = "ORKChoiceQuestionResult"
    case orkDateQuestionResult = "ORKDateQuestionResult"
    case orkNumericQuestionResult = "ORKNumericQuestionResult"
    case orkTextQuestionResult = "ORKTextQuestionResult"
}

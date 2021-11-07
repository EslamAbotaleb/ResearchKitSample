// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let answersSurveyModel = try? newJSONDecoder().decode(AnswersSurveyModel.self, from: jsonData)

import Foundation

// MARK: - AnswersSurveyModel
struct AnswersSurveyModel: Codable {
    let endDate: String?
    let results: [AnswersSurveyModelResult]?
    let answersSurveyModelClass: String?
    let startDate: String?
    let taskRunUUID, identifier: String?

    enum CodingKeys: String, CodingKey {
       case results, endDate, startDate
        case answersSurveyModelClass = "_class"
        case  taskRunUUID, identifier
    }
}

// MARK: - AnswersSurveyModelResult
struct AnswersSurveyModelResult: Codable {
    let results: [ResultResult]?
    let resultClass: PurpleClass?
    let startDate: String?
    let identifier: String?
    let endDate: String?

    enum CodingKeys: String, CodingKey {
        case results
        case resultClass = "_class"
        case startDate, identifier, endDate
    }
}

enum PurpleClass: String, Codable {
    case orkStepResult = "ORKStepResult"
}

// MARK: - ResultResult
struct ResultResult: Codable {
    let questionType: Int?
    let choiceAnswers: [String]?
    let resultClass: FluffyClass?
    let startDate: String?
    let identifier: String?
    let endDate: String?
    let textAnswer: String?
    let timeZone: Int?
    let dateAnswer: String?
    let calendar, unit: String?
    let numericAnswer: Int?

    enum CodingKeys: String, CodingKey {
        case questionType, choiceAnswers
        case resultClass = "_class"
        case startDate, identifier, endDate, textAnswer, timeZone, dateAnswer, calendar, unit, numericAnswer
    }
}

enum FluffyClass: String, Codable {
    case orkChoiceQuestionResult = "ORKChoiceQuestionResult"
    case orkDateQuestionResult = "ORKDateQuestionResult"
    case orkNumericQuestionResult = "ORKNumericQuestionResult"
    case orkTextQuestionResult = "ORKTextQuestionResult"
}


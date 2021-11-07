import Foundation

// MARK: - QuestionsSurveyModel
struct QuestionsSurveyModel: Codable {
    let questions: [Question]
    let submit: Submit
    let autoFocusText: Bool

    enum CodingKeys: String, CodingKey {
        case questions, submit
        case autoFocusText = "auto_focus_text"
    }
}

// MARK: - Question
struct Question: Codable {
    let id: String?
    let header: String?
    let answers: [Answer]?
    let question, questionType: String?
    let options: [OptionElement]?
    let maxYear, numYears, initialYear, sortOrder: String?
    let subQuestions: [SubQuestion]?
    let label, inputType, maxChars: String?
    let validations: [Validation]?
    let showIf: QuestionShowIf?
    let labelOptions: [LabelOption]?
    let optionsMetadata: OptionsMetadata?
    let lowTag, highTag: String?
    let values: [String]?
    let tableQuestions: [TableQuestion]?
    let date, maxDate: String?
    let dateDiff: DateDiff?
    let fields: [Field]?

    enum CodingKeys: String, CodingKey {
        case id, header, question
        case questionType = "question_type"
        case options
        case answers
        case maxYear = "max_year"
        case numYears = "num_years"
        case initialYear = "initial_year"
        case sortOrder = "sort_order"
        case subQuestions = "sub_questions"
        case label
        case inputType = "input_type"
        case maxChars = "max_chars"
        case validations
        case showIf = "show_if"
        case labelOptions = "label_options"
        case optionsMetadata = "options_metadata"
        case lowTag = "low_tag"
        case highTag = "high_tag"
        case values
        case tableQuestions = "table_questions"
        case date
        case maxDate = "max_date"
        case dateDiff = "date_diff"
        case fields
    }
}

// MARK: - DateDiff
struct DateDiff: Codable {
    let year: Int
}

// MARK: - Field
struct Field: Codable {
    let label, inputType: String

    enum CodingKeys: String, CodingKey {
        case label
        case inputType = "input_type"
    }
}

enum LabelOption: Codable {
    case string(String)
    case stringArray([String])

    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let x = try? container.decode([String].self) {
            self = .stringArray(x)
            return
        }
        if let x = try? container.decode(String.self) {
            self = .string(x)
            return
        }
        throw DecodingError.typeMismatch(LabelOption.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for LabelOption"))
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .string(let x):
            try container.encode(x)
        case .stringArray(let x):
            try container.encode(x)
        }
    }
}

enum OptionElement: Codable {
    case optionClass(OptionClass)
    case string(String)

    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let x = try? container.decode(String.self) {
            self = .string(x)
            return
        }
        if let x = try? container.decode(OptionClass.self) {
            self = .optionClass(x)
            return
        }
        throw DecodingError.typeMismatch(OptionElement.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for OptionElement"))
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .optionClass(let x):
            try container.encode(x)
        case .string(let x):
            try container.encode(x)
        }
    }
}

// MARK: - OptionClass
struct OptionClass: Codable {
    let title, type: String
    let validations: [Validation]?
}

// MARK: - Validation
struct Validation: Codable {
    let operation: Operation
    let value: Int?
    let onFailMessage: String
    let answerToQuestionID, forLabel: String?

    enum CodingKeys: String, CodingKey {
        case operation, value
        case onFailMessage = "on_fail_message"
        case answerToQuestionID = "answer_to_question_id"
        case forLabel = "for_label"
    }
}

enum Operation: String, Codable {
    case greaterThan = "greater than"
    case lessThan = "less than"
    case lessThanOrEqualTo = "less than or equal to"
}

// MARK: - OptionsMetadata
struct OptionsMetadata: Codable {
    let id: String
    let types: [String]
}

// MARK: - QuestionShowIf
struct QuestionShowIf: Codable {
    let ids: [String]?
    let operation: String
    let extra: Extra?
    let id, value: String?
    let subconditions: [Subcondition]?
}

// MARK: - Extra
struct Extra: Codable {
    let id: String
    let wiggleRoom: Int

    enum CodingKeys: String, CodingKey {
        case id
        case wiggleRoom = "wiggle_room"
    }
}

// MARK: - Subcondition
struct Subcondition: Codable {
    let operation: String
    let subconditions: [ShowIfElement]
}

// MARK: - ShowIfElement
struct ShowIfElement: Codable {
    let id: String
    let subid: String?
    let operation, value: String
}

// MARK: - SubQuestion
struct SubQuestion: Codable {
    let id, question, questionType, inputType: String
    let showIf: ShowIfElement

    enum CodingKeys: String, CodingKey {
        case id, question
        case questionType = "question_type"
        case inputType = "input_type"
        case showIf = "show_if"
    }
}

// MARK: - TableQuestion
struct TableQuestion: Codable {
    let title, id: String
}

// MARK: - Submit
struct Submit: Codable {
    let buttonTitle: String
    let url: String

    enum CodingKeys: String, CodingKey {
        case buttonTitle = "button_title"
        case url
    }
}
struct Answer: Codable {
    let value: String?
    enum CodingKeys: String, CodingKey {
    case value = "value"
    }

}

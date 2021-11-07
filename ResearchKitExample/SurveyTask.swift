//
//  SurveyTask.swift
//  SampleResearchKit

import Foundation
import ResearchKit
//ORKOrderedTask
public var SurveyTask: ORKOrderedTask {
    
    var steps = [ORKStep]()
    func json(from object:Any) -> String? {
        guard let data = try? JSONSerialization.data(withJSONObject: object, options: []) else {
            return nil
        }
        return String(data: data, encoding: String.Encoding.utf8)
    }
    var surveyQuestionAns = [ORKQuestionStep]()

    var questionItem: [Question]?
    if let path = Bundle.main.path(forResource: "examplequestion", ofType: "json") {
        do {
              let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)

            let questionSurvey = try? JSONDecoder().decode(QuestionsSurveyModel.self, from: data)

          questionItem =  questionSurvey?.questions

            questionItem?.forEach({ questionObject in
                if questionObject.questionType == "single_select" {
                    let questQuestionStepTitle = questionObject.question!
                                      var textChoices = [ORKTextChoice]()
                    for (_, ans) in questionObject.answers!.enumerated() {
                        textChoices.append(ORKTextChoice(text: ans.value! , value: ans.value!  as NSCoding & NSCopying & NSObjectProtocol))
                                      }
                                      let questAnswerFormat: ORKTextChoiceAnswerFormat = ORKAnswerFormat.choiceAnswerFormat(with: .singleChoice, textChoices: textChoices)
                    let questQuestionStep = ORKQuestionStep(identifier: questionObject.id!, title: questQuestionStepTitle, answer: questAnswerFormat)
                    surveyQuestionAns += [questQuestionStep]
                    
                } else if questionObject.questionType == "multi_select" {

                    let questQuestionStepTitlemultiple = questionObject.question
                    var textChoicesmultiple = [ORKTextChoice]()
                    for (_, ans) in  questionObject.answers!.enumerated() {
                        textChoicesmultiple.append(ORKTextChoice(text: ans.value!, value: ans.value! as NSCoding & NSCopying & NSObjectProtocol))
                    }

                    let questAnswerFormatAnswer: ORKTextChoiceAnswerFormat = ORKAnswerFormat.choiceAnswerFormat(with: .multipleChoice, textChoices: textChoicesmultiple)
                    let questQuestionStepAnswer = ORKQuestionStep(identifier:  questionObject.id!, title: questQuestionStepTitlemultiple, answer: questAnswerFormatAnswer)
                    surveyQuestionAns += [questQuestionStepAnswer]
                    
                } else if (questionObject.questionType == "year_picker") {
                    
                    let nameAnswerFormat = ORKDateAnswerFormat.dateAnswerFormat()
                    let nameQuestionStepTitle =  questionObject.question!
                    let nameQuestionStep = ORKQuestionStep(identifier: questionObject.id!, title: nameQuestionStepTitle, answer: nameAnswerFormat)
                    surveyQuestionAns += [nameQuestionStep]
                    
                    
                } else if (questionObject.questionType == "single_text_field") {
                    
                    let questQuestionStepTitleage = questionObject.question
                    
                    let ageAnswer = ORKNumericAnswerFormat.integerAnswerFormat(withUnit: "years")
                    ageAnswer.minimum = 18
                    ageAnswer.maximum = 85
                    let ageQuestionStep = ORKQuestionStep(identifier: questionObject.id!, title: questQuestionStepTitleage, answer: ageAnswer)
                    surveyQuestionAns += [ageQuestionStep]
                } else if (questionObject.questionType == "date_picker") {
                    let dateFormat = ORKDateAnswerFormat.dateAnswerFormat()
                    let nameQuestionStepTitle =  questionObject.question!
                    let nameQuestionStep = ORKQuestionStep(identifier: questionObject.id!, title: nameQuestionStepTitle, answer: dateFormat)
                    surveyQuestionAns += [nameQuestionStep]
                } else {
                    let nameAnswerFormat = ORKTextAnswerFormat()
                    nameAnswerFormat.multipleLines = true
                    let nameQuestionStepTitle =  questionObject.question!
                    let nameQuestionStep = ORKQuestionStep(identifier: questionObject.id!, title: nameQuestionStepTitle, answer: nameAnswerFormat)
                    surveyQuestionAns += [nameQuestionStep]
                }
  
            })
          } catch {
          }
    }
    

    //Introduction
    let instructionStep = ORKInstructionStep(identifier: "IntroStep")
    instructionStep.title = "Test Survey"
    instructionStep.text = "Answer three questions to complete the survey."

    
    //Summary
    let completionStep = ORKCompletionStep(identifier: "SummaryStep")
    completionStep.title = "Thank You!!"
    completionStep.text = "You have completed the survey"
  
    steps += surveyQuestionAns
    steps += [completionStep]

    
    return ORKOrderedTask(identifier: "SurveyTask", steps: steps)
 
}

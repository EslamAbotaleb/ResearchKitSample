//
//  hardcodedquestionsurvay.swift
//  SampleResearchKit
//
//  Created by Eslam Abotaleb on 06/11/2021.
//  Copyright © 2021 AppCoda. All rights reserved.
//
//hardcoded questions
import Foundation

//                  else if type == "select_number" {
//                      var textChoices = [ORKTextChoice]()
//                      let range = queAns.range!.split(separator: "-")
//                      let from = Int(range[0])!
//                      let to = Int(range[1])!
//                      for i in from...to {
//                          textChoices.append(ORKTextChoice(text: String(i), value: i as NSCoding & NSCopying & NSObjectProtocol))
//                      }
//                      let nameAnswerFormat = ORKValuePickerAnswerFormat(textChoices: textChoices)
//                      let nameQuestionStepTitle = queAns?.header!
//                      let nameQuestionStep = ORKQuestionStep(identifier: queAns!.id!, title: nameQuestionStepTitle, answer: nameAnswerFormat)
//                      surveyQuestionAns += [nameQuestionStep]
//                  }
//                  else if type == "ranking" {
//                      var textChoices = [ORKTextChoice]()
//                      for (_, ans) in queAns?.options.enumerated() {
//                          textChoices.append(ORKTextChoice(text: queAns, value: ans.body! as NSCoding & NSCopying & NSObjectProtocol))
//                      }
//                      let nameAnswerFormat = ORKValuePickerAnswerFormat(textChoices: textChoices)
//                      let nameQuestionStepTitle = queAns?.header!
//                      let nameQuestionStep = ORKQuestionStep(identifier: queAns!.id!, title: nameQuestionStepTitle, answer: nameAnswerFormat)
//                      surveyQuestionAns += [nameQuestionStep]
//                  }
//}
//    //Text Input Question
//    let nameAnswerFormat = ORKTextAnswerFormat(maximumLength: 20)
//    nameAnswerFormat.multipleLines = false
//    let nameQuestionStepTitle = questionItem?[0].question
//    let nameQuestionStep = ORKQuestionStep(identifier:questionItem![0].id!, title: nameQuestionStepTitle, answer: nameAnswerFormat)
//
//    let secondQuestion = questionItem?[1].question
//    let secondQuestionStep = ORKQuestionStep(identifier: questionItem![1].id!, title: secondQuestion, answer: nameAnswerFormat)
//
//    let happyQuestion = ORKQuestionStep(identifier: questionItem![2].id!,
//                                        title: questionItem![2].header,
//                                        text:questionItem![2].question!,
//                                        answer: ORKTextChoiceAnswerFormat(style: .singleChoice,
//                                                                          textChoices: [
//                                                                            ORKTextChoice(text: "Yes", value: NSNumber(integerLiteral: 0)),
//                                                                            ORKTextChoice(text: "Not really", value: NSNumber(integerLiteral: 1))]))
//
//
//
//
//    //Text Input Question
//    let nameAnswerFormatEmail =  ORKEmailAnswerFormat()
//    let nameQuestionStepTitleEmail = questionItem?[2].question
//    let nameQuestionStepEmail = ORKQuestionStep(identifier: "NameStepEmail", title: nameQuestionStepTitleEmail, answer: nameAnswerFormatEmail)
//
//
////    steps += [nameQuestionStepEmail]
//
//
//
//
//    //Image Input Question
//    let moodQuestion = "How do you feel today?"
//    let moodImages = [
//        (UIImage(named: "Happy")!, "Happy"),
//        (UIImage(named: "Angry")!, "Angry"),
//        (UIImage(named: "Sad")!, "Sad"),
//    ]
//
//    let moodChoice : [ORKImageChoice] = moodImages.map {
//        return ORKImageChoice(normalImage: $0.0, selectedImage: nil, text: $0.1, value: $0.1 as NSCoding & NSCopying & NSObjectProtocol)
//    }
//    let answerFormat: ORKImageChoiceAnswerFormat = ORKAnswerFormat.choiceAnswerFormat(with: moodChoice)
//    let moodQuestionStep = ORKQuestionStep(identifier: "MoodStep", title: moodQuestion, answer: answerFormat)
//    steps += [moodQuestionStep]
//
//
//
//    let moodQuestionText = "How do you feel today?"
//    let moodTextes = [
//        ( ORKTextChoice(text: "Fine", value: "1"   as NSCoding & NSCopying & NSObjectProtocol)),
//        ( ORKTextChoice(text: "Sad", value: "2"   as NSCoding & NSCopying & NSObjectProtocol)),
//        ( ORKTextChoice(text: "Happy", value: "3"   as NSCoding & NSCopying & NSObjectProtocol)),
//    ]
//
//    let moodChoiceTextFeel : [ORKTextChoice] = moodTextes
//    let answerFormatText: ORKTextChoiceAnswerFormat = ORKAnswerFormat.choiceAnswerFormat(with: ORKChoiceAnswerStyle.multipleChoice, textChoices: moodChoiceTextFeel)
//    let moodTextQuestionStep = ORKQuestionStep(identifier: "MoodStepToday", title: moodQuestionText, answer: answerFormatText)
//    steps += [moodTextQuestionStep]
//
//
//    //Numeric Input Question
//    let ageQuestion = "How old are you?"
//    let ageAnswer = ORKNumericAnswerFormat.integerAnswerFormat(withUnit: "years")
//    ageAnswer.minimum = 18
//    ageAnswer.maximum = 85
//    let ageQuestionStep = ORKQuestionStep(identifier: "AgeStep", title: ageQuestion, answer: ageAnswer)
//    steps += [ageQuestionStep]
//
//
//    let microphoneTask: ORKOrderedTask = {
//        let intendedUseDescription = "Everyone's voice has unique characteristics."
//        let speechInstruction = "After the countdown, say Aaaaaaaaaaah for as long as you can. You'll have 10 seconds."
//        let shortSpeechInstruction = "Say Aaaaaaaaaaah for as long as you can."
//
//        return ORKOrderedTask.audioTask(withIdentifier: "AudioTask", intendedUseDescription: intendedUseDescription, speechInstruction: speechInstruction, shortSpeechInstruction: shortSpeechInstruction, duration: 10, recordingSettings: nil, checkAudioLevel: false, options: ORKPredefinedTaskOption.excludeAccelerometer)
//    }()
//
//
//    //Boolean
//    let backgroundCheck = "Do you consent to a background check?"
//    let backgroundChoice = ORKBooleanAnswerFormat.booleanAnswerFormat()
//    let booleanstep = ORKQuestionStep(identifier: "booleanstep", title:backgroundCheck, answer: backgroundChoice)
//    steps += [booleanstep]
//
//    // Continuous question
//    let continuousAnswerFormat = ORKAnswerFormat.scale(withMaximumValue: 150, minimumValue: 30, defaultValue: 20, step: 10, vertical: false, maximumValueDescription: "Objects", minimumValueDescription: " ")
//    let continuousQuestionStepTitle = "How many objects are in Messier's catalog?"
//    let continuousQuestionStep = ORKQuestionStep(identifier: "ContinuousQuestionStep", title: continuousQuestionStepTitle, answer: continuousAnswerFormat)
//
//    steps += [continuousQuestionStep]
//    //ValuePicker
//    let textChoices = [
//        ORKTextChoice(text: "Yes", value: "Yes" as NSCoding & NSCopying & NSObjectProtocol),
//        ORKTextChoice(text: "No", value: "No" as NSCoding & NSCopying & NSObjectProtocol),
//        ORKTextChoice(text: "Not Sure", value: "NS" as NSCoding & NSCopying & NSObjectProtocol),
//    ]
//
//    let moodChoiceText : [ORKTextChoice] = textChoices
//
//
//    let valuePicker = "What is your blood type?"
//    let valuePickerSelect = ORKValuePickerAnswerFormat.valuePickerAnswerFormat(with: moodChoiceText)
//    let bloodQuetionStep = ORKQuestionStep(identifier: "MoodStepPicker", title: valuePicker, answer: valuePickerSelect)
//    steps += [bloodQuetionStep]
//
//    let pickColor =  "What time do you get up?"
//
//
//    let timeoffday = ORKAnswerFormat.timeOfDayAnswerFormat()
//    let timeOffDayQuetionStep = ORKQuestionStep(identifier: "MoodStepTime", title: pickColor, answer: timeoffday)
//    steps += [timeOffDayQuetionStep]
//
//    // Date question
//    let today = NSDate()
//    let dateAnswerFormat = ORKAnswerFormat.dateAnswerFormat(withDefaultDate: nil, minimumDate: today as Date, maximumDate: nil, calendar: nil)
//    let dateQuestionStepTitle = "When is the next solar eclipse?"
//    let dateQuestionStep = ORKQuestionStep(identifier: "DateQuestionStep", title: dateQuestionStepTitle, answer: dateAnswerFormat)
//
//    steps += [dateQuestionStep]
//
//
//    let heightQuestion = ORKQuestionStep(identifier: "heightQuestionStep",
//                                         title: "Your Height",
//                                         text: "How tall are  you",
//                                         answer: ORKHeightAnswerFormat(measurementSystem: .metric))
//
//
//    steps += [heightQuestion]
//
//
//
//
//    let question1 = ORKFormItem(identifier: "question 1", text: "Have you ever been diagnosed with Softwareitis?", answerFormat: ORKAnswerFormat.booleanAnswerFormat())
//    let question2 = ORKFormItem(identifier: "question 2", text: "How many apps do you download per week?", answerFormat: ORKAnswerFormat.integerAnswerFormat(withUnit: "Apps per week"))
//    let question3 = ORKFormItem(identifier: "question 3", text: "Choice Answer Image?", answerFormat: ORKAnswerFormat.choiceAnswerFormat(with: moodChoice))
//
//    let question4 = ORKFormItem(identifier: "question 4", text: "HChoice Answer text?", answerFormat: ORKAnswerFormat.choiceAnswerFormat(with: .singleChoice, textChoices: textChoices))
//
//    let question5 = ORKFormItem(identifier: "question 5Eg", text: "Location?", answerFormat: ORKAnswerFormat.locationAnswerFormat())
//
//
//    //3
//    let formStep = ORKFormStep(identifier: "form step", title: "Softwareitis Survey", text: nil)
//    formStep.formItems = [question1, question2, question3, question4, question5]
//    //1
//    steps += [formStep]
//
//
//
//    let review = ORKReviewStep(identifier: "reviewStep")
//    steps += [review]
//
//
//    //
//    //     var currentResult: ORKResult? = ORKTaskResult()
//    //
//    //    print("currentResultcurrentResult\(currentResult)")
//
//
//
//
//    //    /x
//
//
//    //Breathing
//    let breathingStepTitle1 = "What of the following apply to your child's current breathing condition? (check all that apply)"
//    let breathingChoices = [
//        ORKTextChoice(text: "Home oxygen use", value: "Home oxygen use" as NSString),
//        ORKTextChoice(text: "Cystic fibrosis", value: "Cystic fibrosis" as NSString),
//        ORKTextChoice(text: "Chronic lung disease", value: "Chronic lung disease" as NSString),
//        ORKTextChoice(text: "Asthma", value: "Asthma" as NSString),
//        ORKTextChoice(text: "Chronic cough", value: "Chronic cought" as NSString),
//        ORKTextChoice(text: "Use of an inhaler", value: "Use of an inhaler" as NSString),
//        ORKTextChoice(text: "Difficulty swallowing", value: "Difficulty swallowing" as NSString),
//        ORKTextChoice(text: "None", value: "None" as NSString)
//    ]
//    let breathingAnswerFormat =  ORKAnswerFormat.choiceAnswerFormat(with: .multipleChoice, textChoices: breathingChoices)
//    let breathingStep = ORKQuestionStep(identifier: "Breathing", title: breathingStepTitle1, answer: breathingAnswerFormat)
//    breathingStep.isOptional = false
//    steps += [breathingStep]
//
   //
   //    //Completion
   //    let summaryStep = ORKCompletionStep(identifier: "SummaryStep")
   //    summaryStep.title = "Information Recorded"
   //    summaryStep.text = "Please finish the remaining steps"
   //    steps += [summaryStep]
   //
   //    //-----------------------------------------------------------------------
   //
   //    return ORKOrderedTask(identifier: "Questions", steps: steps)
   //
   //
   



//    let questQuestionStepTitlemultiple = questionItem![8].question!
//    var textChoicesmultiple = [ORKTextChoice]()
//    for (_, ans) in ≈?.validations! {
//        textChoices.append(ORKTextChoice(text: ans.body!, value: ans.body! as NSCoding & NSCopying & NSObjectProtocol))
//    }
//
//textChoicesmultiple.append(ORKTextChoice(text: ((queAns?.header)! as NSCoding & NSCopying & NSObjectProtocol) as! String, value: ((queAns?.header)! as NSCoding & NSCopying & NSObjectProtocol)  ))
//    let questAnswerFormatAnswer: ORKTextChoiceAnswerFormat = ORKAnswerFormat.choiceAnswerFormat(with: .multipleChoice, textChoices: textChoicesmultiple)
//    let questQuestionStepAnswer = ORKQuestionStep(identifier:  queAns!.id!, title: questQuestionStepTitlemultiple, answer: questAnswerFormatAnswer)
//    surveyQuestionAns += [questQuestionStepAnswer]
    
    
//                  }
//                  else if type == "multiple" {
//                      let questQuestionStepTitlemultiple = queAns?.header!
//                      var textChoicesmultiple = [ORKTextChoice]()
//                      for (_, ans) in ≈?.validations! {
//                          textChoices.append(ORKTextChoice(text: ans.body!, value: ans.body! as NSCoding & NSCopying & NSObjectProtocol))
//                      }
//
//    textChoicesmultiple.append(ORKTextChoice(text: ((queAns?.header)! as NSCoding & NSCopying & NSObjectProtocol) as! String, value: ((queAns?.header)! as NSCoding & NSCopying & NSObjectProtocol)  ))
//                      let questAnswerFormatAnswer: ORKTextChoiceAnswerFormat = ORKAnswerFormat.choiceAnswerFormat(with: .multipleChoice, textChoices: textChoicesmultiple)
//                      let questQuestionStepAnswer = ORKQuestionStep(identifier:  queAns!.id!, title: questQuestionStepTitlemultiple, answer: questAnswerFormatAnswer)
//                      surveyQuestionAns += [questQuestionStepAnswer]
////                  }
////                  else if type == "answer" {
//                      let nameAnswerFormat = ORKTextAnswerFormat()
//                      nameAnswerFormat.multipleLines = true
//                      let nameQuestionStepTitle = queAns?.header!
//                      let nameQuestionStep = ORKQuestionStep(identifier:  queAns!.id!, title: nameQuestionStepTitle, answer: nameAnswerFormat)
//                      surveyQuestionAns += [nameQuestionStep]
    
    

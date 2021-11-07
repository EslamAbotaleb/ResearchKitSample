//
//  ViewController.swift
//  SampleResearchKit
//
//  Created by Simon Ng on 2/5/2017.
//  Copyright © 2017 AppCoda. All rights reserved.
//

import UIKit
import ResearchKit

class ViewController: UIViewController, ORKTaskViewControllerDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    //    @IBAction func consentClicked(sender : AnyObject) {
    //        let taskViewController = ORKTaskViewController(task: ConsentTask, taskRun: nil)
    //        taskViewController.delegate = self
    //        present(taskViewController, animated: true, completion: nil)
    //    }
    
    @IBAction func surveyClicked(sender : AnyObject) {
        let taskViewController = ORKTaskViewController(task: SurveyTask, taskRun: nil)
        
        
        taskViewController.delegate = self
        present(taskViewController, animated: true, completion: nil)
    }
    
    //    @IBAction func activeTaskClicked(sender : AnyObject) {
    //        let taskViewController = ORKTaskViewController(task: ActiveTask, taskRun: nil)
    //        taskViewController.delegate = self
    //        present(taskViewController, animated: true, completion: nil)
    //    }
    
    // MARK: - ORKTaskViewControllerDelegate Protocol
    func taskViewController(_ taskViewController: ORKTaskViewController, didFinishWith reason: ORKTaskViewControllerFinishReason, error: Error?) {
        switch (reason) {
        case .completed:
            let taskResult = taskViewController.result
            
            let jsonData = try! ORKESerializer.jsonData(for: taskResult)
            
            
            if let jsonString = String(data: jsonData, encoding: String.Encoding(rawValue: String.Encoding.utf8.rawValue)) {

                
                let jsodnData = Data(jsonString.utf8)
                
                do {
                    let decoder = JSONDecoder()
                    let decoded = try decoder.decode(AnswersSurveyModel.self, from: jsodnData)
                    print(decoded)
                    
                } catch {
                    print(String(describing: error))
                }
            }
            break
            
        default: break
        }
        dismiss(animated: true, completion: nil)
    }
    
    // Function to parse JSON
    func parseJSON(data: Data) -> AnswersSurveyModel? {
        
        var returnValue: AnswersSurveyModel?
        do {
            returnValue = try JSONDecoder().decode(AnswersSurveyModel.self, from: data)
        } catch {
            print("Error took place: \(error.localizedDescription).")
        }
        
        return returnValue
    }
    
}

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
            if let jsonString = NSString(data: jsonData, encoding: String.Encoding.utf8.rawValue) {
                         print(jsonString)
                     }
                     break
          
        default: break
        }
        dismiss(animated: true, completion: nil)
    }
}

//
//  QuestionViewController.swift
//  Peter_Homework3
//
//  Created by 陳庭楷 on 2018/10/30.
//  Copyright © 2018年 陳庭楷. All rights reserved.
//

import UIKit

import GameplayKit

class QuestionViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var numberLabel: UILabel!
    
    @IBOutlet weak var answerLabel: UILabel!
    
    var count = 0
    
    let randomNumber = GKShuffledDistribution(lowestValue:
        
        0,highestValue: questionAnswerArray.count-1)
    
    @IBAction func showAnswerButton(_ sender: Any) {
        
        answerLabel.isHidden = false
        
    }
    
    @IBAction func nextButton(_ sender: Any) {
        
        if count == 10 {
            
            count = 0
            
        }
        
        next()
        
    }
    
    func next() {
        
        let sumArray = questionAnswerArray[randomNumber.nextInt()]
        
        questionLabel.text = sumArray.question
        
        answerLabel.text = sumArray.answer
        
        count += 1
        
        numberLabel.text = "\(count)"
        
        answerLabel.isHidden = true
        
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

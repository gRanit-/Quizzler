//
//  ViewController.swift
//  Quizzler
//
//  Created by Wojciech Granicki on 27.02.2018.
//  Copyright © 2018 London App Brewery. All rights reserved.
//

import Foundation
import UIKit
class ViewController: UIViewController {
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIView!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var progressLabel: UILabel!
    @IBOutlet weak var progressBarWidth: NSLayoutConstraint!
    var data = QuestionBank()
    var score = 0
    var progress = 0
    var question:Question!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        nextQuestion()
        updateUI()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func updateUI(){
        questionLabel.text = question.questionText
        progressLabel.text = "Done: \(progress) Left: \(data.questions.count)"
        scoreLabel.text = "Score \(score*10)"
        
        UIView.animate(withDuration:1 , animations:{
            let width = self.view.frame.width/13 * CGFloat(self.progress + 1 )
            self.progressBarWidth.constant = width
            self.progressBar.frame.size.width = width
        })
        
    }
    func reset(){
        progress = 0
        score = 0
        data = QuestionBank()
        
        nextQuestion()
        updateUI()
    }
    
    func end(){
        let controller = UIAlertController(title: "Congratulations!", message: "You have finished Quizzler.\nStart again?", preferredStyle: .alert)
        let ok = UIAlertAction.init(title: "OK!", style: UIAlertActionStyle.default) {(action:UIAlertAction!) in
            self.reset()
        }
        
        
        let cancel = UIAlertAction.init(title: "Cancel!", style: UIAlertActionStyle.cancel){(action:UIAlertAction!) in
            
        }
        
        controller.addAction(cancel)
        controller.addAction(ok)
        
        self.present(controller, animated: true, completion:nil)
    }
    
    func nextQuestion(){
        
        if data.questions.isEmpty{
            end()
        }
        
        let num = data.questions.count
        let rand = arc4random_uniform(UInt32(num))
        var i = 0
        for q in data.questions {
            if(i == rand){
                question = q
                break
            }
            i+=1
        }
        data.questions.remove(question)
    }
    
    @IBAction func pressedButton(_ sender: UIButton) {
        if (sender.tag%2==1) == question.answer  {
            score += 1
        }else{
            score -= 1
        }
        progress += 1
        
        nextQuestion()
        updateUI()
    }
    
}

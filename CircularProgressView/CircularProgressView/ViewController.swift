//
//  ViewController.swift
//  CircularProgressView
//
//  Created by Gagan  Vishal on 3/17/20.
//  Copyright © 2020 Gagan  Vishal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //IBOults
    @IBOutlet weak var progressView: CircularProgressView!
    
    //MARK:- View Controller Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        //TimerHandleDelegate set
        self.progressView.delegate = self
    }

    //MARK:- Start Animation Action
    @IBAction func startAnimationButtonClicked(_ sender: Any) {
        self.progressView.start(beginingValue: 100, interval: 1.0)
    }
}

//MARK:- TimerHandleDelegate
extension ViewController: TimerHandleDelegate {
    func counterUpdateTimeValue(with sender: CircularProgressView, newValue: Int) {
        print("CURRENT VALUE IS: \(newValue)")
    }
    
    func didStartTimer(sender: CircularProgressView) {
        print("PROGRESS ANIMATION STARTED ")
    }
    
    func didEndTimer(sender: CircularProgressView) {
        print("PROGRESS ANIMATION FINISHD ")
    }
}

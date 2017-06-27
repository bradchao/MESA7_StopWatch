//
//  ViewController.swift
//  StopWatch
//
//  Created by iii on 2017/6/27.
//  Copyright © 2017年 iii. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var hourLabel: UILabel!
    @IBOutlet weak var minuteLabel: UILabel!
    @IBOutlet weak var secondLabel: UILabel!
    @IBOutlet weak var hsLabel: UILabel!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var btnStartOrStop: UIButton!
    @IBOutlet weak var btnLapOrReset: UIButton!
    private var isStart = false
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        return cell!
    }
    
    
    @IBAction func changeStartOrStop(_ sender: Any) {
        isStart = !isStart
        if isStart {
            // Running
            btnStartOrStop.setTitle("Stop", for: UIControlState.normal)
            btnLapOrReset.setTitle("Lap", for: UIControlState.normal)
            doStart()
        }else {
            btnStartOrStop.setTitle("Start", for: UIControlState.normal)
            btnLapOrReset.setTitle("Reset", for: UIControlState.normal)
            doStop()
        }
    }
    
    @IBAction func doResetOrLap(_ sender: Any) {
        if isStart {
            // Running ==> Lap
            doLap()
            
        }else {
            // stop ==> Reset
            doReset()
        }
    }

    private func doStart(){
        
    }
    private func doStop(){
        
    }
    private func doReset(){
        
    }
    private func doLap(){
        
    }
    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}


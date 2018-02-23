//
//  StackViewController.swift
//  sampleAutoLayoutLibrary
//
//  Created by yuka on 2018/02/22.
//  Copyright © 2018年 yuka. All rights reserved.
//

import UIKit

class StackViewController: UIViewController {

    @IBOutlet weak var label1Constraint: NSLayoutConstraint!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        label1Constraint.constant = 20
        
    }
    
    @IBOutlet weak var myStackView: UIStackView!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    
    override func viewWillLayoutSubviews() {
        print(#function)
        
        super.viewWillLayoutSubviews()
        
        print(myStackView.frame)
        print(myStackView.bounds)
        print("button1.frame:\(button1.frame)")
        print("button1.frame.origin:\(button1.frame.origin)")
        print("button1.frame.size:\(button1.frame.size)")
        print("button1.bounds:\(button1.bounds)")
        print("button1.bounds.origin:\(button1.bounds.origin)")
        print("button1.bounds.size:\(button1.bounds.size)")
        
        print("button2.frame:\(button2.frame)")
        print("button2.bounds:\(button2.bounds)")
        print("---------------------")
        print("label1.frame:\(label1.frame)")
        print("label1.bounds:\(label1.bounds)")
        print("label2.frame:\(label2.frame)")
        print("label2.bounds:\(label2.bounds)")
        
    }
    
    override func viewDidLayoutSubviews() {
        print(#function)

        super.viewDidLayoutSubviews()
        
        print("button1.frame:\(button1.frame)")
        print("button1.frame.origin:\(button1.frame.origin)")
        print("button1.frame.size:\(button1.frame.size)")
        print("button1.bounds:\(button1.bounds)")
        print("button1.bounds.origin:\(button1.bounds.origin)")
        print("button1.bounds.size:\(button1.bounds.size)")

        print("button2.frame:\(button2.frame)")
        print("button2.bounds:\(button2.bounds)")
        print("---------------------")
        print("label1.frame:\(label1.frame)")
        print("label1.bounds:\(label1.bounds)")
        print("label2.frame:\(label2.frame)")
        print("label2.bounds:\(label2.bounds)")

        print("---------------------")

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func tapButton(_ sender: UIButton) {
        
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

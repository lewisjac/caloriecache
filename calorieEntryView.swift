//
//  calorieEntryView.swift
//  CalorieCache
//
//  Created by Jack Lewis Simmons on 3/8/18.
//  Copyright © 2018 Jack Lewis Simmons. All rights reserved.
//

import UIKit

class calorieEntryView: UIViewController {
    
    @IBAction func divestCaloriesButton(_ sender: UIButton){
        ViewController().spentCaloriesNumber = 4
        print(ViewController().spentCaloriesNumber)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "calorie entry"
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func fahrenheitFieldEditingChanged(_ textField: UITextField) {
        
    }
    
    
}

//
//  ViewController.swift
//  CalorieCache
//
//  Created by Jack Lewis Simmons on 3/8/18.
//  Copyright © 2018 Jack Lewis Simmons. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var todayCalorieCount: UILabel!
    @IBOutlet var cacheCalorieCount: UILabel!
    @IBOutlet var spentCalories: UILabel!
    var todayCalorieCountNumber: Int = 0
    var cacheCalorieCountNumber: Int = 0
    var spentCaloriesNumber: Int = 0
    
    
    //                  **NEXT STEPS**
    // Set up values for calories today, cache, and spent
    // They each need to have a real value stored in them.
    
    // the spend button needs to take the user to another view where they can enter the number of calories they want to spend.
    @IBAction func spendCaloriesButton(_ sender: UIButton){
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let calorieEntryView = storyboard.instantiateViewController(withIdentifier: "calorieEntryView")as! calorieEntryView
        // this is a secondviewcontroller constant variable is used for navigation.
        
        self.navigationController?.pushViewController(calorieEntryView, animated: true)
        
        // now push the VC by using navigation controller
        // ? means it is a optional value
        // ! means it contains a value
        
        
    }
    
    func setValues(){
        todayCalorieCountNumber = dataSt
    }
    
    //////////
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        setValues()
       
    }
    
    
    /////////
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "dashboard"
        // set value of today and cache upon load
        todayCalorieCount.text = String(todayCalorieCountNumber)
        cacheCalorieCount.text = String(cacheCalorieCountNumber)
        spentCalories.text = String(spentCaloriesNumber)
        
        print("view did load")
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


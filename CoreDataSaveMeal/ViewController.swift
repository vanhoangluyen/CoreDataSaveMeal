//
//  ViewController.swift
//  CoreDataSaveMeal
//
//  Created by HoangLuyen on 12/6/17.
//  Copyright © 2017 HoangLuyen. All rights reserved.
//

import UIKit


class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var nameLabelText: UITextField!
    @IBOutlet weak var ratingLabelText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        nameLabelText.resignFirstResponder()
        ratingLabelText.resignFirstResponder()
        return true
    }
    
    @IBAction func clickSaveMeal(_ sender: UIBarButtonItem) {
        let mealEntity = MealEntity(context: AppDelegate.context)
        mealEntity.name = nameLabelText.text
        mealEntity.rating = Int16(ratingLabelText.text ?? "") ?? 0
        AppDelegate.saveContext()
        navigationController?.popToRootViewController(animated: true)
    }
}


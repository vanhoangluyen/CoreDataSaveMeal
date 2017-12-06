//
//  DetailVC.swift
//  CoreDataSaveMeal
//
//  Created by HoangLuyen on 12/6/17.
//  Copyright © 2017 HoangLuyen. All rights reserved.
//

import UIKit

class DetailVC: UIViewController {
    @IBOutlet weak var nameLabelText: UILabel!
    @IBOutlet weak var ratingLabelText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let mealEntity = try? AppDelegate.context.fetch(MealEntity.fetchRequest()) as! [MealEntity]
        nameLabelText.text = mealEntity?.last?.name
        ratingLabelText.text = String(describing: mealEntity?.last?.rating ?? 0)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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

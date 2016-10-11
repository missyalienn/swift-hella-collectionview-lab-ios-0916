//
//  HellaDetailViewController.swift
//  HellaCollectionCells
//
//  Created by Missy Allan on 10/10/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class HellaDetailViewController: UIViewController {

    
    
    @IBOutlet weak var numberLabel: UILabel!
    
    
    var number: String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let number = number {
            self.numberLabel.text = number 
        }

    
        
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

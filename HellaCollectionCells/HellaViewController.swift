//
//  ViewController.swift
//  HellaCollectionCells
//
//  Created by Flatiron School on 10/6/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class HellaViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    
    
    @IBOutlet weak var collectionView: UICollectionView!
    

    var fibArray = [Int]()
    
    
   

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
        
    
        
        fibArray = makeFibArray(number: 1000)
        
    }
    
    

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
 
     }


    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1000
    }
    
    
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
         let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionCell", for: indexPath)
        
        
        if fibArray.contains(indexPath.item) {
            cell.backgroundColor = UIColor.purple
        }else{
            cell.backgroundColor = UIColor.yellow
        }
        
        return cell
    }
    
    
    
    func makeFibArray(number: Int) -> [Int] {
        
        var fibArray = [Int]()
        
        for i in 0...90 {
            if (i == 0 ) {
                fibArray.append(0)
            }else if (i == 1) {
                fibArray.append(1)
            }else{
                let firstPrevious = (fibArray[i-1])
                let secondPrevious = (fibArray[i - 2])
                let nextFibNumber = firstPrevious + secondPrevious
                fibArray.append(nextFibNumber)
            }
        }
        return fibArray
    }


    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetail" {
            
          let dest = segue.destination as! HellaDetailViewController
          
          let indexPaths = self.collectionView.indexPathsForSelectedItems!
            let indexPath = indexPaths[0] as NSIndexPath
            
            dest.number = String(indexPath.row)
            
            if fibArray.contains(indexPath.row) {
                dest.view.backgroundColor = UIColor.purple
            }else{
                dest.view.backgroundColor = UIColor.yellow
            }
                

        }
            
    }
        
    }
    




    


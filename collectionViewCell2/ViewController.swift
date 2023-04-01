//
//  ViewController.swift
//  collectionViewCell2
//
//  Created by R82 on 15/02/23.
//

import UIKit

class ViewController: UIViewController ,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    
    
    var flag = ["😎","💩","😈","🥀","❤️‍🔥","🕉","♊️","💸"]
     var name = ["swag","poop","evil","rose","fireheart","om","gemini","paisaaa"]
     var selectCell = -1

     @IBOutlet weak var cv: UICollectionView!
     override func viewDidLoad() {
         super.viewDidLoad()
         
     }
     func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
         return flag.count
     }
     
     func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
         let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! myCollectionViewCell
         
         cell.lb1.text = flag[indexPath.row]
         cell.lb2.text = name[indexPath.row]
         cell.layer.borderWidth = 5
         cell.layer.cornerRadius = 10
         
         if selectCell == indexPath.row{
             cell.img.image = UIImage(systemName: "circle.fill")
         }
         else{
             cell.img.image = UIImage(systemName: "circle")
         }
         
         return cell
         
     }
     func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
         selectCell = indexPath.row
         collectionView.reloadData()
     }
 }

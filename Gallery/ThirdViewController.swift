//
//  ThirdViewController.swift
//  Gallery
//
//  Created by Лаура Есаян on 09/11/2019.
//  Copyright © 2019 LY. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var myView: UIView!
    
    @IBOutlet weak var segmentSegmentedCotrol: UISegmentedControl!
    
    @IBOutlet weak var image1ImageView: UIImageView!
    
    @IBOutlet weak var image2ImageView: UIImageView!
    
    @IBOutlet weak var textField1: UITextField!
    
    @IBOutlet weak var textField2: UITextField!
    
    @IBOutlet weak var button1: UIButton!
    
    @IBOutlet weak var button2: UIButton!
    
    @IBAction func segmentAction(_ sender: Any) {
        switch segmentSegmentedCotrol.selectedSegmentIndex {
        case 0:
            myView.backgroundColor = #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)
            textField1.isHidden = false
            textField2.isHidden = false
            image1ImageView.isHidden = true
            image2ImageView.isHidden = true
            button1.isHidden = true
            button2.isHidden = true
        case 1:
            myView.backgroundColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
            textField1.isHidden = true
            textField2.isHidden = true
            image1ImageView.isHidden = true
            image2ImageView.isHidden = true
            button1.isHidden = false
            button2.isHidden = false
            button1.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
            button2.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        default:
            myView.backgroundColor = #colorLiteral(red: 0.820429079, green: 0.3949716758, blue: 0.8235294223, alpha: 1)
            image1ImageView.isHidden = false
            image2ImageView.isHidden = false
            textField1.isHidden = true
            textField2.isHidden = true
            button1.isHidden = true
            button2.isHidden = true
            image1ImageView.image = UIImage(imageLiteralResourceName: "cat_1")
            image2ImageView.image = UIImage(imageLiteralResourceName: "cat_2")
        }
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        segmentSegmentedCotrol.selectedSegmentIndex = 0
        segmentAction(self)
    }

}

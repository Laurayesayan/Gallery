//
//  SecondViewController.swift
//  Gallery
//
//  Created by Лаура Есаян on 09/11/2019.
//  Copyright © 2019 LY. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    var stacks = [UIStackView]()
    var labels = [UIStackView]()
    @IBOutlet weak var stack1: UIStackView!
    @IBOutlet weak var stack2: UIStackView!
    @IBOutlet weak var stack3: UIStackView!
    @IBOutlet weak var stack4: UIStackView!
    
    @IBOutlet weak var label1: UIStackView!
    @IBOutlet weak var label2: UIStackView!
    @IBOutlet weak var label3: UIStackView!
    @IBOutlet weak var label4: UIStackView!
    
    
    override func viewDidLoad() {
            super.viewDidLoad()
        stacks.append(stack1)
        stacks.append(stack2)
        stacks.append(stack3)
        stacks.append(stack4)
        
        labels.append(label1)
        labels.append(label2)
        labels.append(label3)
        labels.append(label4)
        
        for i in 0...3 {
            let imageView = UIImageView()
            imageView.image = UIImage(imageLiteralResourceName: "clothes_\(i)")
            stacks[i].addArrangedSubview(imageView)
            
            let label = UILabel()
            label.text = "price_\(i)"
            label.textAlignment = NSTextAlignment.center
            labels[i].addArrangedSubview(label)
            
        }

    }
}


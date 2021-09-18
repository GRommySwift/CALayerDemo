//
//  ViewController.swift
//  CALayerDemo
//

import UIKit

class ViewController: UIViewController {
    
    var gradiantLayer: CAGradientLayer! {
        didSet {
            gradiantLayer.startPoint = CGPoint(x: 0, y: 0)
            gradiantLayer.endPoint = CGPoint(x: 0, y: 1)
            let startColor = #colorLiteral(red: 0.4773054229, green: 0.9232730937, blue: 1, alpha: 1).cgColor
            let endColor = #colorLiteral(red: 0.6231913248, green: 0.9764705896, blue: 0.8346391654, alpha: 1).cgColor
            gradiantLayer.colors = [startColor, endColor]
        }
    }
    
    @IBOutlet weak var imageView: UIImageView! {
        didSet {
            imageView.layer.cornerRadius = imageView.frame.size.height / 2
            imageView.layer.masksToBounds = true
            let borderColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            imageView.layer.borderColor = borderColor.cgColor
            imageView.layer.borderWidth = 10
        }
    }

    @IBOutlet weak var button: UIButton! {
        didSet {
            button.layer.shadowOffset = CGSize(width: 0 , height: 5)
            button.layer.shadowOpacity = 0.5
            button.layer.shadowRadius = 5
        }
    }
    
    override func viewDidLayoutSubviews() {
        gradiantLayer.frame = CGRect(x: 0, y: 0, width: self.view.bounds.width, height: self.view.bounds.height)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        gradiantLayer = CAGradientLayer()
        view.layer.insertSublayer(gradiantLayer, at: 0)
    }
}


//
//  SecondViewController.swift
//  CALayerDemo
//

import UIKit

class SecondViewController: UIViewController {
    
    var gradiantLayer: CAGradientLayer! {
        didSet {
            gradiantLayer.startPoint = CGPoint(x: 0, y: 0)
            gradiantLayer.endPoint = CGPoint(x: 1, y: 1)
            
            gradiantLayer.colors = [UIColor.red.cgColor, UIColor.green.cgColor]
        }
    }
    
    @IBOutlet weak var imageView: UIImageView! {
        didSet {
            imageView.layer.cornerRadius = imageView.frame.size.height / 2
            imageView.layer.masksToBounds = true
            imageView.layer.borderColor = UIColor.red.cgColor
            imageView.layer.borderWidth = 10
        }
    }
    
    @IBOutlet weak var button: UIButton! {
        didSet {
            button.layer.shadowOffset = CGSize(width: 0, height: 6)
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
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
}

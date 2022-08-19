//
//  ViewController.swift
//  MyTestProject
//
//  Created by Masaki Kameya on 2022/08/19.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var pushButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.mainLabel.text = "Hello World"
    }


    @IBAction func onPushButton(_ sender: Any) {
        let alert = UIAlertController(title: nil, message: "Hey", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "got it", style: .default, handler: { _ in
            print("dismissed.")
        }))
        
        present(alert, animated: true)
    }
}


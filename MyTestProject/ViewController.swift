//
//  ViewController.swift
//  MyTestProject
//
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var pushButton: UIButton!
    @IBOutlet weak var testButton: UIButton!

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

    @IBAction func onTestButton(_ sender: Any) {
        let alert = UIAlertController(title: NSLocalizedString("TEST_TITLE", comment: "test"), message: "test", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "got it", style: .default, handler: { _ in
            print("dismissed.")
        }))
        
        present(alert, animated: true)

    }
}


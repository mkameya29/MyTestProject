//
//  ViewController.swift
//  MyTestProject
//
//

import UIKit
import ARKit

/// App's Top ViewController
class ViewController: UIViewController {

    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var pushButton: UIButton!
    @IBOutlet weak var testButton: UIButton!
    @IBOutlet weak var arButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.mainLabel.text = "Hello World"
        
        //check AR capability
        self.arButton.isHidden = !ARWorldTrackingConfiguration.isSupported

    }
    
    /// Push button event handler
    /// - Parameter sender: button
    @IBAction func onPushButton(_ sender: Any) {
        let alert = UIAlertController(title: nil, message: "Hey", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "got it", style: .default, handler: { _ in
            print("dismissed.")
        }))
        
        present(alert, animated: true)
    }
    
    /// Test Button Event handler
    /// - Parameter sender: button
    @IBAction func onTestButton(_ sender: Any) {
        let alert = UIAlertController(title: NSLocalizedString("TEST_TITLE", comment: "test"),
                                      message: "Hey", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Test", style: .default, handler: { _ in
            print("dismissed.")
        }))
        
        present(alert, animated: true)
    }

    
    /// AR表示画面を開く
    /// - Parameter sender: ARスタートボタン
    @IBAction func onARButton(_ sender: Any) {
        
    }
}


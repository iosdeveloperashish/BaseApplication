//
//  ViewController.swift
//  BaseApplication
//
//  Created by Ashish Viltoriya on 20/04/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var demoTextField: UITextField!
    @IBOutlet weak var demoLabel: UILabel!
    
    let viewModel = DemoViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.textFieldText.bind {[weak self] text in
            self?.demoLabel.text = text
        }
    }
    
}
extension ViewController: UITextFieldDelegate {
    
    func textFieldDidChangeSelection(_ textField: UITextField) {
        viewModel.manipulateTextFieldText(text: textField.text)
    }
}

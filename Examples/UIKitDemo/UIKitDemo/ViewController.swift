//
//  ViewController.swift
//  UIKitDemo
//

import UIKit
import DialCodeKit
class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    @IBAction func openPickerClick(_ sender: UIButton) {
        let config = CountryPickerConfig(
            displayMode: .countryFlagAndCode,
            showSearch: true,
            showIndexBar: true,
            title: "Select Country"
        )
        
        let pickerVC = CountryPickerViewController(
            config: config,
            onSelect: { country in
                print("Selected Country: \(country.name) — \(country.dialCode)")
            },
            onCancel: {
                print("Picker cancelled")
            }
        )
        present(pickerVC, animated: true)
    }
}

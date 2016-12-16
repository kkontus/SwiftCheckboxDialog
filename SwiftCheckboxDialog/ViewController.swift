//
//  ViewController.swift
//  SwiftCheckboxDialog
//
//  Created by Kristijan Kontus on 16/12/2016.
//  Copyright © 2016 com.kkontus. All rights reserved.
//

import UIKit

class ViewController: UIViewController, CheckboxDialogViewDelegate {
    var checkboxDialogViewController: CheckboxDialogViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onButtonPressed(_ sender: UIButton) {
        // this tuple has translated key because it can use localized values in case app needs to be localized
        let tableData :[(name: String, translated: String)] = [("Angola", "Angole"),
                                                               ("Croatia", "Croatia"),
                                                               ("Germany", "Germany"),
                                                               ("Ireland", "Ireland"),
                                                               ("Spain", "Spain"),
                                                               ("United Kingdom", "United Kingdom"),
                                                               ("Venezuela", "Venezuela")]
        
        self.checkboxDialogViewController = CheckboxDialogViewController()
        self.checkboxDialogViewController.titleDialog = "Countries"
        self.checkboxDialogViewController.tableData = tableData
        self.checkboxDialogViewController.defaultValues = [tableData[3]]
        self.checkboxDialogViewController.componentName = DialogCheckboxViewEnum.countries
        self.checkboxDialogViewController.delegateDialogTableView = self
        self.checkboxDialogViewController.modalPresentationStyle = UIModalPresentationStyle.overCurrentContext
        self.present(self.checkboxDialogViewController, animated: false, completion: nil)
    }
    
    func onCheckboxPickerValueChange(_ component: DialogCheckboxViewEnum, values: TranslationDictionary) {
        print(component)
        print(values)
    }
    
}


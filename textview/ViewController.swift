//
//  ViewController.swift
//  textview
//
//  Created by 黃毓皓 on 2016/11/5.
//  Copyright © 2016年 ice elson. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextViewDelegate {

    @IBOutlet weak var overLabel: UILabel!
    @IBOutlet weak var textview: UITextView!
    @IBOutlet weak var showLabel: UILabel!
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        if text != "" && (textview.text.characters.count) < 10 {
            overLabel.isHidden = true
            
            return true
        }
        else if text == ""{
            overLabel.isHidden = false
            overLabel.text = "輸入非字母或數字不列入字數計算"
            
            return true
        }
    else{
            overLabel.isHidden = false
            overLabel.text = "不能輸入第11個字母"
            return false
        }
        
    }
    
    func textViewDidChange(_ textView: UITextView) {
        showLabel.isHidden = false
        showLabel.text =  String(textview.text.characters.count)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        showLabel.isHidden = true
        overLabel.isHidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


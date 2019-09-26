//
//  ViewController.swift
//  YTAlertDemo
//
//  Created by just so so on 2019/9/23.
//  Copyright © 2019 bruce yao. All rights reserved.
//

import UIKit
import YYAlertController
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func showNormalAlertView(_ sender: Any) {
        let alertView = YYAlertView.init(title: "提示", message: "确定要删除吗？")
        alertView.layer.cornerRadius = 8
        alertView.layer.masksToBounds = true
//        alertView.buttonDefaultBgColor = UIColor.red
        alertView.addAction(YYAlertAction.init("取消", style: .cancle, handler: { (action) in
            print("取消啦")
        }))
        alertView.addAction(YYAlertAction.init("确定", style: .defalut, handler: { (action) in
            print("确定")
        }))
        alertView.show(in: self, preferredStyle: .alert)
    }
    
    
    @IBAction func sheetViewAction(_ sender: Any) {
        let alertView = YYAlertView.init(title: "提示", message: "确定要删除吗？")
        alertView.layer.cornerRadius = 8
        alertView.layer.masksToBounds = true
    //        alertView.buttonDefaultBgColor = UIColor.red
        alertView.addAction(YYAlertAction.init("取消", style: .cancle, handler: { (action) in
                print("取消啦")
        }))
        alertView.addAction(YYAlertAction.init("确定1", style: .defalut, handler: { (action) in
                print("取消啦")
        }))
        alertView.addAction(YYAlertAction.init("确定", style: .defalut, handler: { (action) in
                print("确定")
        }))
        alertView.show(in: self, preferredStyle: .actionSheet)
    }
    
    @IBAction func customViewAction(_ sender: Any) {
        let titleView = YTitleView.init(frame: CGRect.init(x: 0, y: 0, width: UIScreen.main.bounds.width * 0.7, height: 300))
        titleView.backgroundColor = UIColor.white
        let alertVC = YYAlertController.init(titleView, preferredStyle: .alert)
        alertVC.bcgTapDismissEnable = true
        self.present(alertVC, animated: true, completion: nil)
    }
    
    @IBAction func showInWindowAction(_ sender: Any) {
        let alertView = YYAlertView.alertViewWithTitle("YYAlertView", message: "A message should be a short, but it can support long message, hahahhahahahahhahahahahhaahahhahahahahahhahahahahhahahahahahhahahahahahhahahahhahahhahahahahh. (NSTextAlignmentCenter)")
        alertView.addAction(YYAlertAction.init("取消", style: .cancle, handler: { (action) in
            
        }))
        
        alertView.addAction(YYAlertAction.init("确定", style: .defalut, handler: { (action) in
            
        }))
        alertView.showInWindow()
        
        // first way to show ,use UIView Category
//        [alertView showInWindowWithOriginY:200 backgoundTapDismissEnable:YES];
    }
    
    @IBAction func touchTextField(_ sender: Any) {
        
        let alertView = YYAlertView.init(title: "提示", message: "确定要删除吗？")
        alertView.layer.cornerRadius = 8
        alertView.layer.masksToBounds = true
        //        alertView.buttonDefaultBgColor = UIColor.red
        alertView.addTextFieldWithConfigurationHandler { (textField) in
            print(textField.text)
            textField.placeholder = "请输入手机号"
        }
        alertView.addTextFieldWithConfigurationHandler { (textField) in
            print(textField.text)
            textField.placeholder = "请输入密码"
        }
        alertView.addAction(YYAlertAction.init("取消", style: .cancle, handler: { (action) in
                print("取消啦")
        }))
        alertView.addAction(YYAlertAction.init("确定", style: .defalut, handler: { (action) in
                print("确定")
        }))
        alertView.show(in: self, preferredStyle: .alert)
    }
    
    
    @IBAction func touchSheetCustom(_ sender: Any) {
        let titleView = YTitleView.init(frame: CGRect.init(x: 0, y: 0, width: UIScreen.main.bounds.width * 0.7, height: 300))
        titleView.backgroundColor = UIColor.white
        let alertVC = YYAlertController.init(titleView, preferredStyle: .actionSheet)
        alertVC.bcgTapDismissEnable = true
        self.present(alertVC, animated: true, completion: nil)
    }
    
}


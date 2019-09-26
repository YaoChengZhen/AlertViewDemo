//
//  YTitleView.swift
//  YTAlertDemo
//
//  Created by just so so on 2019/9/26.
//  Copyright © 2019 bruce yao. All rights reserved.
//
//MARK: 布局支持自动布局，定制化，支持xib
import UIKit
import YYAlertController
class YTitleView: UIView {

    fileprivate lazy var titleLabel: UILabel = {
        let label = UILabel.init()
        label.text = "Hello World"
        label.frame = CGRect.init(x: 10, y: 10, width: 60, height: 20)
        return label
    }()
    
    fileprivate lazy var btn: UIButton = {
        let label = UIButton.init()
        label.setTitle("Dismiss", for: .normal)
        label.backgroundColor = .purple
        label.frame = CGRect.init(x: 10, y: 30, width: 80, height: 28)
        return label
    }()
    /// init
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(titleLabel)
        addSubview(btn)
        
        btn.addTarget(self, action: #selector(btnAction), for: .touchUpInside)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
        
    }
    
    @objc fileprivate func btnAction() {
        print("Hello World")
        hideView()
    }
}

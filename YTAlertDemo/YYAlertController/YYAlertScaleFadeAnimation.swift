//
//  TYAlertScaleFadeAnimation.swift
//  YTAlertDemo
//
//  Created by just so so on 2019/9/23.
//  Copyright © 2019 bruce yao. All rights reserved.
//
import UIKit

class YYAlertScaleFadeAnimation: YYBaseAnimation {

    override func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return 0.3
    }
    
    override func presentAnimateTransition(_ transitionContext: UIViewControllerContextTransitioning) {
        let alertVC: YYAlertController = transitionContext.viewController(forKey: .to) as! YYAlertController
        
        alertVC.bcgView?.alpha = 0
        switch alertVC.preferredSyle {
        case .alert:
            alertVC.alertView?.alpha = 0
            alertVC.alertView?.transform = CGAffineTransform.init(scaleX: 0.1, y: 0.1)
        case .actionSheet:
            alertVC.alertView?.transform = CGAffineTransform.init(translationX: 0, y: (alertVC.alertView?.frame.height)!)
        default:
            break
        }
        
        let containerView = transitionContext.containerView
        containerView.addSubview(alertVC.view)
        UIView.animate(withDuration: self.transitionDuration(using: transitionContext), animations: {
            alertVC.bcgView?.alpha = 1.0;
            switch (alertVC.preferredSyle) {
            case .alert:
                    alertVC.alertView?.alpha = 1.0
                    alertVC.alertView?.transform = CGAffineTransform.identity
            case .actionSheet:
                    alertVC.alertView?.transform = CGAffineTransform.identity
                    break;
                default:
                    break;
            }
        }) { (finished) in
            transitionContext.completeTransition(finished)
        }
    }
    
    override func dismissAnimateTransition(_ transitionContext: UIViewControllerContextTransitioning) {
        
        let alertVC: YYAlertController = transitionContext.viewController(forKey: .from) as! YYAlertController
        UIView.animate(withDuration: transitionDuration(using: transitionContext), animations: {
            alertVC.bcgView?.alpha = 0
            switch alertVC.preferredSyle {
            case .alert:
                alertVC.alertView?.alpha = 0
                alertVC.alertView?.transform = CGAffineTransform.init(scaleX: 0.1, y: 0.1)
                break
            case .actionSheet:
                alertVC.alertView?.transform = CGAffineTransform.init(translationX: 0, y: (alertVC.alertView?.frame.height)!)
            case .none:
                break
            }
        }) { (finished) in
            transitionContext.completeTransition(finished)
        }
        
    }
}


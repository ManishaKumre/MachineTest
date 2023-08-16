//
//  CustomTransitionAnimator.swift
//  MachineTes
//
//  Created by Mac on 11/08/23.
//


import UIKit

class CustomTransitionAnimator: NSObject{
    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return 0.5 // Duration of the transition animation
    }
   /*
    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        guard let fromViewController = transitionContext.viewController(forKey: .from),
              let toViewController = transitionContext.viewController(forKey: .to),
              let fromView = fromViewController.view,
              let toView = toViewController.view,
              let containerView = transitionContext.containerView else {
                    return
        }
        
        let duration = transitionDuration(using: transitionContext)
        
        // Set up the 3D transform for the flip animation
        var flipAnimation = CATransform3DIdentity
        flipAnimation.m34 = -1.0 / 500 // Perspective effect for 3D transformation
        flipAnimation = CATransform3DConcat(flipAnimation, CATransform3DMakeRotation(.pi / 2, 0, 1, 0)) // Rotate halfway
        
        // Add the views to the container view
        containerView.addSubview(toView)
        containerView.addSubview(fromView)
        
        // Set the initial transform for the flip animation
        toView.layer.transform = flipAnimation
        toView.layer.anchorPoint = CGPoint(x: 0.0, y: 0.5)
        
        // Animate the card flip
        UIView.animate(withDuration: duration, animations: {
            fromView.layer.transform = CATransform3DMakeRotation(-.pi / 2, 0, 1, 0)
            toView.layer.transform = CATransform3DIdentity
        }) { _ in
            fromView.layer.transform = CATransform3DIdentity
            toView.layer.transform = CATransform3DIdentity
            transitionContext.completeTransition(!transitionContext.transitionWasCancelled)
        }
    }*/
}

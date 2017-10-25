//
//  ViewController.m
//  AnimatableNavBar
//
//  Created by Danila Gusev on 25/10/2017.
//  Copyright © 2017 Josshad. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, weak) IBOutlet UIView * animatedView;
@end

@implementation ViewController

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    [self.navigationController.navigationBar setBackgroundImage:[UIImage new]
                                                  forBarMetrics:UIBarMetricsDefault];
    self.navigationController.navigationBar.shadowImage = [UIImage new];
    self.navigationController.navigationBar.translucent = YES;
    self.navigationController.view.backgroundColor = [UIColor clearColor];
    self.navigationController.navigationBar.backgroundColor = [UIColor clearColor];
}

- (IBAction)changeColor {

    [UIView animateWithDuration:0.5 delay:0 options:UIViewAnimationOptionAllowUserInteraction animations:^{
        self.animatedView.backgroundColor = self.animatedView.backgroundColor == UIColor.redColor ? UIColor.purpleColor : UIColor.redColor;
    } completion:nil];
}


@end

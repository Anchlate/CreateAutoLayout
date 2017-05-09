//
//  ViewController.m
//  创建布局约束
//
//  Created by PENG BAI on 15/10/18.
//  Copyright © 2015年 bp1010. All rights reserved.
//

#import "ViewController.h"
#import "UIView+ANView.h"


@interface ViewController ()

@property (nonatomic, strong) UIView *myView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view addSubview:self.myView];
    
    
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    NSLayoutConstraint *constraintLeft = [NSLayoutConstraint constraintWithItem:self.myView
                                                                      attribute:NSLayoutAttributeLeft
                                                                      relatedBy:NSLayoutRelationEqual
                                                                         toItem:self.view
                                                                      attribute:NSLayoutAttributeLeft
                                                                     multiplier:1.0
                                                                       constant:20];
    /*
    NSLayoutConstraint *constraintTrailing = [NSLayoutConstraint constraintWithItem:self.myView
                                                                          attribute:NSLayoutAttributeRight
                                                                          relatedBy:NSLayoutRelationEqual
                                                                             toItem:self.view
                                                                          attribute:NSLayoutAttributeRight
                                                                         multiplier:1.0
                                                                           constant:0];
    */
    
    NSLayoutConstraint *constraintTop = [NSLayoutConstraint constraintWithItem:self.myView
                                                                     attribute:NSLayoutAttributeTop
                                                                     relatedBy:NSLayoutRelationEqual
                                                                        toItem:self.view
                                                                     attribute:NSLayoutAttributeTop
                                                                    multiplier:1.0
                                                                      constant:20];
    
    NSLayoutConstraint *constraintWidth = [NSLayoutConstraint constraintWithItem:self.myView
                                                                       attribute:NSLayoutAttributeWidth
                                                                       relatedBy:NSLayoutRelationEqual
                                                                          toItem:self.view
                                                                       attribute:NSLayoutAttributeWidth
                                                                      multiplier:1.0
                                                                        constant:-40];
    
    NSLayoutConstraint *constraintHeight = [NSLayoutConstraint constraintWithItem:self.myView
                                                                        attribute:NSLayoutAttributeHeight
                                                                        relatedBy: NSLayoutRelationEqual
                                                                           toItem:self.view
                                                                        attribute:NSLayoutAttributeHeight
                                                                       multiplier:1.0
                                                                         constant:-40];
    /*
     NSLayoutConstraint *constraintBottom = [NSLayoutConstraint constraintWithItem:self.myView
                                                                         attribute:NSLayoutAttributeBottom
                                                                         relatedBy:NSLayoutRelationEqual
                                                                         toItem:self.view
                                                                         attribute:NSLayoutAttributeBottom
                                                                         multiplier:1.0 constant:0];
     */
    
    [self.view addConstraint:constraintLeft];
    [self.view addConstraint:constraintTop];
    [self.view addConstraint:constraintWidth];
    [self.view addConstraint:constraintHeight];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark -GetterMethod
- (UIView *)myView
{
    if (!_myView) {
        _myView = [[UIView alloc]init];
        _myView.backgroundColor = [UIColor redColor];
        _myView.translatesAutoresizingMaskIntoConstraints = NO;
    }
    return _myView;
}


@end
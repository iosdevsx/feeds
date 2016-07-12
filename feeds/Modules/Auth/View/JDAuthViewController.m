//
//  JDAuthViewController.m
//  feeds
//
//  Created by Yury Loginov on 06/07/2016.
//  Copyright © 2016 jsd. All rights reserved.
//

#import "JDAuthViewController.h"
#import "JDAuthViewOutput.h"
#import "Masonry.h"


@interface JDAuthViewController ()

@property (strong, nonatomic) UIView *containterView;
@property (strong, nonatomic) UIButton *loginButton;

@end


@implementation JDAuthViewController

#pragma mark - Методы жизненного цикла

- (void)viewDidLoad {
	[super viewDidLoad];
    
	[self.eventHandler didTriggerViewReadyEvent];
}

#pragma mark - JDAuthViewInput

- (void)setupInitialState {
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.containterView = [UIView new];
    self.containterView.backgroundColor = [UIColor whiteColor];
    
    self.loginButton = [UIButton buttonWithType:UIButtonTypeCustom];
    self.loginButton.backgroundColor = [UIColor colorWithRed:135.f/255 green:206.f/255 blue:250.f/255 alpha:1.f];
    [self.loginButton setTitle:@"Login" forState:UIControlStateNormal];
    [self.loginButton addTarget:self action:@selector(actionLoginTap) forControlEvents:UIControlEventTouchUpInside];
    
    [self.containterView addSubview:self.loginButton];
    
    [self.view addSubview:self.containterView];
}

- (void)setupConstraints {
    [self.containterView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view.mas_topMargin);
        make.bottom.equalTo(self.view.mas_bottomMargin);
        make.left.equalTo(self.view.mas_leftMargin);
        make.right.equalTo(self.view.mas_rightMargin);
    }];
    
    [self.loginButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.equalTo(@(200));
        make.height.equalTo(@(50));
        make.top.equalTo(self.containterView).with.offset(80.f);
        make.centerX.equalTo(self.containterView.mas_centerX);
    }];
}

- (void)actionLoginTap {
    [self.eventHandler handleLoginTap];
}

@end

//
//  JDAuthViewController.m
//  feeds
//
//  Created by Yury Loginov on 06/07/2016.
//  Copyright © 2016 jsd. All rights reserved.
//

#import "JDAuthViewController.h"
#import "JDAuthViewOutput.h"
#import <VKSdk.h>
#import "Masonry.h"
#import "VKAuthorizeController.h"


@interface JDAuthViewController () <VKSdkUIDelegate, VKSdkDelegate>

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
    self.containterView.backgroundColor = [UIColor lightGrayColor];
    
    self.loginButton = [UIButton buttonWithType:UIButtonTypeCustom];
    self.loginButton.backgroundColor = [UIColor redColor];
    self.loginButton.titleLabel.text = @"Login with VK";
    [self.loginButton addTarget:self action:@selector(actionLoginTap) forControlEvents:UIControlEventTouchUpInside];
    
    [self.containterView addSubview:self.loginButton];
    
    [self.view addSubview:self.containterView];
    [self vkInit];
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
        make.top.equalTo(self.containterView).with.offset(40.f);
        make.centerX.equalTo(self.containterView.mas_centerX);
    }];
}

- (void)vkInit {
    VKSdk *sdk = [VKSdk initializeWithAppId:@"5277780"];
    [sdk setUiDelegate:self];
    [sdk registerDelegate:self];
}

- (void)checkVkSession {
    NSArray *scope = @[@"friends", @"email"];
    
    [VKSdk wakeUpSession:scope completeBlock:^(VKAuthorizationState state, NSError *error) {
        if (state == VKAuthorizationInitialized) {
            [VKAuthorizeController presentForAuthorizeWithAppId:@"5277780" andPermissions:scope revokeAccess:true displayType:VK_DISPLAY_IOS];
            
        } else if (state == VKAuthorizationAuthorized) {
            
        } else if (error) {
            
        }
    }];
}

#pragma mark - Actions

- (void)actionLoginTap {
    //[self checkVkSession];
    [VKAuthorizeController presentForAuthorizeWithAppId:@"5277780" andPermissions:@[@"email"] revokeAccess:true displayType:VK_DISPLAY_IOS];
}

#pragma mark - VKSdkDelegate

- (void)vkSdkAccessAuthorizationFinishedWithResult:(VKAuthorizationResult *)result {
    
}

- (void)vkSdkUserAuthorizationFailed {
    
}

#pragma mark - VKSdkUIDelegate

- (void)vkSdkShouldPresentViewController:(UIViewController *)controller {
    
}

- (void)vkSdkNeedCaptchaEnter:(VKError *)captchaError {
    
}

@end

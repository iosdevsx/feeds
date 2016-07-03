//
//  JDMainPresenter.m
//  feeds
//
//  Created by yury.loginov on 03/07/2016.
//  Copyright © 2016 jsd. All rights reserved.
//

#import "JDMainPresenter.h"

#import "JDMainViewInput.h"
#import "JDMainInteractorInput.h"
#import "JDMainRouterInput.h"

@implementation JDMainPresenter

@synthesize userInterface = _userInterface;

#pragma mark - JDMainModuleInput

- (void)configureModule
{
    // Стартовая конфигурация модуля, не привязанная к состоянию view
}

#pragma mark - JDMainViewOutput

- (void)didTriggerViewReadyEvent 
{
	[self.userInterface setupInitialState];
}

#pragma mark - JDMainInteractorOutput

@end

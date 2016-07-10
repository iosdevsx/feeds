//
//  JDWebPresenter.m
//  feeds
//
//  Created by yury loginov on 10/07/2016.
//  Copyright © 2016 jsd. All rights reserved.
//

#import "JDWebPresenter.h"

#import "JDWebViewInput.h"
#import "JDWebInteractorInput.h"
#import "JDWebRouterInput.h"

@implementation JDWebPresenter

@synthesize userInterface = _userInterface;

#pragma mark - JDWebModuleInput

- (void)configureModule
{
    // Стартовая конфигурация модуля, не привязанная к состоянию view
}

#pragma mark - JDWebViewOutput

- (void)didTriggerViewReadyEvent 
{
	[self.userInterface setupInitialState];
}

#pragma mark - JDWebInteractorOutput

@end

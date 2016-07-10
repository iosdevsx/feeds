//
//  JDFeedsPresenter.m
//  feeds
//
//  Created by yury loginov on 10/07/2016.
//  Copyright © 2016 jsd. All rights reserved.
//

#import "JDFeedsPresenter.h"

#import "JDFeedsViewInput.h"
#import "JDFeedsInteractorInput.h"
#import "JDFeedsRouterInput.h"

@implementation JDFeedsPresenter

@synthesize userInterface = _userInterface;

#pragma mark - JDFeedsModuleInput

- (void)configureModule
{
    // Стартовая конфигурация модуля, не привязанная к состоянию view
}

#pragma mark - JDFeedsViewOutput

- (void)didTriggerViewReadyEvent 
{
	[self.userInterface setupInitialState];
}

#pragma mark - JDFeedsInteractorOutput

@end

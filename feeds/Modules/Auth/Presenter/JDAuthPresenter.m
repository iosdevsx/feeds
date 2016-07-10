//
//  JDAuthPresenter.m
//  feeds
//
//  Created by Yury Loginov on 06/07/2016.
//  Copyright © 2016 jsd. All rights reserved.
//

#import "JDAuthPresenter.h"

#import "JDAuthViewInput.h"
#import "JDAuthInteractorInput.h"
#import "JDAuthRouterInput.h"

@implementation JDAuthPresenter

@synthesize userInterface = _userInterface;

#pragma mark - JDAuthModuleInput

- (void)configureModule
{
    // Стартовая конфигурация модуля, не привязанная к состоянию view
}

#pragma mark - JDAuthViewOutput

- (void)didTriggerViewReadyEvent 
{
	[self.userInterface setupInitialState];
    [self.userInterface setupConstraints];
}

- (void)showMainModule {
    [self.router showAuthModuleInNavigation:self.navigationController];
}

#pragma mark - JDAuthInteractorOutput

@end

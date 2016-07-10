//
//  JDAuthRouter.m
//  feeds
//
//  Created by Yury Loginov on 06/07/2016.
//  Copyright © 2016 jsd. All rights reserved.
//

#import "JDAuthRouter.h"
#import "JDAuthModuleInput.h"

@interface JDAuthRouter()

@end

@implementation JDAuthRouter

#pragma mark - JDAuthRouterInput

- (void)showAuthModuleInNavigation:(UINavigationController *)navigation {
    id <JDAuthModuleInput> viewController = self.authFactory.presenterAuthModule;
    [navigation pushViewController:viewController.userInterface animated:YES];
}

- (void)presentAuthModule {
    id <JDAuthModuleInput> viewController = self.authFactory.presenterAuthModule;
    [self.rootNavigation presentViewController:viewController.userInterface animated:YES completion:nil];
}

- (void)presentAuthWebView {
    
}

@end

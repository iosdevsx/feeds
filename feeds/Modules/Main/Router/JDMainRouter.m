//
//  JDMainRouter.m
//  feeds
//
//  Created by yury.loginov on 03/07/2016.
//  Copyright © 2016 jsd. All rights reserved.
//

#import "JDMainRouter.h"
#import "JDMainModuleInput.h"

@implementation JDMainRouter

#pragma mark - JDMainRouterInput

- (void)showMainModuleInNavigation:(UINavigationController *)navigationController {
    id<JDMainModuleInput> viewController = self.mainModuleFactory.presenterMainModule;
    [navigationController pushViewController:viewController.userInterface animated:YES];
}

@end

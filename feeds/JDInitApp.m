//
//  JDInitApp.m
//  feeds
//
//  Created by jsd on 03.07.16.
//  Copyright © 2016 jsd. All rights reserved.
//

#import "JDInitApp.h"
#import "JDMainRouterInput.h"
#import "JDAuthRouter.h"

@implementation JDInitApp

- (void)runApplication {
    [self.authRouter presentAuthModule];
    //[self.mainRouter showMainModuleInNavigation:self.mainNavigation];
}

@end

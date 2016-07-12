//
//  JDAuthRouter.h
//  feeds
//
//  Created by Yury Loginov on 06/07/2016.
//  Copyright © 2016 jsd. All rights reserved.
//

#import "JDAuthRouterInput.h"
#import "JDAuthModuleFactory.h"
#import "JDWebModuleFactory.h"

@interface JDAuthRouter : NSObject <JDAuthRouterInput>

@property (nonatomic, strong) UIViewController *viewController;
@property (nonatomic, strong) id <JDAuthModuleFactory> authFactory;
@property (nonatomic, strong) id <JDWebModuleFactory> webFactory;
@property (strong, nonatomic) UINavigationController *rootNavigation;


@end

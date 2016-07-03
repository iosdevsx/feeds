//
//  JDMainRouter.h
//  feeds
//
//  Created by yury.loginov on 03/07/2016.
//  Copyright © 2016 jsd. All rights reserved.
//

#import "JDMainRouterInput.h"
#import "JDMainModuleFactory.h"

@interface JDMainRouter : NSObject <JDMainRouterInput>

@property (nonatomic, strong) UIViewController *viewController;
@property (nonatomic, strong) id<JDMainModuleFactory> mainModuleFactory;

@end

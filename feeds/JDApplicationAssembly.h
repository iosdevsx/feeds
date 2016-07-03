//
//  JDApplicationAssembly.h
//  feeds
//
//  Created by jsd on 03.07.16.
//  Copyright © 2016 jsd. All rights reserved.
//

#import <Typhoon/Typhoon.h>
#import "JDMainAssembly.h"
#import "JDInitAssembly.h"

@class AppDelegate;
@class UIWindow;
@class JDInitAssembly;

@interface JDApplicationAssembly : TyphoonAssembly

@property (nonatomic, strong) JDInitAssembly *initializerAssembly;
@property (nonatomic, strong) JDMainAssembly *mainAssembly;

- (AppDelegate *)appDelegate;
- (UIWindow *)window;
- (UINavigationController *)mainNavigation;

@end

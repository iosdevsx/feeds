//
//  AppDelegate.h
//  feeds
//
//  Created by jsd on 28.06.16.
//  Copyright © 2016 jsd. All rights reserved.
//

#import <UIKit/UIKit.h>

@class JDInitApp;
@protocol JDMainRouterInput;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) JDInitApp *initializer;

@end


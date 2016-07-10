//
//  JDInitApp.h
//  feeds
//
//  Created by jsd on 03.07.16.
//  Copyright © 2016 jsd. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol JDMainRouterInput;
@protocol JDAuthRouterInput;

@interface JDInitApp : NSObject

@property (strong, nonatomic) id<JDMainRouterInput> mainRouter;
@property (strong, nonatomic) id<JDAuthRouterInput> authRouter;
@property (strong, nonatomic) UINavigationController *mainNavigation;

- (void)runApplication;


@end

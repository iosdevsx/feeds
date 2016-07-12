//
//  JDAuthRouterInput.h
//  feeds
//
//  Created by Yury Loginov on 06/07/2016.
//  Copyright © 2016 jsd. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol JDAuthModuleInput;

@protocol JDAuthRouterInput <NSObject>

- (void)showAuthModuleInNavigation:(UINavigationController *)navigation;
- (void)presentAuthModule;
- (void)presentWebViewModule;

@end

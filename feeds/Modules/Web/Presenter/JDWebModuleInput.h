//
//  JDWebModuleInput.h
//  feeds
//
//  Created by yury loginov on 10/07/2016.
//  Copyright © 2016 jsd. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol JDWebModuleInput

- (UIViewController *)userInterface;

/**
 * Метод инициирует стартовую конфигурацию текущего модуля
 */
- (void)configureModule;
- (void)configureModuleWith:(NSString *)stringUrl;
- (void)configureModuleWithVk;
- (void)configureModuleWithFb;

@end

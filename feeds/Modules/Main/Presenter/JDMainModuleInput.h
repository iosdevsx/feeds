//
//  JDMainModuleInput.h
//  feeds
//
//  Created by yury.loginov on 03/07/2016.
//  Copyright © 2016 jsd. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol JDMainModuleInput

- (UIViewController *)userInterface;
/**
 * Метод инициирует стартовую конфигурацию текущего модуля
 */
- (void)configureModule;

@end

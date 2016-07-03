//
//  JDMainViewInput.h
//  feeds
//
//  Created by yury.loginov on 03/07/2016.
//  Copyright © 2016 jsd. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol JDMainViewInput <NSObject>

/**
 * Метод настраивает начальный стейт view
 */
- (void)setupInitialState;
- (void)showTableWithData:(NSArray *)data;

@end

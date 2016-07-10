//
//  JDAuthViewInput.h
//  feeds
//
//  Created by Yury Loginov on 06/07/2016.
//  Copyright © 2016 jsd. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol JDAuthViewInput <NSObject>

/**
 * Метод настраивает начальный стейт view
 */
- (void)setupInitialState;
- (void)setupConstraints;

@end

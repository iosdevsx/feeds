//
//  JDFeedsViewInput.h
//  feeds
//
//  Created by yury loginov on 10/07/2016.
//  Copyright © 2016 jsd. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol JDFeedsViewInput <NSObject>

/**
 * Метод настраивает начальный стейт view
 */
- (void)setupInitialState;

@end

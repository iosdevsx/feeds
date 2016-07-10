//
//  JDFeedsModuleFactory.h
//  feeds
//
//  Created by yury loginov on 10/07/2016.
//  Copyright © 2016 jsd. All rights reserved.
//

@protocol JDFeedsModuleInput;

@protocol JDFeedsModuleFactory <NSObject>

- (id <JDFeedsModuleInput>JDFeedspresenterFeedsModule);

@end

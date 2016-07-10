//
//  JDFeedsAssembly.h
//  feeds
//
//  Created by yury loginov on 10/07/2016.
//  Copyright © 2016 jsd. All rights reserved.
//

#import <Typhoon/Typhoon.h>
#import "JDFeedsModuleFactory.h"

@interface JDFeedsAssembly : TyphoonAssembly <JDFeedsModuleFactory>

- (id <JDFeedsRouterInput>)routerFeedsModule;

@end

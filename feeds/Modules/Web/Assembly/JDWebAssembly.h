//
//  JDWebAssembly.h
//  feeds
//
//  Created by yury loginov on 10/07/2016.
//  Copyright © 2016 jsd. All rights reserved.
//

#import <Typhoon/Typhoon.h>
#import "JDWebModuleFactory.h"

@protocol JDWebRouterInput;

@interface JDWebAssembly : TyphoonAssembly <JDWebModuleFactory>

- (id <JDWebRouterInput>)routerWebModule;

@end

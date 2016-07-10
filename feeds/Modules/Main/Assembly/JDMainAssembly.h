//
//  JDMainAssembly.h
//  feeds
//
//  Created by yury.loginov on 03/07/2016.
//  Copyright © 2016 jsd. All rights reserved.
//

#import <Typhoon/Typhoon.h>
#import "JDMainModuleFactory.h"

@protocol JDMainRouterInput;

@interface JDMainAssembly : TyphoonAssembly <JDMainModuleFactory>

- (id<JDMainRouterInput>)routerMainModule;

@end

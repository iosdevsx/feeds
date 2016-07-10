//
//  JDAuthAssembly.h
//  feeds
//
//  Created by Yury Loginov on 06/07/2016.
//  Copyright © 2016 jsd. All rights reserved.
//

#import <Typhoon/Typhoon.h>
#import "JDAuthModuleFactory.h"

@protocol JDMainRouterInput;
@class JDApplicationAssembly;

@interface JDAuthAssembly : TyphoonAssembly <JDAuthModuleFactory>

@property (strong, nonatomic) JDApplicationAssembly *appAssembly;
- (id<JDMainRouterInput>)routerAuthModule;

@end

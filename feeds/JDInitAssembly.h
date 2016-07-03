//
//  JDInitAssembly.h
//  feeds
//
//  Created by jsd on 03.07.16.
//  Copyright © 2016 jsd. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TyphoonAssembly.h"

@class JDInitApp;
@class JDMainAssembly;
@class JDApplicationAssembly;

@interface JDInitAssembly : TyphoonAssembly

@property (nonatomic, strong) JDMainAssembly *mainAssembly;
@property (nonatomic, strong) JDApplicationAssembly *appAssembly;

- (JDInitApp *)appInitializer;

@end

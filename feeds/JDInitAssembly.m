//
//  JDInitAssembly.m
//  feeds
//
//  Created by jsd on 03.07.16.
//  Copyright © 2016 jsd. All rights reserved.
//

#import "JDInitApp.h"
#import "JDInitAssembly.h"
#import "JDMainAssembly.h"
#import "JDApplicationAssembly.h"
#import "JDAuthAssembly.h"


@implementation JDInitAssembly

- (JDInitApp *)appInitializer {
    return [TyphoonDefinition withClass:[JDInitApp class] configuration:^(TyphoonDefinition *definition) {
        [definition injectProperty:@selector(mainRouter) with:self.mainAssembly.routerMainModule];
        [definition injectProperty:@selector(mainNavigation) with:self.appAssembly.mainNavigation];
        [definition injectProperty:@selector(authRouter) with:self.authAssembly.routerAuthModule];
    }];
}

@end

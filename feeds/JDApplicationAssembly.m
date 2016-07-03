//
//  JDApplicationAssembly.m
//  feeds
//
//  Created by jsd on 03.07.16.
//  Copyright © 2016 jsd. All rights reserved.
//

#import "JDApplicationAssembly.h"
#import "AppDelegate.h"
#import "LaunchScreen.h"

@implementation JDApplicationAssembly

- (AppDelegate *)appDelegate {
    return [TyphoonDefinition withClass:[AppDelegate class] configuration:^(TyphoonDefinition *definition) {
        [definition injectProperty:@selector(initializer) with:self.initializerAssembly.appInitializer];
        [definition injectProperty:@selector(window) with:self.window];
    }];
}

- (UIWindow *)window {
    return [TyphoonDefinition withClass:[UIWindow class] configuration:^(TyphoonDefinition *definition) {
        [definition useInitializer:@selector(initWithFrame:) parameters:^(TyphoonMethod *initializer) {
            [initializer injectParameterWith:[NSValue valueWithCGRect:[UIScreen mainScreen].bounds]];
        }];
        [definition injectProperty:@selector(rootViewController) with:[self mainNavigation]];
    }];
}

- (UINavigationController *)mainNavigation {
    return [TyphoonDefinition withClass:[UINavigationController class] configuration:^(TyphoonDefinition *definition) {
        [definition useInitializer:@selector(init)];
    }];
}

- (UIViewController *)launchScreen {
    return [TyphoonDefinition withClass:[LaunchScreen class] configuration:^(TyphoonDefinition *definition) {
        [definition useInitializer:@selector(init)];
    }];
}

@end

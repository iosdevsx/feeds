//
//  JDMainAssembly.m
//  feeds
//
//  Created by yury.loginov on 03/07/2016.
//  Copyright © 2016 jsd. All rights reserved.
//

#import "JDMainAssembly.h"

#import "JDMainViewController.h"
#import "JDMainInteractor.h"
#import "JDMainRouter.h"
#import "JDMainPresenter.h"

@implementation JDMainAssembly

- (JDMainViewController *)viewMainModule {
    return [TyphoonDefinition withClass:[JDMainViewController class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(eventHandler)
                                                    with:[self presenterMainModule]];
                          }];
}

- (JDMainInteractor *)interactorMainModule {
    return [TyphoonDefinition withClass:[JDMainInteractor class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(output)
                                                    with:[self presenterMainModule]];
                          }];
}

- (JDMainPresenter *)presenterMainModule {
    return [TyphoonDefinition withClass:[JDMainPresenter class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(userInterface)
                                                    with:[self viewMainModule]];
                              [definition injectProperty:@selector(interactor)
                                                    with:[self interactorMainModule]];
                              [definition injectProperty:@selector(router)
                                                    with:[self routerMainModule]];
                          }];
}

- (JDMainRouter *)routerMainModule {
    return [TyphoonDefinition withClass:[JDMainRouter class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(viewController)
                                                    with:[self viewMainModule]];
                              [definition injectProperty:@selector(mainModuleFactory) with:self];
                          }];
}

@end

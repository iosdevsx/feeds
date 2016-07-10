//
//  JDWebAssembly.m
//  feeds
//
//  Created by yury loginov on 10/07/2016.
//  Copyright © 2016 jsd. All rights reserved.
//

#import "JDWebAssembly.h"

#import "JDWebViewController.h"
#import "JDWebInteractor.h"
#import "JDWebRouter.h"
#import "JDWebPresenter.h"

@implementation JDWebAssembly

- (JDWebViewController *)viewWebModule {
    return [TyphoonDefinition withClass:[JDWebViewController class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(eventHandler)
                                                    with:[self presenterWebModule]];
                          }];
}

- (JDWebInteractor *)interactorWebModule {
    return [TyphoonDefinition withClass:[JDWebInteractor class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(output)
                                                    with:[self presenterWebModule]];
                          }];
}

- (JDWebPresenter *)presenterWebModule {
    return [TyphoonDefinition withClass:[JDWebPresenter class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(userInterface)
                                                    with:[self viewWebModule]];
                              [definition injectProperty:@selector(interactor)
                                                    with:[self interactorWebModule]];
                              [definition injectProperty:@selector(router)
                                                    with:[self routerWebModule]];
                          }];
}

- (JDWebRouter *)routerWebModule {
    return [TyphoonDefinition withClass:[JDWebRouter class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(viewController)
                                                    with:[self viewWebModule]];
                          }];
}

@end

//
//  JDAuthAssembly.m
//  feeds
//
//  Created by Yury Loginov on 06/07/2016.
//  Copyright © 2016 jsd. All rights reserved.
//

#import "JDAuthAssembly.h"

#import "JDAuthViewController.h"
#import "JDAuthInteractor.h"
#import "JDAuthRouter.h"
#import "JDAuthPresenter.h"
#import "JDApplicationAssembly.h"

@implementation JDAuthAssembly

- (JDAuthViewController *)viewAuthModule {
    return [TyphoonDefinition withClass:[JDAuthViewController class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(eventHandler)
                                                    with:[self presenterAuthModule]];
                          }];
}

- (JDAuthInteractor *)interactorAuthModule {
    return [TyphoonDefinition withClass:[JDAuthInteractor class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(output)
                                                    with:[self presenterAuthModule]];
                          }];
}

- (JDAuthPresenter *)presenterAuthModule {
    return [TyphoonDefinition withClass:[JDAuthPresenter class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(userInterface)
                                                    with:[self viewAuthModule]];
                              [definition injectProperty:@selector(interactor)
                                                    with:[self interactorAuthModule]];
                              [definition injectProperty:@selector(router)
                                                    with:[self routerAuthModule]];
                              [definition injectProperty:@selector(navigationController)
                                                    with:self.appAssembly.mainNavigation];
                          }];
}

- (JDAuthRouter *)routerAuthModule {
    return [TyphoonDefinition withClass:[JDAuthRouter class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(viewController)
                                                    with:[self viewAuthModule]];
                              [definition injectProperty:@selector(authFactory)
                                                    with:self];
                              [definition injectProperty:@selector(rootNavigation)
                                                    with:self.appAssembly.mainNavigation];
                          }];
}


@end

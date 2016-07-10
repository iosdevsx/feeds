//
//  JDFeedsAssembly.m
//  feeds
//
//  Created by yury loginov on 10/07/2016.
//  Copyright © 2016 jsd. All rights reserved.
//

#import "JDFeedsAssembly.h"

#import "JDFeedsViewController.h"
#import "JDFeedsInteractor.h"
#import "JDFeedsRouter.h"
#import "JDFeedsPresenter.h"

@implementation JDFeedsAssembly

- (JDFeedsViewController *)viewFeedsModule {
    return [TyphoonDefinition withClass:[JDFeedsViewController class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(eventHandler)
                                                    with:[self presenterFeedsModule]];
                          }];
}

- (JDFeedsInteractor *)interactorFeedsModule {
    return [TyphoonDefinition withClass:[JDFeedsInteractor class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(output)
                                                    with:[self presenterFeedsModule]];
                          }];
}

- (JDFeedsPresenter *)presenterFeedsModule {
    return [TyphoonDefinition withClass:[JDFeedsPresenter class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(userInterface)
                                                    with:[self viewFeedsModule]];
                              [definition injectProperty:@selector(interactor)
                                                    with:[self interactorFeedsModule]];
                              [definition injectProperty:@selector(router)
                                                    with:[self routerFeedsModule]];
                          }];
}

- (JDFeedsRouter *)routerFeedsModule {
    return [TyphoonDefinition withClass:[JDFeedsRouter class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(viewController)
                                                    with:[self viewFeedsModule]];
                          }];
}

@end

//
//  JDWebPresenter.h
//  feeds
//
//  Created by yury loginov on 10/07/2016.
//  Copyright © 2016 jsd. All rights reserved.
//

#import "JDWebViewOutput.h"
#import "JDWebInteractorOutput.h"
#import "JDWebModuleInput.h"

@protocol JDWebViewInput;
@protocol JDWebInteractorInput;
@protocol JDWebRouterInput;

@interface JDWebPresenter : NSObject <JDWebModuleInput, JDWebViewOutput, JDWebInteractorOutput>

@property (nonatomic, weak) id<JDWebViewInput> userInterface;
@property (nonatomic, strong) id<JDWebInteractorInput> interactor;
@property (nonatomic, strong) id<JDWebRouterInput> router;

@end

//
//  JDAuthPresenter.h
//  feeds
//
//  Created by Yury Loginov on 06/07/2016.
//  Copyright © 2016 jsd. All rights reserved.
//

#import "JDAuthViewOutput.h"
#import "JDAuthInteractorOutput.h"
#import "JDAuthModuleInput.h"

@protocol JDAuthViewInput;
@protocol JDAuthInteractorInput;
@protocol JDAuthRouterInput;

@interface JDAuthPresenter : NSObject <JDAuthModuleInput, JDAuthViewOutput, JDAuthInteractorOutput>

@property (nonatomic, weak) id<JDAuthViewInput> userInterface;
@property (nonatomic, strong) id<JDAuthInteractorInput> interactor;
@property (nonatomic, strong) id<JDAuthRouterInput> router;
@property (nonatomic, strong) UINavigationController *navigationController;

@end

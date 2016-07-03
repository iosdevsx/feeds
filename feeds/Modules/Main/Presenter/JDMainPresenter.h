//
//  JDMainPresenter.h
//  feeds
//
//  Created by yury.loginov on 03/07/2016.
//  Copyright © 2016 jsd. All rights reserved.
//

#import "JDMainViewOutput.h"
#import "JDMainInteractorOutput.h"
#import "JDMainModuleInput.h"

@protocol JDMainViewInput;
@protocol JDMainInteractorInput;
@protocol JDMainRouterInput;

@interface JDMainPresenter : NSObject <JDMainModuleInput, JDMainViewOutput, JDMainInteractorOutput>

@property (nonatomic, weak) id<JDMainViewInput> userInterface;
@property (nonatomic, strong) id<JDMainInteractorInput> interactor;
@property (nonatomic, strong) id<JDMainRouterInput> router;

@end

//
//  JDFeedsPresenter.h
//  feeds
//
//  Created by yury loginov on 10/07/2016.
//  Copyright © 2016 jsd. All rights reserved.
//

#import "JDFeedsViewOutput.h"
#import "JDFeedsInteractorOutput.h"
#import "JDFeedsModuleInput.h"

@protocol JDFeedsViewInput;
@protocol JDFeedsInteractorInput;
@protocol JDFeedsRouterInput;

@interface JDFeedsPresenter : NSObject <JDFeedsModuleInput, JDFeedsViewOutput, JDFeedsInteractorOutput>

@property (nonatomic, weak) id<JDFeedsViewInput> userInterface;
@property (nonatomic, strong) id<JDFeedsInteractorInput> interactor;
@property (nonatomic, strong) id<JDFeedsRouterInput> router;

@end

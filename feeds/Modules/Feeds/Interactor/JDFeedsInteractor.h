//
//  JDFeedsInteractor.h
//  feeds
//
//  Created by yury loginov on 10/07/2016.
//  Copyright © 2016 jsd. All rights reserved.
//

#import "JDFeedsInteractorInput.h"

@protocol JDFeedsInteractorOutput;

@interface JDFeedsInteractor : NSObject <JDFeedsInteractorInput>

@property (nonatomic, weak) id<JDFeedsInteractorOutput> output;

@end

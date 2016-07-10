//
//  JDWebInteractor.h
//  feeds
//
//  Created by yury loginov on 10/07/2016.
//  Copyright © 2016 jsd. All rights reserved.
//

#import "JDWebInteractorInput.h"

@protocol JDWebInteractorOutput;

@interface JDWebInteractor : NSObject <JDWebInteractorInput>

@property (nonatomic, weak) id<JDWebInteractorOutput> output;

@end

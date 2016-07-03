//
//  JDMainInteractor.h
//  feeds
//
//  Created by yury.loginov on 03/07/2016.
//  Copyright © 2016 jsd. All rights reserved.
//

#import "JDMainInteractorInput.h"

@protocol JDMainInteractorOutput;

@interface JDMainInteractor : NSObject <JDMainInteractorInput>

@property (nonatomic, weak) id<JDMainInteractorOutput> output;

@end

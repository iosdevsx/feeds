//
//  JDAuthInteractor.h
//  feeds
//
//  Created by Yury Loginov on 06/07/2016.
//  Copyright © 2016 jsd. All rights reserved.
//

#import "JDAuthInteractorInput.h"

@protocol JDAuthInteractorOutput;

@interface JDAuthInteractor : NSObject <JDAuthInteractorInput>

@property (nonatomic, weak) id<JDAuthInteractorOutput> output;

@end

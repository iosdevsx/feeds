//
//  JDMainModuleFactory.h
//  feeds
//
//  Created by jsd on 03.07.16.
//  Copyright © 2016 jsd. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol JDMainModuleInput;

@protocol JDMainModuleFactory <NSObject>

- (id<JDMainModuleInput>)presenterMainModule;

@end

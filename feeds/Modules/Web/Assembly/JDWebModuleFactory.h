//
//  JDWebModuleFactory.h
//  feeds
//
//  Created by Юрий Логинов on 10.07.16.
//  Copyright © 2016 jsd. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol JDWebModuleInput;

@protocol JDWebModuleFactory <NSObject>

- (id <JDWebModuleInput>)presenterWebModule;

@end

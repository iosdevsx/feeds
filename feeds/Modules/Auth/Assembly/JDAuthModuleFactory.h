//
//  JDAuthModuleFactory.h
//  feeds
//
//  Created by Юрий Логинов on 06.07.16.
//  Copyright © 2016 jsd. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol JDAuthModuleInput;

@protocol JDAuthModuleFactory <NSObject>

- (id <JDAuthModuleInput> )presenterAuthModule;

@end

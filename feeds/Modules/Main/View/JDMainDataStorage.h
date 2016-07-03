//
//  JDMainDataStorage.h
//  feeds
//
//  Created by jsd on 03.07.16.
//  Copyright © 2016 jsd. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface JDMainDataStorage : NSObject <UITableViewDelegate, UITableViewDataSource>

@property (strong, nonatomic) NSArray *items;

@end

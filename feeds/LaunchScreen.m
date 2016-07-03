//
//  LaunchScreen.m
//  feeds
//
//  Created by jsd on 03.07.16.
//  Copyright © 2016 jsd. All rights reserved.
//

#import "LaunchScreen.h"

@implementation LaunchScreen

- (instancetype)init
{
    self = [[NSBundle mainBundle] loadNibNamed:@"LaunchScreen" owner:nil options:nil].firstObject;
    return self;
}

@end

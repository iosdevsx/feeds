//
//  JDMainViewController.h
//  feeds
//
//  Created by yury.loginov on 03/07/2016.
//  Copyright © 2016 jsd. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "JDMainViewInput.h"
#import "JDMainDataStorage.h"


@protocol JDMainViewOutput;


@interface JDMainViewController : UIViewController <JDMainViewInput>

@property (nonatomic, strong) id<JDMainViewOutput> eventHandler;
@property (strong, nonatomic) JDMainDataStorage *dataStorage;

@end

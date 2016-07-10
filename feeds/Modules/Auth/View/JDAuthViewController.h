//
//  JDAuthViewController.h
//  feeds
//
//  Created by Yury Loginov on 06/07/2016.
//  Copyright © 2016 jsd. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "JDAuthViewInput.h"


@protocol JDAuthViewOutput;
@class VKAuthorizeController;

@interface JDAuthViewController : UIViewController <JDAuthViewInput>

@property (nonatomic, strong) id<JDAuthViewOutput> eventHandler;
@property (nonatomic, strong) VKAuthorizeController *vkAuthController;

@end

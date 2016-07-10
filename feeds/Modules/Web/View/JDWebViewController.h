//
//  JDWebViewController.h
//  feeds
//
//  Created by yury loginov on 10/07/2016.
//  Copyright © 2016 jsd. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "JDWebViewInput.h"


@protocol JDWebViewOutput;


@interface JDWebViewController : UIViewController <JDWebViewInput>

@property (nonatomic, strong) id<JDWebViewOutput> eventHandler;

@end

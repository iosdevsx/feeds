//
//  JDFeedsViewController.h
//  feeds
//
//  Created by yury loginov on 10/07/2016.
//  Copyright © 2016 jsd. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "JDFeedsViewInput.h"


@protocol JDFeedsViewOutput;


@interface JDFeedsViewController : UIViewController <JDFeedsViewInput>

@property (nonatomic, strong) id<JDFeedsViewOutput> eventHandler;

@end

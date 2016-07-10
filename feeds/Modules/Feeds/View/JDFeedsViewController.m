//
//  JDFeedsViewController.m
//  feeds
//
//  Created by yury loginov on 10/07/2016.
//  Copyright © 2016 jsd. All rights reserved.
//

#import "JDFeedsViewController.h"
#import "JDFeedsViewOutput.h"


@interface JDFeedsViewController ()

@end


@implementation JDFeedsViewController

#pragma mark - Методы жизненного цикла

- (void)viewDidLoad {
	[super viewDidLoad];

	[self.eventHandler didTriggerViewReadyEvent];
}

#pragma mark - JDFeedsViewInput

- (void)setupInitialState {
	// В этом методе происходит настройка параметров view, зависящих от ее жизненого цикла (создание элементов, анимации и пр.)
}

@end

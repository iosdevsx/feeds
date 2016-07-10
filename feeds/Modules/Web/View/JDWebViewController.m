//
//  JDWebViewController.m
//  feeds
//
//  Created by yury loginov on 10/07/2016.
//  Copyright © 2016 jsd. All rights reserved.
//

#import "JDWebViewController.h"
#import "JDWebViewOutput.h"


@interface JDWebViewController ()

@end


@implementation JDWebViewController

#pragma mark - Методы жизненного цикла

- (void)viewDidLoad {
	[super viewDidLoad];

	[self.eventHandler didTriggerViewReadyEvent];
}

#pragma mark - JDWebViewInput

- (void)setupInitialState {
	// В этом методе происходит настройка параметров view, зависящих от ее жизненого цикла (создание элементов, анимации и пр.)
}

@end

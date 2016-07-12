//
//  JDWebViewController.m
//  feeds
//
//  Created by yury loginov on 10/07/2016.
//  Copyright © 2016 jsd. All rights reserved.
//

#import "JDWebViewController.h"
#import "JDWebViewOutput.h"
#import "Masonry.h"


@interface JDWebViewController ()

@property (nonatomic, strong) UIWebView *webView;

@end


@implementation JDWebViewController

#pragma mark - Методы жизненного цикла

- (void)viewDidLoad {
	[super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
	[self.eventHandler didTriggerViewReadyEvent];
}

#pragma mark - JDWebViewInput

- (void)setupInitialState {
	// В этом методе происходит настройка параметров view, зависящих от ее жизненого цикла (создание элементов, анимации и пр.)
}

- (void)setupInitialStateWithRequest:(NSURLRequest *)request {
    self.webView = [[UIWebView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    [self.view addSubview:self.webView];
    [self setupContraints];
    [self.webView loadRequest:request];
}

- (void)setupContraints {
    [self.webView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view.mas_top);
        make.bottom.equalTo(self.view.mas_bottom);
        make.left.equalTo(self.view.mas_left);
        make.right.equalTo(self.view.mas_right);
    }];
}

@end

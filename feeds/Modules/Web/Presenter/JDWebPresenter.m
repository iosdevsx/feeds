//
//  JDWebPresenter.m
//  feeds
//
//  Created by yury loginov on 10/07/2016.
//  Copyright © 2016 jsd. All rights reserved.
//

#import "JDWebPresenter.h"

#import "JDWebViewInput.h"
#import "JDWebInteractorInput.h"
#import "JDWebRouterInput.h"

@interface JDWebPresenter()

@property (nonatomic, strong) NSURLRequest *urlRequest;

@end

@implementation JDWebPresenter

@synthesize userInterface = _userInterface;
static NSString* const VK_APP_ID = @"5277780";

#pragma mark - JDWebModuleInput

- (void)configureModule {
    
}

- (void)configureModuleWith:(NSString *)stringUrl {
    
}

- (void)configureModuleWithVk {
    NSString* loginUrlString = [NSString stringWithFormat:
                                @"https://oauth.vk.com/authorize?"
                                "client_id=%@&"
                                "display=mobile&"
                                "redirect_uri=https://oauth.vk.com/blank.html&"
                                "scope=8194&"
                                "response_type=token&"
                                "v=5.50", VK_APP_ID];
    NSURL *loginUrl = [NSURL URLWithString:loginUrlString];
    NSURLRequest *loginRequest = [NSURLRequest requestWithURL:loginUrl];
    self.urlRequest = loginRequest;
}

- (void)configureModuleWithFb {
}

#pragma mark - JDWebViewOutput

- (void)didTriggerViewReadyEvent  {
	[self.userInterface setupInitialStateWithRequest:self.urlRequest];
}

#pragma mark - JDWebInteractorOutput

@end

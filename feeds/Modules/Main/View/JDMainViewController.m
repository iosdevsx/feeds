//
//  JDMainViewController.m
//  feeds
//
//  Created by yury.loginov on 03/07/2016.
//  Copyright © 2016 jsd. All rights reserved.
//

#import "JDMainViewController.h"
#import "JDMainViewOutput.h"


@interface JDMainViewController ()

@property (strong, nonatomic) UITableView *tableView;
@property (strong, nonatomic) NSArray *items;

@end


@implementation JDMainViewController

#pragma mark - Методы жизненного цикла

- (void)viewDidLoad {
	[super viewDidLoad];

	[self.eventHandler didTriggerViewReadyEvent];
}

#pragma mark - JDMainViewInput

- (void)setupInitialState {
    self.navigationItem.title = @"Hello!";
    
    self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    self.tableView.dataSource = self.dataStorage;
    self.tableView.delegate = self.dataStorage;
    [self.view addSubview:self.tableView];
}

- (void)showTableWithData:(NSArray *)data {
    self.dataStorage.items = data;
    [self.tableView reloadData];
}



@end

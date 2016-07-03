//
//  JDMainViewController.m
//  feeds
//
//  Created by yury.loginov on 03/07/2016.
//  Copyright © 2016 jsd. All rights reserved.
//

#import "JDMainViewController.h"
#import "JDMainViewOutput.h"


@interface JDMainViewController () <UITableViewDataSource>

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
    //TODO: View не должна решать, какие данные показывать. Вынести в presenter
    self.items = @[@"1", @"2", @"3", @"4", @"5"];
    self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    self.tableView.dataSource = self;
    [self.view addSubview:self.tableView];
    [self.tableView reloadData];
}


//TODO: вынести в отдельный файл
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.items.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *identifier = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
        cell.textLabel.text = self.items[indexPath.row];
    }
    return cell;
}

@end

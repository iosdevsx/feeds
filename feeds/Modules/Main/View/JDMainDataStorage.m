//
//  JDMainDataStorage.m
//  feeds
//
//  Created by jsd on 03.07.16.
//  Copyright © 2016 jsd. All rights reserved.
//

#import "JDMainDataStorage.h"

@implementation JDMainDataStorage

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

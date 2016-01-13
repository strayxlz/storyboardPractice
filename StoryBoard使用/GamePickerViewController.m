//
//  GamePickerViewController.m
//  StoryBoard使用
//
//  Created by Newsee on 16/1/11.
//  Copyright © 2016年 Newsee. All rights reserved.
//

#import "GamePickerViewController.h"

@interface GamePickerViewController () {
    
    NSArray *_games;
    NSUInteger *_selectedIndex;
}

@end

@implementation GamePickerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _games = [NSArray arrayWithObjects:@"LOL",@"Angry Birds",@"The War Of World ",@"Play Basketball", nil];
    
    _selectedIndex = [_games indexOfObject:self.game];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Incomplete implementation, return the number of sections
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    return [_games count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"GameCell"];
    cell.textLabel.text = [_games objectAtIndex:indexPath.row];
    
    if (indexPath.row == _selectedIndex) {
        cell.accessoryType = UITableViewCellAccessoryCheckmark;
    }else {
        cell.accessoryType = UITableViewCellAccessoryNone;
    }
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    if (_selectedIndex != NSNotFound) {
        
        UITableViewCell *cell = [tableView cellForRowAtIndexPath:[NSIndexPath indexPathForRow:_selectedIndex inSection:0]];
        cell.accessoryType = UITableViewCellAccessoryNone;
        
    }
    
    _selectedIndex = indexPath.row;
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    cell.accessoryType = UITableViewCellAccessoryCheckmark;
    NSString *theGame = [_games objectAtIndex:indexPath.row];
    [self.delegate gamePickerViewController:self didSelectGame:theGame];
    
    
}

@end

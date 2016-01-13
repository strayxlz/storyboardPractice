//
//  PlayerDetailsViewController.h
//  StoryBoard使用
//
//  Created by Newsee on 16/1/4.
//  Copyright © 2016年 Newsee. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GamePickerViewController.h"

@class Player;
@class PlayerDetailsViewController;

@protocol PlayerDetailsViewControllerDelegate <NSObject>

- (void)playerDetailsViewControllerDidCancel:(PlayerDetailsViewController *)controller;
- (void)playerDetailsViewControllerDidSave:(PlayerDetailsViewController *)controller didAddPlayer:(Player *)player;

@end

@interface PlayerDetailsViewController : UITableViewController <GamePickerViewControllerDelegate>

@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UILabel *detailLabel;
@property (nonatomic,weak)id <PlayerDetailsViewControllerDelegate> delegate;

@end

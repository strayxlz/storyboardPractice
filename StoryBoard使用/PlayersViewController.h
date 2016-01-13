//
//  PlayersViewController.h
//  StoryBoard使用
//
//  Created by Newsee on 16/1/4.
//  Copyright © 2016年 Newsee. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PlayerDetailsViewController.h"

@interface PlayersViewController : UITableViewController <PlayerDetailsViewControllerDelegate>

@property(nonatomic,strong)NSMutableArray *players;

@end

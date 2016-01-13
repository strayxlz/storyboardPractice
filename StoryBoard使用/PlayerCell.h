//
//  PlayerCell.h
//  StoryBoard使用
//
//  Created by Newsee on 16/1/4.
//  Copyright © 2016年 Newsee. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PlayerCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *gameLabel;
@property (weak, nonatomic) IBOutlet UIImageView *ratingImageView;

@end

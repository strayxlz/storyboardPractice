//
//  GamePickerViewController.h
//  StoryBoard使用
//
//  Created by Newsee on 16/1/11.
//  Copyright © 2016年 Newsee. All rights reserved.
//

#import <UIKit/UIKit.h>

@class GamePickerViewController;
@protocol GamePickerViewControllerDelegate <NSObject>

- (void)gamePickerViewController:(GamePickerViewController *)controller didSelectGame:(NSString *)game;

@end

@interface GamePickerViewController : UITableViewController

@property (nonatomic,weak) id <GamePickerViewControllerDelegate> delegate;
@property (nonatomic,strong) NSString *game;

@end

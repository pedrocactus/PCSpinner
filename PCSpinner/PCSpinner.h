//
//  PCSpinner.h
//  PCSpinner
//
//  Created by avisto on 01/08/13.
//  Copyright (c) 2013 com.pedrocactus.ios. All rights reserved.
//

#import <UIKit/UIKit.h>
@class PCSpinner;

@protocol PCSpinnerDelegate

-(void) didSelectedItem: (NSIndexPath*) indexpath;

@end

typedef void(^PCSpinnerCallBack)(NSIndexPath *path);
typedef void(^PCSpinnerCallBackForHeight)(NSIndexPath *path);

@interface PCSpinner : UIView<UITableViewDataSource,UITableViewDelegate>

@property(nonatomic,strong) UITableView *dropDownMenu;
@property(nonatomic,strong) UIButton *selectedItemView;
@property(nonatomic, strong) NSMutableDictionary *itemsDictionary;
@property(nonatomic,strong) PCSpinnerCallBack dropDownCellForRowAtPath;
@property(nonatomic,strong) PCSpinnerCallBackForHeight dropDownHeightForRowAtPath;

-(void)setDictionarySource: (NSMutableDictionary*) itemsDictionary;


@end

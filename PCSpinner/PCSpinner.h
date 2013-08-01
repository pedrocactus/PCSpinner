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

typedef UITableViewCell* (^PCSpinnerCallBack) (NSIndexPath *path);
typedef int (^PCSpinnerCallBackForHeight) (NSIndexPath *path);

@interface PCSpinner : UIView<UITableViewDataSource,UITableViewDelegate>

@property(nonatomic,strong) UITableView *dropDownMenu;
@property(nonatomic,strong) UIButton *selectedItemView;
@property(nonatomic, strong) NSMutableDictionary *itemsDictionary;
@property(nonatomic,copy) PCSpinnerCallBack dropDownCellForRowAtPath;
@property(nonatomic,copy) PCSpinnerCallBackForHeight dropDownHeightForRowAtPath;
- (id)initWithFrame:(CGRect)frame withDictionary: (NSMutableDictionary*) dico;
-(void)setDictionarySource: (NSMutableDictionary*) itemsDictionary;


@end

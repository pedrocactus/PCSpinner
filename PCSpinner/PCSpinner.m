//
//  PCSpinner.m
//  PCSpinner
//
//  Created by avisto on 01/08/13.
//  Copyright (c) 2013 com.pedrocactus.ios. All rights reserved.
//

#import "PCSpinner.h"


@implementation PCSpinner

- (id)initWithFrame:(CGRect)frame
{
    
    self = [super initWithFrame:frame];
    if (self) {
        _selectedItemView = [[UIButton alloc] initWithFrame:frame];
        [self addSubview:_selectedItemView];
        _dropDownMenu = [[UITableView alloc] init];
        _dropDownMenu.delegate = self;
        _dropDownMenu.dataSource = self;        
    }
    return self;
}


-(void)setDictionarySource: (NSMutableDictionary*) itemsDictionary{
    _itemsDictionary = itemsDictionary;
}



/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end

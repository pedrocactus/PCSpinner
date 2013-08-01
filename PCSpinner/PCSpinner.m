//
//  PCSpinner.m
//  PCSpinner
//
//  Created by avisto on 01/08/13.
//  Copyright (c) 2013 com.pedrocactus.ios. All rights reserved.
//

#import "PCSpinner.h"


@implementation PCSpinner

- (id)initWithFrame:(CGRect)frame withDictionary: (NSMutableDictionary*) dico
{
    
    self = [super initWithFrame:frame];
    if (self) {
        _selectedItemView = [[UIButton alloc] initWithFrame:frame];
        [self addSubview:_selectedItemView];
        _dropDownMenu = [[UITableView alloc] initWithFrame:CGRectMake(frame.origin.x , frame.origin.y +frame.size.height, frame.size.width, [[UIScreen mainScreen]bounds].size.height)];
        _dropDownMenu.delegate = self;
        _dropDownMenu.dataSource = self;
        _itemsDictionary = dico;
        NSString *buttonLabel = [[_itemsDictionary allKeys] objectAtIndex:0];
        [_selectedItemView setTitle:buttonLabel forState:UIControlStateNormal];
        [self addSubview:_dropDownMenu];
//        self.backgroundColor = [UIColor blueColor];
    }
    return self;
}



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
        return [[[_itemsDictionary objectForKey:@"activated"] allKeys] count];
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = self.dropDownCellForRowAtPath(indexPath);
    
    if(cell!=nil){
        return cell;
    }else{
        NSLog(@"Cell needs to be created with block dropDownCellForRowAtPath");
        return nil;
    }
     
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 0
    ;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    int height = self.dropDownHeightForRowAtPath(indexPath);
    
    return height;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
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

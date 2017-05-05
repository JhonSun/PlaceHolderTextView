//
//  PlaceHolderTextView.h
//  Hui
//
//  Created by ShengWang Gao on 17/4/20.
//  Copyright © 2017年 Hui. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PlaceHolderTextView : UITextView

@property (nonatomic, copy) NSString *placeholder;
@property (nonatomic, copy) UIColor *placeholderColor;

- (void)showOrHidenPlaceholderLabelWith:(NSString *)text;

@end

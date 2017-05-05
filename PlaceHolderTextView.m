//
//  PlaceHolderTextView.m
//  Hui
//
//  Created by ShengWang Gao on 17/4/20.
//  Copyright © 2017年 Hui. All rights reserved.
//

#import "PlaceHolderTextView.h"

@interface PlaceHolderTextView ()<UITextViewDelegate>

@property (nonatomic, strong) UILabel *placeholderLabel;

@end

@implementation PlaceHolderTextView

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(5, 7, self.frame.size.width - 10, 20)];
        label.font = self.font;
        [self addSubview:label];
        self.placeholderLabel = label;
        self.placeholderColor = [UIColor colorWithHexString:@"999999"];
        self.placeholder = @"请输入";
    }
    return self;
}

#pragma mark - set
- (void)setPlaceholderColor:(UIColor *)placeholderColor {
    _placeholderColor = placeholderColor;
    self.placeholderLabel.textColor = _placeholderColor;
}

- (void)setPlaceholder:(NSString *)placeholder {
    _placeholder = placeholder;
    self.placeholderLabel.text = _placeholder;
}

#pragma mark - public
- (void)showOrHidenPlaceholderLabelWith:(NSString *)text {
    if (text.length > 0) {
        self.placeholderLabel.hidden = YES;
    } else {
        self.placeholderLabel.hidden = NO;
    }
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end

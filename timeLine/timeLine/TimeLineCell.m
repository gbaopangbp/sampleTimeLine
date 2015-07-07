//
//  TimeLineCell.m
//  timeLine
//
//  Created by tirostiros on 15/7/7.
//  Copyright (c) 2015年 cn.com.buslink. All rights reserved.
//

#import "TimeLineCell.h"
@interface TimeLineCell()
@property (weak, nonatomic) IBOutlet UIView *upLine;
@property (weak, nonatomic) IBOutlet UIView *downLine;

@end

@implementation TimeLineCell

- (void)awakeFromNib {
    // Initialization code
    _upLine.hidden = NO;
    _downLine.hidden = NO;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)setIsFirst:(bool)isFirst{
    _isFirst = isFirst;
    _upLine.hidden = isFirst;

}

- (void)setIsLast:(bool)isLast{
    _isLast = isLast;
        _downLine.hidden = isLast;
}

@end

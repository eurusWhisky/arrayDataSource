//
//  TestTableViewCell.m
//  dataSourceTest
//
//  Created by 陈伟杰 on 2020/4/28.
//  Copyright © 2020 陈伟杰. All rights reserved.
//

#import "TestTableViewCell.h"
@interface TestTableViewCell ()
@property(nonatomic,strong)UILabel *lab;
@end
@implementation TestTableViewCell

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self addSubview:self.lab];
    }
    return self;
}

-(void)setTestStr:(NSString *)testStr{
    _testStr = testStr;
    self.lab.text = testStr;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(UILabel *)lab{
    if (!_lab) {
        _lab = [[UILabel alloc] initWithFrame:CGRectMake([UIScreen mainScreen].bounds.size.width-100, 0, 100, 22)];
    }
    return _lab;
}

@end

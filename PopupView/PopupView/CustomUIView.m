//
//  CustomUIView.m
//  PopupView
//
//  Created by user on 2019/11/05.
//  Copyright © 2019 Jaehu Jeon. All rights reserved.
//

#import "CustomUIView.h"

@interface CustomUIView()

@property (strong, nonatomic) IBOutlet UIView *contentView;

@end

@implementation CustomUIView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        [self initCustomView];
    }
    return self;
}

- (id) initWithCoder:(NSCoder *)aDecoder{
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self initCustomView];
    }
    return self;
}

- (void) initCustomView {
    [[NSBundle mainBundle] loadNibNamed:@"CustomUIView" owner:self options:nil];
    [self addSubview:self.contentView];
    self.contentView.frame = self.bounds;
}

- (IBAction)closeView:(id)sender {
    [self removeFromSuperview];
}

@end

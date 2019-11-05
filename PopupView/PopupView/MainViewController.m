//
//  MainViewController.m
//  PopupView
//
//  Created by user on 2019/11/05.
//  Copyright © 2019 Jaehu Jeon. All rights reserved.
//

#import "MainViewController.h"
#import "CustomUIView.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (IBAction)showPupupView:(id)sender {
    CustomUIView *view = [[CustomUIView alloc]init];
    CGRect pRect = self.view.frame;
    CGFloat x = (pRect.size.width - 300) / 2;
    CGFloat y = (pRect.size.height - 200) / 2;
    CGRect nRect = CGRectMake(x, y, 300, 200);
    view.frame = nRect;
    [self.view addSubview:view];
    //[self.view bringSubviewToFront:view];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

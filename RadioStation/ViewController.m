//
//  ViewController.m
//  RadioStation
//
//  Created by SBTUR Principal on 8/20/15.
//  Copyright (c) 2015 SBTUR Principal. All rights reserved.
//

#import "ViewController.h"
#import <Foundation/Foundation.h>
#import "RadioManage.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *bgFlickrImage;
@property (weak, nonatomic) IBOutlet UIButton *playButton;
@property (strong, nonatomic) RadioManage * radioManager;

@end

@implementation ViewController

-(void) setRadioManager:(RadioManage *)radioManager
{
    if(!radioManager) _radioManager= [[RadioManage alloc] init];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self.radioManager setPlayingURL:@"http://www.capitalfm.com/how-to-listen/online/"];
    
    // code for animation
//  [UIView transitionWithView:self.view
//                    duration:1.5 options:UIViewAnimationOptionTransitionCrossDissolve animations:^{
//                        <#code#>
//                    } completion:^(BOOL finished) {
//                        <#code#>
//                    }]
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

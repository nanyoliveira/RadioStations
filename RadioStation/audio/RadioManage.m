//
//  RadioManage.m
//  RadioStation
//
//  Created by SBTUR Principal on 8/25/15.
//  Copyright (c) 2015 SBTUR Principal. All rights reserved.
//

#import "RadioManage.h"
#import <AVFoundation/AVFoundation.h>

@interface RadioManage()

@property (strong, nonatomic) NSString * radioURL;
@property (strong, nonatomic) AVAudioPlayer *audioPlayer;
@property (strong, nonatomic)  NSURL * currentURL;

@end

@implementation RadioManage


- (instancetype)init
{
    self = [super init];
    if (self) {
        //initialization
        
        self.radioURL = @"http://radioplayer.kissfmuk.com/live/"; // << set here the default radio
        
    }
    return self;
}


-(void) setRadioURL:(NSString *)radioURL
{
    _radioURL = radioURL;
    [self setURL];
}

-(void)setURL
{
    if(!self.currentURL) self.currentURL = [[NSURL alloc]init];
    self.currentURL = [NSURL URLWithString:self.radioURL];
}


-(void) setPlayingURL: (NSString *)radioURL
{
    self.radioURL = radioURL;
        [self setAudioPlayer];

}



-(void) setAudioPlayer
{
    NSError * error = nil;
    
    if(self.audioPlayer) [self.audioPlayer stop]; self.audioPlayer = nil;
    self.audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:self.currentURL error:&error];
    
}

-(NSString *) getPlayingURL
{
    return self.radioURL;
}






@end

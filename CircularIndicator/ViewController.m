//
//  ViewController.m
//  CircularIndicator
//
//  Created by Michael on 5/17/15.
//  Copyright (c) 2015 michael. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidAppear {
    [super viewDidLoad];
    
    timer = [NSTimer scheduledTimerWithTimeInterval:1.0/30.0 target:self selector:@selector(updateTimer) userInfo:nil repeats:YES];
    
    startTime = [NSDate timeIntervalSinceReferenceDate];
    
    timerTime = 60;
    
    indicator.indicatorWidth = -1;
    indicator.percentage = 0;
    indicator.delegate = self;
    indicator.clockwise = true;
    
}

-(void)updateTimer
{
    NSTimeInterval interval = [NSDate timeIntervalSinceReferenceDate] - startTime;
    
    if (interval > timerTime)
        indicator.percentage = 1;
    else
        indicator.percentage = interval/timerTime;
    
    
}

-(NSAttributedString *)updateText:(CGFloat)percentFilled
{
    CGFloat time = timerTime - percentFilled *timerTime;
    
    if (time>=3600)
        return [[NSAttributedString alloc] initWithString:[NSString stringWithFormat:@"%d:%d:%.2f", (int)time/3600, (int)fmod(time, 3600)/60, fmod(fmod(time, 3600), 60)]];
    else if (time>=60)
        return [[NSAttributedString alloc] initWithString:[NSString stringWithFormat:@"%d:%@", (int)time/60, ((int)fmod(time, 60) < 10) ? [NSString stringWithFormat:@"0%d", (int)fmod(time, 60)]:[NSString stringWithFormat:@"%d", (int)fmod(time, 60)] ]];
    //Can't be bothered to add brackets whooopsies
    //Basically just makes sure that it changes from a integer '3' to '03' so it doesn't look weird
    else
        return [[NSAttributedString alloc] initWithString:[NSString stringWithFormat:@"%.2f", time]];
}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];
    
    // Update the view, if already loaded.
}

@end

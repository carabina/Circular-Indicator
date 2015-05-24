//
//  ViewController.h
//  CircularIndicator
//
//  Created by Michael on 5/17/15.
//  Copyright (c) 2015 michael. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "CircularIndicator.h"


//Basically a Timer
@interface ViewController : NSViewController <IndicatorViewDelegate>
{
    IBOutlet CircularIndicator *indicator;
    
    NSTimer *timer;
    
    NSTimeInterval startTime;
    NSTimeInterval timerTime;
    
}


@end


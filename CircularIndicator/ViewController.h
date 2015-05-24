//
//  ViewController.h
//  CircularIndicator
//
//  Created by Michael on 5/17/15.
//  Copyright (c) 2015 michael. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "MLCircularIndicator.h"


//Basically a Timer
@interface ViewController : NSViewController <MLIndicatorViewDelegate>
{
    IBOutlet MLCircularIndicator *indicator;
    
    NSTimer *timer;
    
    NSTimeInterval startTime;
    NSTimeInterval timerTime;
    
}


@end


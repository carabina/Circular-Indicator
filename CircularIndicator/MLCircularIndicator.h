//
//  CircularIndicator.h
//  CircularIndicator
//
//  Created by Michael on 5/17/15.
//  Copyright (c) 2015 michael. All rights reserved.
//

#import <Cocoa/Cocoa.h>

//A delegate is here so that others can customize the text displayed, otherwise the default sets itself as the delegate to display the default timer countdown
//A timer countdown can be replaced with a percentage display, or anything else
@protocol MLIndicatorViewDelegate <NSObject>

-(NSAttributedString *)updateText:(CGFloat)percentFilled;

@end

@interface MLCircularIndicator : NSView<MLIndicatorViewDelegate>

//Color of the circular indicator
@property (readwrite, retain) NSColor *indicatorColor;

//Background color of the view
@property (readwrite, retain) NSColor *backgroundColor;

//The width of the indicator, if this is less than 0 then it fills up as a circle instead
@property (readwrite, assign) CGFloat indicatorWidth;

//Attributes of the timer text
@property (readwrite, retain) NSDictionary *stringAttr;

//Percentage filled of the circular indicator
@property (readwrite, assign) CGFloat percentage;

//Whether it starts clockwise or counter clockwise
@property (readwrite, assign) BOOL clockwise;

//Delegate
@property (readwrite, weak) id<MLIndicatorViewDelegate> delegate;




@end

//
//  CircularIndicator.m
//  CircularIndicator
//
//  Created by Michael on 5/17/15.
//  Copyright (c) 2015 michael. All rights reserved.
//

#import "MLCircularIndicator.h"

#define DEFAULT_INDICATOR_COLOR [NSColor colorWithCalibratedRed:0 green:255.0/255.0 blue:253.0/255.0 alpha:1]
//Default indicator width
#define DEFAULT_INDICATOR_WIDTH -1.0

//Default background color
#define DEFAULT_BACKGROUND_COLOR [NSColor windowBackgroundColor]

@implementation MLCircularIndicator

@synthesize percentage = _percentage;

-(NSAttributedString*)updateText:(CGFloat)percentFilled
{
    return [[NSAttributedString alloc] initWithString:[NSString stringWithFormat:@"%.2f%%", percentFilled*100]];
}

-(void)awakeFromNib
{
    self.indicatorColor = DEFAULT_INDICATOR_COLOR;
    self.backgroundColor = DEFAULT_BACKGROUND_COLOR;
    self.indicatorWidth = DEFAULT_INDICATOR_WIDTH;
    
    self.percentage = 0;
    
    _delegate = self;
    _clockwise = true;
    
    [self setNeedsDisplay:YES];
}

-(void)setPercentage:(CGFloat)percentage
{
    _percentage = percentage;
    [self setNeedsDisplay:YES];
}

-(CGFloat)percentage
{
    return _percentage;
}

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    
    [[NSColor blackColor] set];
    //[NSBezierPath fillRect:dirtyRect]; //Background Color Fill
    
    [_indicatorColor set];
    
    CGFloat lineWidth = _indicatorWidth;
    
    NSRect rect = NSMakeRect(dirtyRect.origin.x+lineWidth, dirtyRect.origin.y+lineWidth, dirtyRect.size.width, dirtyRect.size.height);
    
    
    //To fill the circle indicator
    NSBezierPath *path = [[NSBezierPath alloc] init];
    CGFloat angle = self.percentage * 360;
    
    [path moveToPoint:NSMakePoint(rect.size.width/2,rect.size.height/2)];
    [path appendBezierPathWithArcWithCenter:NSMakePoint(rect.size.width/2, rect.size.height/2) radius:rect.size.height/2-lineWidth startAngle:450 endAngle:450-angle clockwise:_clockwise];
    
    [path setLineWidth:lineWidth];
    [path fill];
   
    
    //Acts as the inside of the circle indicator using the background color
    
    if (self.indicatorWidth >= 0)
    {
        NSBezierPath *insidePath = [[NSBezierPath alloc] init];
        
        [insidePath moveToPoint:NSMakePoint(rect.size.width/2, rect.size.height/2)];
        [insidePath appendBezierPathWithArcWithCenter:NSMakePoint(rect.size.width/2, rect.size.height/2) radius:rect.size.height/2-lineWidth*2 startAngle:450 endAngle:90 clockwise:_clockwise];
        
        [self.backgroundColor set];
        [insidePath setLineWidth:lineWidth];
        [insidePath fill];
    }
    
    NSAttributedString *str = [_delegate updateText:self.percentage];
    NSPoint point = NSMakePoint(rect.size.width/2-str.size.width/2, rect.size.height/2-str.size.height/2);
    [str drawAtPoint:point];

    
}

@end

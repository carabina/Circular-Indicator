## Circular Indicator

Circular Indicator is a simple circulator that fills up a circle as a ring or a full circle.

![](http://i.imgur.com/gEPhEaO.png)
![](http://i.imgur.com/iEDCszJ.png)


## Usage


Drag a view and change its class to CircularIndicator. The amount of the indicator filled can be changed by its percentage property. There are other properties that can be changed  

//Changes the percentage the indicator is filled with
indicatorView.percentage = 0.50 

//Changes the indicator width, if this is less than 0 it fills up to the middle
indicatorView.indicatorWidth = 20

//Indicator runs clockwise or counter-clockwise 
indicatorView.clockwise = true 

//The color inside the indicator's ring
indicatorView.backgroundColor = [NSColor windowBackgroundColor]

//The color of the indicator ring 
indicatorView.indicatorColor = [NSColor colorWithCalibratedRed:0 green:255.0/255.0 blue:253.0/255.0 alpha:1] 


The text in the middle of the indicator is updated by using the delegate `IndicatorViewDelegate`.

It has one method, which allows the view controller to change the attributed text to anything (or return an empty string) depending on the current percentage.

`-(NSAttributedString *)updateText:(CGFloat)percentage` 

##License

MLCircularIndicator

Copyright 2015 Michael Li.

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
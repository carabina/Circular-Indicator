# Circular Indicator

Circular Indicator is a simple circulator that fills up a circle as a ring or a full circle through a percentage 

![](http://i.imgur.com/gEPhEaO.png)

# Usage

Drag a view and change its class to CircularIndicator. The amount 

1. `indicatorView.percentage = 0.50 //Changes the percentage the indicator is filled with`
2. `indicatorView.indicatorWidth = 20 //Changes the indicator width, if this is less than 0 it fills up to the middle`
3. `indicatorView.clockwise = true //Indicator runs clockwise or counter-clockwise`

The text in the middle of the indicator can be updated by using the delegate `IndicatorViewDelegate`.

It has one method, 

`-(NSAttributedString *)updateText:(CGFloat)percentage` 
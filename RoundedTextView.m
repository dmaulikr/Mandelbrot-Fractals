//
//  RoundedTextView.m
//  Mandelbrot
//
//  Created by Rohan Shah on 12/24/11.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "RoundedTextField.h"


@implementation RoundedTextField

- (void) drawRect:(NSRect) updateRect
{
	[NSGraphicsContext saveGraphicsState];
	NSBezierPath* roundRectPath = [NSBezierPath bezierPathWithRoundedRect: [self bounds] xRadius:16 yRadius:16]; 
	[roundRectPath addClip];
	
	[super drawRect:updateRect];
	
	[NSGraphicsContext restoreGraphicsState];
}

@end
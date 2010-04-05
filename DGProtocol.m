//*******************************************************************************

// Copyright (c) 2010 Danny Greg

// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:

// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.

// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

// Created by Danny Greg on 5/4/2010

//*******************************************************************************

#import "DGProtocol.h"


@implementation DGProtocol

@synthesize name = _name;
@synthesize protocolList = _protocolList;
@synthesize propertyGroups = _propertyGroups;
@synthesize methodGroups = _methodGroups;

- (NSString *)stringRepresentation
{
	NSString *protocolListString = [self.protocolList componentsJoinedByString:@", "];
	NSMutableString *returnString = [NSMutableString stringWithFormat:@"@protocol %@<%@>\n\n", self.name, protocolListString];
	
	void (^appendStringRepresentationOfObject)(id) = ^ (id object) {
		[returnString appendFormat:@"%@\n", [object stringRepresentation]];
	};
	
	void (appendGroups)(NSArray *) = ^ (NSArray *groups) {
		for (id item in groups) 
			appendStringRepresentationOfObject(item);
		[returnString appendString:@"\n\n"];
	};
	
	appendGroups(self.propertyGroups);
	appendGroups(self.methodGroups);
	
	[returnString appendString:@"@end"];
	return returnString;
}

@end

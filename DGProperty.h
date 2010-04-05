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

#import "DGDeclarations.h"

#import <Cocoa/Cocoa.h>

enum _DGPropertySetterSemantic {
	DGPropertySetterSemanticAssign = 0,
	DGPropertySetterSemanticRetain = 1,
	DGPropertySetterSemanticCopy = 2
};

typedef NSUInteger DGPropertySetterSemantic;

@interface DGProperty : NSObject 

@property (nonatomic) DGType type;
@property (nonatomic) DGPropertySetterSemantic setterSemantic;
@property (nonatomic) BOOL atomic;
@property (nonatomic) BOOL readOnly;
@property (nonatomic) BOOL synthesize;
@property (nonatomic, copy) NSString *getter; // Can be nil
@property (nonatomic, copy) NSString *setter; // Can be nil

@end

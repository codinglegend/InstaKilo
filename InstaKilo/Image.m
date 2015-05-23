//
//  Image.m
//  InstaKilo
//
//  Created by Alain  on 2015-05-22.
//  Copyright (c) 2015 Alain . All rights reserved.
//

#import "Image.h"

@implementation Image

-(instancetype)initWithTitle:(NSString*)title andImage:(UIImage*) image
{
    self = [super init];
    if (self) {
        self.title = title;
        self.image = image;
    }
    return self;
}

@end

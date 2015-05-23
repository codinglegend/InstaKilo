//
//  Image.h
//  InstaKilo
//
//  Created by Alain  on 2015-05-22.
//  Copyright (c) 2015 Alain . All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Image : NSObject
@property (assign) NSString* title;
@property (assign) UIImage* image;

-(instancetype)initWithTitle:(NSString*)title andImage:(UIImage*) image;

@end

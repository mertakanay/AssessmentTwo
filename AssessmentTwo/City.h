//
//  City.h
//  AssessmentTwo
//
//  Created by Mert Akanay on 20.03.2015.
//  Copyright (c) 2015 MobileMakers. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface City : NSObject

@property NSString *cityName;
@property NSString *stateName;
@property UIImage *cityPicture;
@property int pop;

-(instancetype) initWithCityName:(NSString *)cityname andStateName:(NSString *)statename andCityPicture:(UIImage *)picture;

@end

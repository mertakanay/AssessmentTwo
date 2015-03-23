//
//  City.m
//  AssessmentTwo
//
//  Created by Mert Akanay on 20.03.2015.
//  Copyright (c) 2015 MobileMakers. All rights reserved.
//

#import "City.h"

@implementation City



-(instancetype) initWithCityName:(NSString *)cityname andStateName:(NSString *)statename andCityPicture:(UIImage *)picture

{
    self = [super init];
    self.cityName = cityname;
    self.stateName = statename;
    self.cityPicture = picture;
    return self;
}

@end

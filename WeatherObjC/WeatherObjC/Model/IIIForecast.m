//
//  IIIForecast.m
//  WeatherObjC
//
//  Created by Stephanie Bowles on 11/6/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

#import "IIIForecast.h"

@implementation IIIForecast

//Create a normal memberwise initializer.

-(instancetype)initWithCityName:(NSString *)cityName
                           icon:(UIImage *)icon
                    temperature:(NSNumber *)temperature
{
    self = [super init];
    
    if (self != nil){
        _cityName = cityName;
        _icon = icon;
        _temperature = temperature;
    }
    return self;
}

//Create an initializer that takes in a dictionary and the city name. (Refer to the example JSON again, and/or ask a PM if you're unclear on why you should pass the city name in separately)
-(instancetype)initWithDictionary:(NSDictionary *)dictionary cityName:(NSString *)cityName
{
    NSString *iconName = [dictionary[@"weather"] objectAtIndex:0][@"icon"];
    UIImage *icon = [UIImage imageNamed:iconName];
    NSNumber *temperature = dictionary[@"main"][@"temp"];
    
    return [self initWithCityName:(NSString *)cityName icon:(UIImage *)icon temperature:(NSNumber *)temperature];
}


@end

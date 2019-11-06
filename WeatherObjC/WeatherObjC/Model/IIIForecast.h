//
//  IIIForecast.h
//  WeatherObjC
//
//  Created by Stephanie Bowles on 11/6/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

 

@interface IIIForecast : NSObject

-(instancetype)initWithDictionary:(NSDictionary *)dictionary cityName:(NSString *)cityName;

-(instancetype)initWithCityName:(NSString *)cityName
                           icon:(UIImage *)icon
                    temperature:(NSNumber *)temperature;

@property NSString *cityName;
@property UIImage *icon;
@property NSNumber *temperature;

@end

 

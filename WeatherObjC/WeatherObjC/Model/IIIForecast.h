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
                       iconName:(NSString *)iconName
                    temperature:(NSNumber *)temperature;

@property NSString *cityName;
@property (nonatomic, copy, readonly) UIImage *image;
@property NSNumber *temperature;

@end

 

//
//  IIIForecastController.h
//  WeatherObjC
//
//  Created by Stephanie Bowles on 11/6/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

 

@interface IIIForecastController : NSObject
//Create a model controller, and add a property of an array of forecasts.

@property NSArray *forecasts;

-(instancetype)init;
-(void)fetchForecastWithZipCode:(int)zipCode completion:(void(^)(NSError *error))completion;

@end
 

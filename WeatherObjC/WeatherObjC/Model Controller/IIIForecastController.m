//
//  IIIForecastController.m
//  WeatherObjC
//
//  Created by Stephanie Bowles on 11/6/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

#import "IIIForecastController.h"

@implementation IIIForecastController


//In the initializer of the model controller, give an initial value of an empty array for the forecasts property.

- (instancetype)init
{
    self = [super init];
    if (self) {
        _forecasts = [[NSArray alloc] init];
    }
    return self;
}
//
//Add static constants to the model controller for the base url and your API key.

static NSString *const baseURLString =@"api.openweathermap.org/data/2.5/forecast";
static NSString *const apiKey = @"33ac6cf259dcbf0b86d88ab372320609";
//Create a function that will perform a data task to get the forecasts. This should take in a zip code, and have a completion block with an error.


-(void)fetchForecastWithZipCode:(NSString *)zipcode completion:(void(^)(NSError *error))completion
{
    NSURLComponents *URLComponents = [[NSURLComponents alloc] initWithString:baseURLString];
    
    
    
    NSURLQueryItem *zipCodeItem = [NSURLQueryItem queryItemWithName:@"zip" value:@"zip code"];
    
    NSURLQueryItem *appIDItem = [NSURLQueryItem queryItemWithName:@"units" value:@"imperial"];
    NSURLQueryItem *unitsItem = [NSURLQueryItem queryItemWithName:@"APPID" value:apiKey];
    
 
    URLComponents.queryItems = @[zipCodeItem, appIDItem, unitsItem];
    
    [[NSURLSession.sharedSession dataTaskWithURL:URL completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        <#code#>
    }
      ] resume];
}
//The process should be the same as if you were writing this in Swift up to the point where you would use a JSONDecoder. Instead, use NSJSONSerialization to turn the data returned from the data task into a dictionary. From there, you will be able to parse it to the point where you can pass a sub-dictionary to your model's initializer.


@end

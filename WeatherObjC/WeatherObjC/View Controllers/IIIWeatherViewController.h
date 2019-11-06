//
//  IIIWeatherViewController.h
//  WeatherObjC
//
//  Created by Ilgar Ilyasov on 3/26/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

#import <UIKit/UIKit.h>

@class IIIForecastController;

@interface IIIWeatherViewController : UIViewController <UISearchBarDelegate, UICollectionViewDataSource, UICollectionViewDelegate>

@property (nonatomic, copy, readonly) IIIForecastController *forecastController;

@end

 


//In your view controller's .h file, adopt the UISearchBarDelegate and UICollectionViewDataSource protocols. Also add a property for the model controller.


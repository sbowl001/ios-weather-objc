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
//In the view controller's initializers (initWithCoder and initWithNibName), initialize the model controller property.
//In the viewDidLoad set the view controller as the delegate of the search bar and the dataSource of the collection view.
//Implement the required UICollectionViewDataSource methods.
//Implement the searchBarSearchButtonClicked method to trigger your fetch forecast method from the model controller. Reload the table view on the main queue in the completion block of the fetch forecast method call.

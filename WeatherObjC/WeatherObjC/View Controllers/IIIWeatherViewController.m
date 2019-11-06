//
//  IIIWeatherViewController.m
//  WeatherObjC
//
//  Created by Ilgar Ilyasov on 3/26/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

#import "IIIWeatherViewController.h"
#import "IIIForecast.h"
#import "IIIForecastController.h"
#import "IIIWeatherCollectionViewCell.h"

@interface IIIWeatherViewController ()

@property (weak, nonatomic) IBOutlet UISearchBar *searchBar;
@property (weak, nonatomic) IBOutlet UILabel *cityNameLabel;
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

@end



@implementation IIIWeatherViewController
//In the view controller's initializers (initWithCoder and initWithNibName), initialize the model controller property.
- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        _forecastController = [[IIIForecastController alloc] init];
    }
    return self;
}

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self){
        _forecastController = [[IIIForecastController alloc] init];
    }
    return self;
}
//In the viewDidLoad set the view controller as the delegate of the search bar and the dataSource of the collection view.
- (void)viewDidLoad {
    [super viewDidLoad];
    self.searchBar.delegate = self;
    self.collectionView.dataSource = self;
     
}



//Implement the required UICollectionViewDataSource methods.
//Implement the searchBarSearchButtonClicked method to trigger your fetch forecast method from the model controller. Reload the table view on the main queue in the completion block of the fetch forecast method call.

- (nonnull __kindof UICollectionViewCell *)collectionView:(nonnull UICollectionView *)collectionView cellForItemAtIndexPath:(nonnull NSIndexPath *)indexPath
{
    IIIWeatherCollectionViewCell *cell = (IIIWeatherCollectionViewCell *)[collectionView dequeueReusableCellWithReuseIdentifier:@"WeatherCell" forIndexPath:indexPath];
    
    cell.forecast = 
}

- (NSInteger)collectionView:(nonnull UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.forecastController.forecasts.count;
}

 
 
 

@end

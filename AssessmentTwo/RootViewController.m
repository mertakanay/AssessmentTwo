//
//  ViewController.m
//  AssessmentTwo
//
//  Created by Mert Akanay on 20.03.2015.
//  Copyright (c) 2015 MobileMakers. All rights reserved.
//

#import "RootViewController.h"
#import "City.h"
#import "CityDetailViewController.h"

@interface RootViewController () <UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@property NSMutableArray *cities;


@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    
    City *city1 = [[City alloc]initWithCityName:@"San Francisco" andStateName:@"California" andCityPicture:[UIImage imageNamed:@"SanFrancisco"]];
    City *city2 = [[City alloc]initWithCityName:@"Monte Carlo" andStateName:@"Monaco" andCityPicture:[UIImage imageNamed:@"Monaco"]];
    City *city3 = [[City alloc]initWithCityName:@"Paris" andStateName:@"France" andCityPicture:[UIImage imageNamed:@"Paris"]];
    City *city4 = [[City alloc]initWithCityName:@"Istanbul" andStateName:@"Turkey" andCityPicture:[UIImage imageNamed:@"Istanbul"]];

    self.cities = [NSMutableArray arrayWithObjects:city1,city2,city3,city4, nil];
}

- (void)viewWillAppear:(BOOL)animated
{
    [self.tableView reloadData];
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cellID"];
    City *whichCity = [self.cities objectAtIndex:indexPath.row];
    cell.textLabel.text = whichCity.cityName;
    cell.detailTextLabel.text = whichCity.stateName;
    cell.imageView.image = whichCity.cityPicture;

    return cell;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.cities.count;
}


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    CityDetailViewController *cityDVC = [segue destinationViewController];
    NSIndexPath *selectedIndexPath = [self.tableView indexPathForSelectedRow];
    City *city = [self.cities objectAtIndex:selectedIndexPath.row];

    cityDVC.fancyCities = city;
}

-(BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    return YES;
}

-(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete)
    {
        [self.cities removeObjectAtIndex:indexPath.row];

        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
}



@end

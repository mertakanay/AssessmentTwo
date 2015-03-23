//
//  CityDetailViewController.m
//  AssessmentTwo
//
//  Created by Mert Akanay on 20.03.2015.
//  Copyright (c) 2015 MobileMakers. All rights reserved.
//

#import "CityDetailViewController.h"
#import "WikiViewController.h"
#import "City.h"

@interface CityDetailViewController () <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *cityTextField;
@property (weak, nonatomic) IBOutlet UITextField *stateTextField;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation CityDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];


        self.cityTextField.text = self.fancyCities.cityName;
        self.stateTextField.text = self.fancyCities.stateName;
        self.imageView.image = self.fancyCities.cityPicture;


    [self.cityTextField resignFirstResponder];
    [self.stateTextField resignFirstResponder];

}


- (void)textFieldDidEndEditing:(UITextField *)textField
{
    self.fancyCities.cityName = self.cityTextField.text;
    self.fancyCities.stateName = self.stateTextField.text;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    WikiViewController *wikiVC = [segue destinationViewController];



    wikiVC.fancyCities = self.fancyCities.cityName;
}


@end

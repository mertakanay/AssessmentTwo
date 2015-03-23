//
//  WikiViewController.m
//  AssessmentTwo
//
//  Created by Mert Akanay on 20.03.2015.
//  Copyright (c) 2015 MobileMakers. All rights reserved.
//

#import "WikiViewController.h"

@interface WikiViewController ()
@property (weak, nonatomic) IBOutlet UIWebView *webView;

@end

@implementation WikiViewController

- (void)viewDidLoad {
    [super viewDidLoad];

//    if ([self.fancyCities isEqualToString:@"San Francisco"])
//    {
//    NSString *newURL = [NSString stringWithFormat:@"http://en.wikipedia.org/wiki/san_francisco"];
//    }else if([self.fancyCities isEqualToString:@"Monte Carlo"])
//    {
//    NSString *newURL = [NSString stringWithFormat:@"http://en.wikipedia.org/wiki/monte_carlo"];
//    }else if([self.fancyCities isEqualToString:@"Paris"])
//    {
//    NSString *newURL = [NSString stringWithFormat:@"http://en.wikipedia.org/wiki/paris"];
//    }else if([self.fancyCities isEqualToString:@"Istanbul"])
//    {
//    NSString *newURL = [NSString stringWithFormat:@"http://en.wikipedia.org/wiki/istanbul"];
//    }
//
    [self performLoadRequestWithString:@"http://en.wikipedia.org/wiki/Monte_Carlo"];
//    [self performLoadRequestWithString:@newURL];

}

-(void)performLoadRequestWithString:(NSString *)string
{
    NSURL *url = [NSURL URLWithString:string];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [self.webView loadRequest:request];
}

@end

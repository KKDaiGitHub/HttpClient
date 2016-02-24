//
//  ViewController.m
//  Test
//
//  Created by 江海天 on 16/1/31.
//  Copyright © 2016年 John. All rights reserved.
//

#import "ViewController.h"
#import "HttpClient+v2_3.h"
#import "TimePickerView.h"
#import "TestViewController.h"

@interface ViewController () <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *txfTest;

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	
	//[HttpClient sharedClient].responseSerializer = [AFHTTPResponseSerializer serializer];
//	[HttpClient getBaiduHTMLSuccess:^(NSString *message, id jsonObj) {
//		
//		UIAlertController *ac = [UIAlertController alertControllerWithTitle:@"success" message:message preferredStyle:UIAlertControllerStyleAlert];
//		[self presentViewController:ac animated:YES completion:nil];
//		
//	} failure:^(NSInteger erroeCode, NSString *errorMessage) {
//		
//		UIAlertController *ac = [UIAlertController alertControllerWithTitle:@"fail" message:errorMessage preferredStyle:UIAlertControllerStyleAlert];
//		[self presentViewController:ac animated:YES completion:nil];
//		
//	}];
	
}

- (IBAction)push:(id)sender
{
	[self showViewController:[TestViewController new] sender:nil];
}

- (void)viewDidAppear:(BOOL)animated
{
	[super viewDidAppear:animated];
	[[TimePickerView aTimePickerViewWithBlock:^(NSString *timeString) {
		
	}] show];
}


@end

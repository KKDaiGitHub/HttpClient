//
//  HttpClient+v2_3.m
//  Test
//
//  Created by 江海天 on 16/2/21.
//  Copyright © 2016年 John. All rights reserved.
//

#import "HttpClient+v2_3.h"

@implementation HttpClient (v2_3)

+ (AFHTTPRequestOperation *)getBaiduHTMLSuccess:(void (^)(NSString *, id))success failure:(void (^)(NSInteger, NSString *))failure
{
	return [self getPath:@"http://www.baidu.com" parameters:nil success:^(NSString *message, id jsonObj) {
		success(message, jsonObj);
	} failure:^(NSInteger erroeCode, NSString *errorMessage) {
		failure(erroeCode, errorMessage);
	}];
}

@end

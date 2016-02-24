//
//  HttpClient+v2_3.h
//  Test
//
//  Created by 江海天 on 16/2/21.
//  Copyright © 2016年 John. All rights reserved.
//

#import "HttpClient.h"

@interface HttpClient (v2_3)

+ (AFHTTPRequestOperation *)getBaiduHTMLSuccess:(void (^)(NSString *message, id jsonObj))success
	failure:(void (^)(NSInteger erroeCode, NSString *errorMessage))failure;


@end

//
//  HttpClient.h
//  Test
//
//  Created by 江海天 on 16/2/21.
//  Copyright © 2016年 John. All rights reserved.
//

#import <AFNetworking/AFNetworking.h>

@interface HttpClient : AFHTTPRequestOperationManager

+ (instancetype)sharedClient;

+ (AFHTTPRequestOperation *)getPath:(NSString *)path
	 parameters:(NSMutableDictionary *)parameters
		success:(void (^)(NSString *message, id jsonObj))success
		failure:(void (^)(NSInteger erroeCode, NSString *errorMessage))failure;

@end

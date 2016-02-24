//
//  HttpClient.m
//  Test
//
//  Created by 江海天 on 16/2/21.
//  Copyright © 2016年 John. All rights reserved.
//

#import "HttpClient.h"

@implementation HttpClient

+ (instancetype)sharedClient
{
	static HttpClient *sharedClient;
	static dispatch_once_t onceToken;
	dispatch_once(&onceToken, ^{
		sharedClient = [self manager];
		sharedClient.requestSerializer = [AFJSONRequestSerializer serializer];
		AFJSONResponseSerializer *serializer = [AFJSONResponseSerializer serializer];
		serializer.removesKeysWithNullValues = YES;
		sharedClient.responseSerializer = serializer;
	});
	return sharedClient;
}

+ (AFHTTPRequestOperation *)getPath:(NSString *)path
	 parameters:(NSMutableDictionary *)parameters
		success:(void (^)(NSString *, id))success
		failure:(void (^)(NSInteger, NSString *))failure
{
	AFHTTPRequestOperation *operation = [[self sharedClient] GET:path parameters:parameters success:^(AFHTTPRequestOperation * _Nonnull operation, id  _Nonnull responseObject) {
		
		[self requestDone:YES responseObject:responseObject success:success failure:failure];
		
	} failure:^(AFHTTPRequestOperation * _Nullable operation, NSError * _Nonnull error) {
		[self requestDone:NO responseObject:nil success:success failure:failure];
	}];
	return operation;
}


+ (void)requestDone:(BOOL)isDone
	 responseObject:(id)responseObject
			success:(void (^)(NSString *, id))success
			failure:(void (^)(NSInteger, NSString *))failure
{
	if(isDone) {
		if(responseObject) {

			@try {
				NSInteger returnCode = [[responseObject valueForKey:@"code"] integerValue];
				NSDictionary *result = [responseObject valueForKey:@"data"];
				if (returnCode == 0) {
					success(responseObject[@"msg"], result);
				} else {
					failure(returnCode, responseObject[@"msg"]);
				}
			}
			@catch (NSException *exception) {
				failure(-2, exception.description);
			}

		} else {
			failure(-1, @"无返回数据");
		}
		
	} else {
		failure(-1009, @"网络异常");
	}
}

@end

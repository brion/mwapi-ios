//
//  MWApi.h
//  MWApi-iOS
//
//  Created by Brion on 11/5/12.
//  Copyright (c) 2012 Wikimedia Foundation. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MWApiResult.h"
#import "MWApiRequestBuilder.h"

@interface MWApi : NSObject

- (void)initWithApiUrl: (NSURL*)url;

- (id)delegate;
- (void)setDelegate:(id)newDelegate;

- (MWApiRequestBuilder *) action:(NSString *)action;

- (NSString *) authCookie;
- (void) setAuthCookie:(NSString *)newAuthCookie;

- (BOOL) validateLogin;
- (BOOL) isLoggedIn;
- (NSString *)loginWithUsername:(NSString *)username andPassword:(NSString *)password;
- (void) logout;

- (MWApiResult *)uploadFile:(NSString *)filename fromInputStream:(NSInputStream *) length:(long)length text:(NSString *)text comment:(NSString *)comment;
- (MWApiResult *)uploadFile:(NSString *)filename fromInputStream:(NSInputStream *) length:(long)length comment:(NSString *)comment;

- (NSString *)editToken;

@end

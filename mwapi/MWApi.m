//
//  MWApi.m
//  MWApi-iOS
//
//  Created by Brion on 11/5/12.
//  Copyright (c) 2012 Wikimedia Foundation. All rights reserved.
//

#import "MWApi.h"

id delegate;
NSURLConnection *client;
NSURL *apiURL;
BOOL isLoggedIn;
NSString *authCookie;
BOOL includeAuthCookie;


@implementation MWApi

- (void)initWithApiUrl: (NSURL*)url {
    apiURL = url;
}

- (id)delegate {
    return delegate;
}

- (void)setDelegate:(id)newDelegate {
    delegate = newDelegate;
}

- (MWApiRequestBuilder *) action:(NSString *)action {
    //
}

- (NSString *) authCookie {
    return authCookie;
}

- (void) setAuthCookie:(NSString *)newAuthCookie {
    authCookie = newAuthCookie;
}

- (BOOL) validateLogin {
    return NO;
}

- (BOOL) isLoggedIn {
    return isLoggedIn;
}

- (NSString *)loginWithUsername:(NSString *)username andPassword:(NSString *)password {
    //
}

- (void) logout {
    //
}

- (MWApiResult *)uploadFile:(NSString *)filename fromInputStream:(NSInputStream *)stream length:(long)length text:(NSString *)text comment:(NSString *)comment {
    //
}

- (MWApiResult *)uploadFile:(NSString *)filename fromInputStream:(NSInputStream *)stream length:(long)length comment:(NSString *)comment {
    return [self uploadFile: filename fromInputStream:stream length:length text:comment comment:comment];
}

- (NSString *)editToken {
    //
}

- (MWApiResult *)makeRequestWithMethod:(NSString *)method withParams:(NSDictionary *)params {
    return nil;
}

@end

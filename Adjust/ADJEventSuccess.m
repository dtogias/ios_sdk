//
//  ADJEventSuccess.m
//  adjust
//
//  Created by Pedro Filipe on 17/02/16.
//  Copyright © 2016 adjust GmbH. All rights reserved.
//

#import "ADJEventSuccess.h"

@implementation ADJEventSuccess

+ (ADJEventSuccess *)eventSuccessResponseData {
    return [[ADJEventSuccess alloc] init];
}

- (id)init {
    self = [super init];
    if (self == nil) return nil;

    return self;
}

#pragma mark - NSCopying

-(id)copyWithZone:(NSZone *)zone
{
    ADJEventSuccess* copy = [[[self class] allocWithZone:zone] init];

    if (copy) {
        copy.message            = [self.message copyWithZone:zone];
        copy.timeStamp          = [self.timeStamp copyWithZone:zone];
        copy.adid               = [self.adid copyWithZone:zone];
        copy.eventToken         = [self.eventToken copyWithZone:zone];
        copy.jsonResponse       = [self.jsonResponse copyWithZone:zone];
    }

    return copy;
}

#pragma mark - NSObject

- (NSString *)description {
    return [NSString stringWithFormat: @"Event Success msg:%@ time:%@ adid:%@ event:%@ json:%@",
            self.message,
            self.timeStamp,
            self.adid,
            self.eventToken,
            self.jsonResponse];
}

- (NSDictionary *)dictionary {
    NSMutableDictionary *responseDataDic = [NSMutableDictionary dictionary];

    if (self.message != nil) {
        [responseDataDic setObject:self.message forKey:@"message"];
    }

    if (self.timeStamp != nil) {
        [responseDataDic setObject:self.timeStamp forKey:@"timeStamp"];
    }

    if (self.adid != nil) {
        [responseDataDic setObject:self.adid forKey:@"adid"];
    }

    if (self.eventToken != nil) {
        [responseDataDic setObject:self.eventToken forKey:@"eventToken"];
    }

    if (self.jsonResponse != nil) {
        [responseDataDic setObject:self.jsonResponse forKey:@"jsonResponse"];
    }

    return responseDataDic;
}

@end

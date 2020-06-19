#import "ZaptContactTracing.h"

@implementation ZaptContactTracing

RCT_EXPORT_MODULE()


//RCT_EXPORT_METHOD(sampleMethod:(NSString *)stringArgument numberParameter:(nonnull NSNumber *)numberArgument callback:(RCTResponseSenderBlock)callback)
RCT_EXPORT_METHOD(init: (NSString *)visitableId apiKey:(NSString *)apiKey callback:(RCTResponseSenderBlock)callback)
{
    
    self.contactTracingSDKManager = [[ContactTracingManager alloc] initWithVisitableId: visitableId apiKey:apiKey];

//
//
//    // TODO: Implement some actually useful functionality
//    callback(@[[NSString stringWithFormat: @"numberArgument: %@ stringArgument: %@", visitableId, apiKey]]);
}

RCT_EXPORT_METHOD(setUserInfo: (NSString *)name email:(NSString *)email zaptUserId:(NSInteger)zaptUserId callback:(RCTResponseSenderBlock)callback)
{
    [self.contactTracingSDKManager setUserInfoWithName: name email:email zaptUserId: zaptUserId];
}

RCT_EXPORT_METHOD(start: (NSString *)name callback:(RCTResponseSenderBlock)callback)
{
    [self.contactTracingSDKManager start];
}

@end

#if __has_include("RCTBridgeModule.h")
#import "RCTBridgeModule.h"
#else
#import <React/RCTBridgeModule.h>
#endif
#import <ZaptContactTracing_iOS_SDK/ZaptContactTracing_iOS_SDK-Swift.h>

@interface ZaptContactTracing : NSObject <RCTBridgeModule>

@property (retain) ContactTracingManager *contactTracingSDKManager;

@end


#import "RNDateFormat.h"

@implementation RNDateFormat

RCT_EXPORT_MODULE()

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}

+ (BOOL)requiresMainQueueSetup
{
    return YES;
}

- (instancetype)init {
    self = [super init];
    return self;
}

RCT_REMAP_METHOD(formateMillis,
                 millis:(NSString *)millis
                 requiredFormat:(NSString *)requiredFormat
                 findEventsWithResolver:(RCTPromiseResolveBlock)resolve
                 rejecter:(RCTPromiseRejectBlock)reject){
    @try {
        double timeStamp = [millis doubleValue];
        NSTimeInterval timeInterval=timeStamp/1000;
        NSDate *date = [NSDate dateWithTimeIntervalSince1970:timeInterval];
        NSDateFormatter *dateformatter=[[NSDateFormatter alloc]init];
        [dateformatter setDateFormat:requiredFormat];
        NSString *dateString=[dateformatter stringFromDate:date];
        resolve(dateString);
    }
    
    @catch ( NSException *e ) {
        NSString *domain = @"";
        NSDictionary *dic = @{ @"error" : e.description};
        NSError *error = [NSError errorWithDomain:domain code:1000 userInfo:dic];
        reject(@"", @"", error);

    }
}

RCT_REMAP_METHOD(formatDate,
                 dateString:(NSString *)dateString
                 currentFormat:(NSString *)currentFormat
                  requiredDateFormat:(NSString *)requiredDateFormat
                 findEventsWithResolver:(RCTPromiseResolveBlock)resolve
                 rejecter:(RCTPromiseRejectBlock)reject){
    @try {
        NSDateFormatter* dateFormatter = [NSDateFormatter new];
        [dateFormatter setDateFormat:currentFormat];
        NSDate *date = [dateFormatter dateFromString:dateString];
        
        NSDateFormatter *formatter = [NSDateFormatter new];
        [formatter setDateFormat:requiredDateFormat];
        NSString *strDate = [formatter stringFromDate:date];
        resolve(strDate);
    }
    
    @catch ( NSException *e ) {
        NSString *domain = @"";
        NSDictionary *dic = @{ @"error" : e.description};
        NSError *error = [NSError errorWithDomain:domain code:1000 userInfo:dic];
        reject(@"", @"", error);
        
    }
}

@end
  

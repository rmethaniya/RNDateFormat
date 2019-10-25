
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
                 callback:(RCTResponseSenderBlock)callback){
    @try {
        double timeStamp = [millis doubleValue];
        NSTimeInterval timeInterval=timeStamp/1000;
        NSDate *date = [NSDate dateWithTimeIntervalSince1970:timeInterval];
        NSDateFormatter *dateformatter=[[NSDateFormatter alloc]init];
        [dateformatter setDateFormat:requiredFormat];
        NSString *dateString=[dateformatter stringFromDate:date];
      callback(@[dateString]);
    }
    @catch ( NSException *e ) {
        NSString *error = @"";
        callback(@[error]);
    }
}


RCT_REMAP_METHOD(formatDate,
                 dateString:(NSString *)dateString
                 currentFormat:(NSString *)currentFormat
                 requiredDateFormat:(NSString *)requiredDateFormat
                 callback:(RCTResponseSenderBlock)callback){
    @try {
        NSDateFormatter* dateFormatter = [NSDateFormatter new];
        [dateFormatter setDateFormat:currentFormat];
        NSDate *date = [dateFormatter dateFromString:dateString];
        
        NSDateFormatter *formatter = [NSDateFormatter new];
        [formatter setDateFormat:requiredDateFormat];
        NSString *strDate = [formatter stringFromDate:date];
        callback(@[strDate]);
    }
    
    @catch ( NSException *e ) {
        NSString *error = @"";
       callback(@[error]);
    }
}

@end
  

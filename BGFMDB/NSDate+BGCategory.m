//
//  NSDate+BGCategory.m
//  BGFMDB
//
//  Created by xyzcwb on 2024/10/27.
//

#import "NSDate+BGCategory.h"

@implementation NSDate (BGCategory)

/** 2023 格式 */
- (NSString *)bg_yyyyString {
    static dispatch_once_t onceToken;
    static NSDateFormatter *formatter = nil;
    dispatch_once(&onceToken, ^{
        formatter = [NSDateFormatter new];
        formatter.dateFormat = @"yyyy";
    });
    return [formatter stringFromDate:self];
}

/** 2023-01 格式 */
- (NSString *)bg_yyyyMMString {
    static dispatch_once_t onceToken;
    static NSDateFormatter *formatter = nil;
    dispatch_once(&onceToken, ^{
        formatter = [NSDateFormatter new];
        formatter.dateFormat = @"yyyy-MM";
    });
    return [formatter stringFromDate:self];
}

/** 2023-01-01 格式 */
- (NSString *)bg_yyyyMMddString {
    static dispatch_once_t onceToken;
    static NSDateFormatter *formatter = nil;
    dispatch_once(&onceToken, ^{
        formatter = [NSDateFormatter new];
        formatter.dateFormat = @"yyyy-MM-dd";
    });
    return [formatter stringFromDate:self];
}

/** 2023-01-01 01 格式 */
- (NSString *)bg_yyyyMMddHHString {
    static dispatch_once_t onceToken;
    static NSDateFormatter *formatter = nil;
    dispatch_once(&onceToken, ^{
        formatter = [NSDateFormatter new];
        formatter.dateFormat = @"yyyy-MM-dd HH";
    });
    return [formatter stringFromDate:self];
}

/** 2023-01-01 01:01 格式 */
- (NSString *)bg_yyyyMMddHHmmString {
    static dispatch_once_t onceToken;
    static NSDateFormatter *formatter = nil;
    dispatch_once(&onceToken, ^{
        formatter = [NSDateFormatter new];
        formatter.dateFormat = @"yyyy-MM-dd HH:mm";
    });
    return [formatter stringFromDate:self];
}

/** 2023-01-01 01:01:01 格式 */
- (NSString *)bg_yyyyMMddHHmmssString {
    static dispatch_once_t onceToken;
    static NSDateFormatter *formatter = nil;
    dispatch_once(&onceToken, ^{
        formatter = [NSDateFormatter new];
        formatter.dateFormat = @"yyyy-MM-dd HH:mm:ss";
    });
    return [formatter stringFromDate:self];
}

/** 2023-01-01 01:01:01.01 格式 */
- (NSString *)bg_yyyyMMddHHmmssSSSString {
    static dispatch_once_t onceToken;
    static NSDateFormatter *formatter = nil;
    dispatch_once(&onceToken, ^{
        formatter = [NSDateFormatter new];
        formatter.dateFormat = @"yyyy-MM-dd HH:mm:ss.SSS";
    });
    return [formatter stringFromDate:self];
}

//json字符串转NSDate
+ (NSDate *)bg_dateFromString:(NSString *)string {
    if (![string isKindOfClass:[NSString class]]) {
        return nil;
    }
    static dispatch_once_t onceToken;
    static NSDateFormatter *formatter = nil;
    dispatch_once(&onceToken, ^{
        formatter = [NSDateFormatter new];
        formatter.dateFormat = @"yyyy-MM-dd HH:mm:ss.SSS";
    });
    NSDate *date = [formatter dateFromString:string];
    return date;
}

@end

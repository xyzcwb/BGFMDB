//
//  NSDate+BGCategory.h
//  BGFMDB
//
//  Created by xyzcwb on 2024/10/27.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSDate (BGCategory)

/** 2023 格式 */
- (NSString *)bg_yyyyString;

/** 2023-01 格式 */
- (NSString *)bg_yyyyMMString;

/** 2023-01-01 格式 */
- (NSString *)bg_yyyyMMddString;

/** 2023-01-01 01 格式 */
- (NSString *)bg_yyyyMMddHHString;

/** 2023-01-01 01:01 格式 */
- (NSString *)bg_yyyyMMddHHmmString;

/** 2023-01-01 01:01:01 格式 */
- (NSString *)bg_yyyyMMddHHmmssString;

/** 2023-01-01 01:01:01.01 格式 */
- (NSString *)bg_yyyyMMddHHmmssSSSString;

/** 2023-01-01 01:01:01.01 格式 转 NSDate */
+ (NSDate *)bg_dateFromString:(NSString *)string;

@end

NS_ASSUME_NONNULL_END

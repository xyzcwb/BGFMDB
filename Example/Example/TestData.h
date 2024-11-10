//
//  TestData.h
//  Example
//
//  Created by xyzcwb on 2024/7/14.
//

#import <Foundation/Foundation.h>
#import "BGBaseModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface TestData : BGBaseModel

@property (nonatomic, assign) NSInteger tid;
@property (nonatomic, copy) NSString *name;
@property (nonatomic, strong) NSArray *list;
@property (nonatomic, strong) NSArray *strings;

@end

NS_ASSUME_NONNULL_END

//
//  TestDataHelper.m
//  Example
//
//  Created by xyzcwb on 2024/7/14.
//

#import "TestDataHelper.h"
#import "TestData.h"
#import "BGFMDB.h"

@implementation TestDataHelper

- (instancetype)init {
    self = [super init];
    if (self) {
//        NSArray *list = [TestData bg_findAll:nil];
//        for (int i = 0; i < list.count; i++) {
//            TestData *data = list[i];
//            NSLog(@"%@, %@", data.bg_id, data.bg_createTime);
//            data.name = [NSString stringWithFormat:@"name_%d", i];
//        }
//        [TestData bg_saveOrUpdateArray:list];
        
//        NSArray *array = @[@"'name_3'", @"'name_5'", @"'name_1'"];
//        NSArray *ret = [TestData bg_find:nil where:[NSString stringWithFormat:@"where %@ in (%@)", bg_sqlKey(@"name"), [array componentsJoinedByString:@", "]]];
//        NSLog(@"%@", ret);
//        
//        NSArray *list = [TestData bg_find:nil where:[NSString stringWithFormat:@"where exists (select 1 from json_each(%@.%@) where json_each.value = '%@')", NSStringFromClass([TestData class]), bg_sqlKey(@"strings"), @"65B18C13-7897-432B-8D04-F0218574A2CA"]];
        
        NSArray *list = [TestData bg_find:nil where:[NSString stringWithFormat:@"where %@ like '%%%@%%' ", bg_sqlKey(@"strings"), @"65B18C13-7897-432B-8D04-F0218574A2CA"]];
        NSLog(@"%@", list);
        
//        NSMutableArray *datas = [[NSMutableArray alloc] init];
//        for (int i = 0; i < 10; i++) {
//            TestData *data = [[TestData alloc] init];
//            data.name = [NSString stringWithFormat:@"name_%d", i];
//            NSMutableArray *array = [[NSMutableArray alloc] init];
//            NSMutableArray *array1 = [[NSMutableArray alloc] init];
//            for (int j = 0; j < random() % 4 + 1; j++) {
//                [array addObject:@(j)];
//                [array1 addObject:[[NSUUID UUID] UUIDString]];
//            }
//            data.strings = array1;
////            data.bg_id = @(random() % 20);
//            data.list = array;
//            [data bg_saveOrUpdate];
//            [datas addObject:data];
//        }
//        [TestData bg_saveOrUpdateArray:datas];
    }
    return self;
}

- (void)find {
    
}

@end

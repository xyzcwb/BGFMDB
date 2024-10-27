//
//  BGProtocol.h
//  BGFMDB
//
//  Created by xyzcwb on 2024/7/14.
//

#ifndef BGProtocol_h
#define BGProtocol_h

#import <Foundation/Foundation.h>

@protocol BGProtocol <NSObject>
//可选择操作
@optional

/**
 自定义 “联合主键” 函数, 如果需要自定义 “联合主键”,则在类中自己实现该函数.
 @return 返回值是 “联合主键” 的字段名(即相对应的变量名).
 注：当“联合主键”和“唯一约束”同时定义时，“联合主键”优先级大于“唯一约束”.
 */
+ (NSArray * _Nonnull)bg_unionPrimaryKeys;

/**
 自定义 “唯一约束” 函数,如果需要 “唯一约束”字段,则在类中自己实现该函数.
 @return 返回值是 “唯一约束” 的字段名(即相对应的变量名).
 */
+ (NSArray * _Nonnull)bg_uniqueKeys;

/**
 @return 返回不需要存储的属性.
 */
+ (NSArray * _Nonnull)bg_ignoreKeys;

/**
 * 数组中需要转换的模型类(‘字典转模型’ 或 ’模型转字典‘ 都需要实现该函数)
 * @return 字典中的key是数组属性名，value是数组中存放模型的Class
 */
+ (NSDictionary * _Nonnull)bg_objectClassInArray;

/**
 如果模型中有自定义类变量,则实现该函数对应进行集合到模型的转换.
 字典转模型用.
 */
+ (NSDictionary * _Nonnull)bg_objectClassForCustom;

/**
 将模型中对应的自定义类变量转换为字典.
 模型转字典用.
 */
+ (NSDictionary * _Nonnull)bg_dictForCustomClass;

/**
替换变量的功能(及当字典的key和属性名不一样时，进行映射对应起来)
*/
+ (NSDictionary * _Nonnull)bg_replacedKeyFromPropertyName;
@end



#endif /* BGProtocol_h */

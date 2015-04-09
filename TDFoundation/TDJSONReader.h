//
//  TDJSONReader.h
//  TDFoundation
//
//  Created by Robin Hsu on 2015/4/9.
//  Copyright (c) 2015年 TechD. All rights reserved.
//
//  ------------------------------------------------------------------------------------------------
//  ------------------------------------------------------------------------------------------------

#import "TDFoundation.h"

//  ------------------------------------------------------------------------------------------------
//  ------------------------------------------------------------------------------------------------
@interface TDJSONReader : NSObject

//  ------------------------------------------------------------------------------------------------
#pragma mark property of variable.
//  ------------------------------------------------------------------------------------------------

//  ------------------------------------------------------------------------------------------------
#pragma mark declare for create the object.
//  ------------------------------------------------------------------------------------------------
+ ( instancetype ) loadData:(NSString *)filename forDirectories:(TDGetPathDirectory)directory inDirectory:(NSString *)subpath
                   encoding:(NSStringEncoding)encode;


//  ------------------------------------------------------------------------------------------------
#pragma mark declare for get root data.
//  ------------------------------------------------------------------------------------------------
- ( NSInteger ) rootDataCount;

//  ------------------------------------------------------------------------------------------------
- ( id ) rootObjectAtIndex:(NSInteger)index;

- ( NSString * ) dataAtIndex:(NSInteger)index stringValueForKey:(NSString *)aKey;

- ( NSInteger ) dataAtIndex:(NSInteger)index integerValueForKey:(NSString *)aKey isSuccess:(BOOL *)success;

- ( float ) dataAtIndex:(NSInteger)index floatValueForKey:(NSString *)aKey isSuccess:(BOOL *)success;

//  ------------------------------------------------------------------------------------------------
#pragma mark declare for get data (data type is dictionary).
//  ------------------------------------------------------------------------------------------------
- ( id ) rootObjectForKey:(NSString *)aKey;

- ( NSArray * ) rootAllKeys;

- ( NSArray * ) rootAllValues;

- ( id ) objectForKeyPath:(NSString *)keyPath;

- ( NSString * ) stringValueForKeyPath:(NSString *)keyPath;

- ( NSInteger ) integerValueForKeyPath:(NSString *)keyPath isSuccess:(BOOL *)success;

- ( float ) floatValueForKeyPath:(NSString *)keyPath isSuccess:(BOOL *)success;

//  ------------------------------------------------------------------------------------------------


@end

//  ------------------------------------------------------------------------------------------------
//  ------------------------------------------------------------------------------------------------



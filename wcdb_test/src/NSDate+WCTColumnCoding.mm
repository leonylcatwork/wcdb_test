//
//  NSDate+WCTColumnCoding.mm
//  MemberManager
//
//  Created by leon on 02/08/2017.
//  Copyright © 2017 leon. All rights reserved.
//


#import <Foundation/Foundation.h>
#import <WCDB/WCDB.h>

@interface NSDate (WCTColumnCoding) <WCTColumnCoding>


@end



@implementation NSDate (WCTColumnCoding)


+ (instancetype)unarchiveWithWCTValue:(NSNumber *)value {
    return value ? [NSDate dateWithTimeIntervalSince1970:(value.doubleValue / 1000)] : nil;
}


- (NSNumber *)archivedWCTValue {
    return @((long long)(self.timeIntervalSince1970 * 1000));
}


+ (WCTColumnType)columnTypeForWCDB {
    return WCTColumnTypeInteger64;
}


@end

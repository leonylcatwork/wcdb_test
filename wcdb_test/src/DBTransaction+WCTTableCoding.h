//
//  Transaction+WCTTableCoding.h
//  MemberManager
//
//  Created by leon on 02/08/2017.
//  Copyright © 2017 leon. All rights reserved.
//

#import "DBTransaction.h"
#import <WCDB/WCDB.h>


@interface DBTransaction (WCTTableCoding) <WCTTableCoding>

WCDB_PROPERTY(id)
WCDB_PROPERTY(date)
WCDB_PROPERTY(amount)
WCDB_PROPERTY(code)
WCDB_PROPERTY(points)


@end

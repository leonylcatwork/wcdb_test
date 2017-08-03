//
//  Tester.m
//  wcdb_test
//
//  Created by leon on 03/08/2017.
//  Copyright © 2017 leon. All rights reserved.
//

#import "Tester.h"
#import "DBTransaction.h"
#import "DBTransaction+WCTTableCoding.h"
#import <WCDB/WCDB.h>


@implementation Tester


+ (void)beginTest {
    NSString *path = [NSTemporaryDirectory() stringByAppendingPathComponent:@"data.db"];
    WCTDatabase *db = [[WCTDatabase alloc] initWithPath:path];
    BOOL creation = [db createTableAndIndexesOfName:TransactionTable withClass:DBTransaction.class];
    NSAssert(creation, @"Fail to create table (%@) at %@", TransactionTable, path);

    if (db.isOpened) {
        DBTransaction *transaction = [DBTransaction new];
        transaction.transactionId = 12345;
        transaction.amount = 12.5;
        transaction.date = [NSDate date];
        transaction.code = @"q1w2e3";

        BOOL insertion = [db insertObject:transaction into:TransactionTable];
        NSAssert(insertion, @"Fail to insert record to table (%@)", TransactionTable);
    }
}


@end

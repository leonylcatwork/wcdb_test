//
//  DBTransaction.mm
//  MemberManager
//
//  Created by leon on 02/08/2017.
//  Copyright © 2017 leon. All rights reserved.
//

#import "DBTransaction.h"
#import <WCDB/WCDB.h>


NSString * const TransactionTable = @"transaction";


@implementation DBTransaction


WCDB_IMPLEMENTATION(DBTransaction)

WCDB_SYNTHESIZE_COLUMN_DEFAULT(DBTransaction, transactionId, "t_id", 1)
WCDB_SYNTHESIZE_COLUMN_DEFAULT(DBTransaction, amount, "t_amount", 0)
WCDB_SYNTHESIZE_COLUMN_DEFAULT(DBTransaction, points, "t_points", 0)
WCDB_SYNTHESIZE_COLUMN_DEFAULT(DBTransaction, date, "t_date", NULL)
WCDB_SYNTHESIZE_COLUMN_DEFAULT(DBTransaction, code, "t_code", NULL)


//WCDB_PRIMARY(DBTransaction, transactionId)
WCDB_PRIMARY_AUTO_INCREMENT(DBTransaction, transactionId)

@end

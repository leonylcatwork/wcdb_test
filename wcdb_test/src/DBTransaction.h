//
//  DBTransaction.h
//  MemberManager
//
//  Created by leon on 02/08/2017.
//  Copyright © 2017 leon. All rights reserved.
//

#import <Foundation/Foundation.h>


FOUNDATION_EXPORT NSString * const TransactionTable;


@interface DBTransaction : NSObject

@property (nonatomic, assign) NSInteger transactionId;
@property (nonatomic, assign) double    amount;
@property (nonatomic, assign) NSInteger points;
@property (nonatomic, strong) NSDate    *date;
@property (nonatomic, copy  ) NSString  *code;


@end

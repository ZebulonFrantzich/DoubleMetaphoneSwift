//
//  DoubleMetaphoneImpl.h
//  Pods
//
//  Created by Zebulon Frantzich on 3/11/17.
//
//

#import <Foundation/Foundation.h>
#import "double_metaphone.h"

@interface DoubleMetaphoneImpl : NSObject
- (NSArray *)calculate: (NSString *)str;
@end

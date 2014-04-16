//
//  SPFollow.h
//  EMSupport
//
//  Created by Ethan Mick on 2/3/14.
//  Copyright (c) 2014 Ethan. All rights reserved.
//

#import "CMObject.h"

@interface SPFollow : CMObject

@property (nonatomic, copy) NSString *followedId;
@property (nonatomic, copy) NSString *followingId;
@property (nonatomic, strong) NSNumber *status;

@end

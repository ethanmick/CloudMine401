//
//  SPFollow.m
//  EMSupport
//
//  Created by Ethan Mick on 2/3/14.
//  Copyright (c) 2014 Ethan. All rights reserved.
//

#import "SPFollow.h"

@implementation SPFollow



- (NSString *)description;
{
    return [NSString stringWithFormat:@"ObjectID: %@, Followed: %@\nFollowing: %@\nStatus: %@", self.objectId, _followedId, _followingId, _status];
}

@end

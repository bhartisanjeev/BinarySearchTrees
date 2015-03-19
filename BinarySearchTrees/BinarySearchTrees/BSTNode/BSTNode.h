//
//  BSTNode.h
//  BinarySearchTrees
//
//  Created by sanjeev bharti on 3/19/15.
//  Copyright (c) 2015 sanjeev bharti. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BSTNode : NSObject

@property NSInteger data ; //data to store
@property BSTNode   *left ; // store address of the node to left of current node
@property BSTNode   *right ;// store address of the node to right of current node

@end

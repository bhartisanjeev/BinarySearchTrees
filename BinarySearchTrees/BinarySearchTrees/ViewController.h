//
//  ViewController.h
//  BinarySearchTrees
//
//  Created by sanjeev bharti on 3/19/15.
//  Copyright (c) 2015 sanjeev bharti. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BSTNode.h"

@interface ViewController : UIViewController {
    
    BSTNode *root ;
    
}

//insert elements into tree
- (BSTNode *)insertNodeToTree:(BSTNode *)node withData:(NSInteger)data ;

// search a specific node in tree
- (void)searchNodeInBinaryTree ;

// go through all elements in tree

// In-Order Traversal of BST
- (void)traversalInTree:(BSTNode *)node ;


@end


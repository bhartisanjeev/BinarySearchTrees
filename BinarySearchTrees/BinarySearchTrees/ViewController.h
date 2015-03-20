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
    NSMutableArray *treeElements ;
}

@property (nonatomic, weak) IBOutlet UILabel *lblPreOrder ;
@property (nonatomic, weak) IBOutlet UILabel *lblInOrder ;
@property (nonatomic, weak) IBOutlet UILabel *lblPostOrder ;
@property (nonatomic, weak) IBOutlet UILabel *lblBSTAnimation ;

//insert elements into tree
- (BSTNode *)insertNodeToTree:(BSTNode *)node withData:(NSInteger)data ;

// search a specific node in tree
- (void)searchNodeInBinaryTree ;

// go through all elements in tree

// Pre-Order Traversal
- (void)preOrderTraversalInTree:(BSTNode *)node ;

// In-Order Traversal of BST
- (void)inOrderTraversalInTree:(BSTNode *)node ;

// Post-Order Traversal
- (void)postOrderTraversalInTree:(BSTNode *)node ;



@end


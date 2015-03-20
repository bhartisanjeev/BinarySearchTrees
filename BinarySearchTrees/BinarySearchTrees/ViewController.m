//
//  ViewController.m
//  BinarySearchTrees
//
//  Created by sanjeev bharti on 3/19/15.
//  Copyright (c) 2015 sanjeev bharti. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

- (BSTNode *)createNodeWithData:(NSInteger)data ;
- (void)animateLabel:(UILabel *)label ;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self animateLabel:self.lblBSTAnimation];
    
    treeElements = [[NSMutableArray alloc] init];
    
    NSArray *elementsList = [[NSArray alloc] initWithObjects:@"7",@"1",@"0",@"3",@"2",@"5",@"4",@"6",@"9",@"8",@"10", nil];
    
    for (int index = 0; index < elementsList.count; index++)
        [self insertNodeToTree:root withData:[[elementsList objectAtIndex:index] integerValue]];
    
    //Pre Order Traversal
    [self preOrderTraversalInTree:root];
    self.lblPreOrder.text = [treeElements componentsJoinedByString:@" , "];
    [treeElements removeAllObjects];
    
    //In-Order Traversal
    [self inOrderTraversalInTree:root];
    self.lblInOrder.text = [treeElements componentsJoinedByString:@" , "];
    [treeElements removeAllObjects];
    
    //Post-Order traversal
    [self  postOrderTraversalInTree:root];
    self.lblPostOrder.text = [treeElements componentsJoinedByString:@" , "];
    [treeElements removeAllObjects];
    
    //searching element in tree
    [self searchNode:root InBinaryTreeWithData:81];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -
#pragma mark - Binary Search Tree Methods

//insert elements into tree
- (BSTNode *)insertNodeToTree:(BSTNode *)node withData:(NSInteger)data {
    
    if (root == NULL) {
        
        root = [self createNodeWithData:data];
        
    } else if (node == NULL) {
     
        node = [self createNodeWithData:data];
        
    } else if (data > node.data) {

        node.right = [self insertNodeToTree:node.right withData:data];
    } else {
        node.left = [self insertNodeToTree:node.left withData:data];
    }
 
    return node ;
}

// search a specific node in tree
- (void)searchNodeInBinaryTree {
    
}

// Pre-Order Traversal
- (void)preOrderTraversalInTree:(BSTNode *)node {

    if (node == NULL) {
        return ;
    }
    NSLog(@"%ld",(long)node.data);
    [treeElements addObject:[NSString stringWithFormat:@"%ld",(long)node.data]];
    [self preOrderTraversalInTree:node.left];
    [self preOrderTraversalInTree:node.right];
}

// In-Order Traversal of BST
- (void)inOrderTraversalInTree:(BSTNode *)node {
    if (node == NULL) {
        return ;
    }
    [self inOrderTraversalInTree:node.left];
    NSLog(@"%ld",(long)node.data);
    [treeElements addObject:[NSString stringWithFormat:@"%ld",(long)node.data]];
    [self inOrderTraversalInTree:node.right];
    
}

// Post-Order Traversal
- (void)postOrderTraversalInTree:(BSTNode *)node {
    
    if (node == NULL) {
        return ;
    }
    [self postOrderTraversalInTree:node.left];
    [self postOrderTraversalInTree:node.right];
    
    NSLog(@"%ld",(long)node.data);
    [treeElements addObject:[NSString stringWithFormat:@"%ld",(long)node.data]];

}

#pragma mark - 
#pragma mark - Private Methods

//method to create BST node
- (BSTNode *)createNodeWithData:(NSInteger)data {
    
    BSTNode *_node = [[BSTNode alloc] init];
    _node.data = data ;
    _node.left = NULL ;
    _node.right = NULL ;
    return _node ;
}

- (void)animateLabel:(UILabel *)label {
    
    [UIView animateWithDuration:1.5f animations:^{
        
        [self scaleLabel:label WithScale:1.6f andScaleY:1.6f andAlpha:1.0f];
        
    } completion:^(BOOL finished) {
        
        [UIView animateWithDuration:1.5f animations:^{
            
            [self scaleLabel:label WithScale:1.0f andScaleY:1.0f andAlpha:0.2f];
            
        } completion:^(BOOL finished) {
            
            [self animateLabel:label];
            
        }];
    }];
}

- (void)scaleLabel:(UILabel *)label WithScale:(float)scaleX andScaleY:(float)scaleY andAlpha:(float)alphaValue{
    
    label.transform = CGAffineTransformMakeScale(scaleX, scaleY) ;
    label.alpha = alphaValue ;
}

// search a specific node in tree
- (void)searchNode:(BSTNode *)node InBinaryTreeWithData:(NSInteger)data {
    
    if (node == NULL) {
        
        NSLog(@"There is no Node with data : %ld",(long)data);
        
    } else if (data > node.data) {
        
        [self searchNode:node.right InBinaryTreeWithData:data];
        
    } else if (data < node.data) {
        
        [self searchNode:node.left InBinaryTreeWithData:data];
        
    } else {
        
        NSLog(@"Node present with data : %ld",(long)node.data);
    }
}

@end

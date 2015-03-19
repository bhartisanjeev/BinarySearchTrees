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

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self insertNodeToTree:root withData:100];
    [self insertNodeToTree:root withData:90];
    [self insertNodeToTree:root withData:80];
    [self insertNodeToTree:root withData:95];
    [self insertNodeToTree:root withData:200];
    [self insertNodeToTree:root withData:150];
    [self insertNodeToTree:root withData:300];
    [self insertNodeToTree:root withData:400];
    [self insertNodeToTree:root withData:500];
    
    //In Order Traversal
    [self traversalInTree:root];
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

// go through all elements in tree
- (void)traversalInTree:(BSTNode *)node {
    
    if (node == NULL) {
        return ;
    }
    [self traversalInTree:node.left];
    NSLog(@"%ld",(long)node.data);
    [self traversalInTree:node.right];
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


@end

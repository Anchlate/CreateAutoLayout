//
//  UIView+ANView.h
//  Category
//
//  Created by PENG BAI on 15/8/11.
//  Copyright (c) 2015年 bp1010. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (ANView)

// 测试该视图以及其子视图的约束是否充分
- (void)anTestAmbiguity;

// 找出视图中的所有约束
- (NSArray *)anAllConstraints;

// 根据对其矩阵构建边缘inset
- (UIEdgeInsets)anBuildInsetsWithAlignmentRect:(CGRect)alignmentRect imageBounds:(CGRect)imageBounds;

@end

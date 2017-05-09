//
//  UIView+ANView.m
//  Category
//
//  Created by PENG BAI on 15/8/11.
//  Copyright (c) 2015年 bp1010. All rights reserved.
//

#import "UIView+ANView.h"

@implementation UIView (ANView)

/**
 *  用来检测是否视图是否有歧义
 */
- (void)anTestAmbiguity
{
    NSLog(@"<%@:0x%0x>: %@", self.class.description, (int)self, self.hasAmbiguousLayout ? @"Ambiguous" : @"Unambiguous");
    
    for (UIView *view in self.subviews) {
        [view anTestAmbiguity];
    }
}

/**
 *  找出一个视图及其所有子视图的约束
 *
 *  @return 约束
 */
- (NSArray *)anAllConstraints
{
    NSMutableArray *array = [NSMutableArray array];
    
    [array addObjectsFromArray:self.constraints];
    for (UIView *view in self.subviews) {
        [array addObjectsFromArray:[view anAllConstraints]];
    }
    return array;
}

/**
 *  根据对其矩阵构建边缘inset
 *
 *  @param alignmentRect <#alignmentRect description#>
 *  @param imageBounds   <#imageBounds description#>
 *
 *  @return <#return value description#>
 */
- (UIEdgeInsets)anBuildInsetsWithAlignmentRect:(CGRect)alignmentRect imageBounds:(CGRect)imageBounds
{
    CGRect targetRect = CGRectIntersection(alignmentRect, imageBounds);
    
    UIEdgeInsets insets;
    
    insets.left = CGRectGetMinX(targetRect) - CGRectGetMinX(imageBounds);
    insets.right = CGRectGetMaxX(imageBounds) - CGRectGetMaxX(targetRect);
    
    insets.top = CGRectGetMinY(targetRect) - CGRectGetMinY(imageBounds);
    insets.bottom = CGRectGetMaxY(imageBounds) - CGRectGetMaxY(targetRect);
    
    return insets;
}

@end

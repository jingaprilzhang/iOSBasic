//
//  main.m
//  OC_Class
//
//  Created by JING ZHANG on 9/21/16.
//  Copyright © 2016 JING ZHANG. All rights reserved.
//

#import <Foundation/Foundation.h>

//Student Class

//定义一个类
@interface Student : NSObject {
    NSString * _name;
    NSInteger _age;
    NSString * _nameString;
}

//构造方法 初始化方法,对象方法
//返回泛型的对象

-(id)init;

//setter方法

- (void)setName: (NSString *)name;
- (void)setAge: (NSInteger)age;
- (void)setName:(NSString *)name andAge:(NSInteger)age;

//匿名方法
- (void)setName:(NSString *)name :(NSInteger)age;
//getter方法

- (NSString *)name;
- (NSInteger)age;

+ (void) testStudent;

@end

//类的实现
@implementation Student

- (id)init {
    
    self = [super init];
    if (self) {
        _name = @"笑话";
        _age = 12;
    }
    
    return self;
}

- (void)setAge:(NSInteger)age{
    _age = age;
}

- (void)setName:(NSString *)name andAge:(NSInteger)age {
    
    _name = name;
    _age = age;
}

- (void)setName:(NSString *)name :(NSInteger)age {
    
    _name = name;
    _age = age;
}

- (NSString *)name {
    
    return _name;
}

- (NSInteger) age {
    
    return _age;
}

+ (void)testStudent {
    
    
}

@end


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Student * stu = [[Student alloc] init];
        
        [stu setName:@"xiaohua" andAge:14];
        
        NSLog(@"name = %@, age = %li", [stu name], [stu age]);
        
        [Student testStudent];
        
    }
    return 0;
}

//
//  OC_Person.m
//  MixOCPlus
//
//  Created by kong on 2017/7/21.
//  Copyright © 2017年 konglee. All rights reserved.
//

#import "OC_Person.h"
#include <iostream>
#include <vector>
#include <algorithm>

class Ball
{
public:
    void printW()
    {
        std::cout << "ball weight is " << this -> weight << std::endl;
    }
    Ball(int w = 0)
    {
        this -> weight = w;
    }
    ~Ball()
    {
        std::cout << "dead" << std::endl;
    }
public:
    int weight;
};

@implementation OC_Person

- (void)initPerson
{
    Ball *b = new Ball(20);
    Ball *b1 = new Ball(21);
    Ball *b2 = new Ball(22);
    b -> printW();
    
    std::vector<Ball> v1;
    v1.push_back(*b);
    v1.push_back(*b1);
    v1.push_back(*b2);
    
    for (std::vector<Ball>::iterator pt = v1.begin(); pt != v1.end(); pt++)
    {
        (*pt).printW();
    }
    auto result = std::count_if(v1.begin(), v1.end(), [](Ball bl){return (bl.weight == 22);});
    std::cout << "equal to 22 amount = " << result << std::endl;
    
    auto bal = std::find_if(v1.begin(), v1.end(), [](Ball bll){return (bll.weight == 22);});
    Ball ball1 = *bal;
    ball1.printW();
    
    
}

@end

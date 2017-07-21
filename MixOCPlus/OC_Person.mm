//
//  OC_Person.m
//  MixOCPlus
//
//  Created by kong on 2017/7/21.
//  Copyright © 2017年 konglee. All rights reserved.
//

#import "OC_Person.h"
#include <iostream>

class Ball
{
public:
    void printW()
    {
        std::cout << "ball weight is " << this -> weight << std::endl;
    }
    Ball(float w = 0.0)
    {
        this -> weight = w;
    }
    ~Ball()
    {
        std::cout << "dead" << std::endl;
    }
protected:
    float weight;
};

@implementation OC_Person

- (void)initPerson
{
    Ball *b = new Ball(20.0);
    b -> printW();
}

@end

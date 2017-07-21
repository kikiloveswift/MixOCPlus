//
//  main.m
//  MixOCPlus
//
//  Created by kong on 2017/7/21.
//  Copyright © 2017年 konglee. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "OC_Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool
    {
        
        OC_Person *p = [OC_Person new];
        [p initPerson];
        
    }
    system(pause());
    return 0;
}

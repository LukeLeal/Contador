//
//  Contador.m
//  ContaPessoas
//
//  Created by Vinicius Miana on 2/18/15.
//  Copyright (c) 2015 Vinicius Miana. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contador.h"

@implementation Contador {
    int boy;
    int girl;
}

@synthesize delegate;

static Contador *_contador = nil;

+ (Contador *) instancia{
    if (_contador == nil) {
        _contador = [[Contador alloc] init];
    }
    return _contador;
}

-(id)init {
    self = [super init];
    if (self) {
        delegate = nil;
        boy = 0;
        girl = 0;
    }
    return self;
}

- (void)maisUmCueca {
    boy = boy + 1;
    [delegate atualizaDados];
}
- (void)maisUmaGata {
    girl++;
    [delegate atualizaDados];
}

-(int)getBoys {
    return boy;
}

-(int)getGirls {
    return girl;
}

-(int)getTotal{
    return girl + boy;
}



@end


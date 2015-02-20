//
//  Contador.h
//  ContaPessoas
//
//  Created by Vinicius Miana on 2/18/15.
//  Copyright (c) 2015 Vinicius Miana. All rights reserved.
//

@protocol ContadorDelegate <NSObject>

@required
-(void)atualizaDados;

@end

@interface Contador : NSObject  {
    id <ContadorDelegate> delegate;
}

@property(nonatomic, retain) id <ContadorDelegate> delegate;

- (void)maisUmCueca;
- (void)maisUmaGata;

+(Contador *) instancia;
-(int)getBoys;
-(int)getGirls;
-(int)getTotal;
@end


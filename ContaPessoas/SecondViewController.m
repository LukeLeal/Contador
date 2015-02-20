//
//  SecondViewController.m
//  ContaPessoas
//
//  Created by Vinicius Miana on 2/18/15.
//  Copyright (c) 2015 Vinicius Miana. All rights reserved.
//

/*Fazer:
 
 -> Singleton
 -> getTotal
 -> teste
 -> delegate C (observer)
 */

#import "SecondViewController.h"
#import "Contador.h"

@interface SecondViewController () {
      Contador *contador;
}

@end

@implementation SecondViewController

//-(id)init {
//    self = [super init];
//    if (self) {
//        contador = [Contador instancia];
//        contador.delegate = self;
//    }
//    return self;
//}

- (void)viewDidLoad {
    [super viewDidLoad];
    contador = [Contador instancia];
    contador.delegate = self;
    [self click:self];
}

//- (void)viewDidAppear:(BOOL)animated{
//    [self click:self];//Gambiarra. Please Understand
//}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) atualizaDados{
    //NSLog(@"Funcionando ae");
    _totalBoys.text = [NSString stringWithFormat: @"%d", [contador getBoys]];
    _totalGirls.text = [NSString stringWithFormat: @"%d", [contador getGirls]];
    _total.text = [NSString stringWithFormat:@"%d", [contador getTotal] ];
}

- (IBAction)click:(id)sender {
    _totalBoys.text = [NSString stringWithFormat: @"%d", [contador getBoys]];
    _totalGirls.text = [NSString stringWithFormat: @"%d", [contador getGirls]];
    _total.text = [NSString stringWithFormat:@"%d", [contador getTotal] ];
}


@end

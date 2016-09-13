//
//  ViewController.m
//  SDWebImage
//
//  Created by JING ZHANG on 9/13/16.
//  Copyright © 2016 JING ZHANG. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.title = @"loading web view";
    
    _tableView = [[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    
    _tableView.delegate = self;
    _tableView.dataSource = self;
    
    _tableView.autoresizingMask = UIViewAutoresizingFlexibleHeight| UIViewAutoresizingFlexibleWidth;
    
    
    [self.view addSubview:_tableView];
    
    _arrayData = [[NSMutableArray alloc] init];
    
    
    _btnLoadData = [[UIBarButtonItem alloc] initWithTitle:@"Loading" style:UIBarButtonItemStylePlain target:self action:@selector(pressLoad)];
    
    self.navigationItem.rightBarButtonItem = _btnLoadData;

}


//load new data
- (void) pressLoad {
    
    static int i = 0;
    
    for (int j = 0; j < 10; j++, i++) {
        NSString * str = [NSString stringWithFormat:@"data %d", i+1];
        
        [_arrayData addObject:str];
    }
    
    [_tableView reloadData];
}

//table view cell set up
- (NSInteger) numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _arrayData.count;
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSString * strID = @"ID";
    
    UITableViewCell * cell = [_tableView dequeueReusableCellWithIdentifier:strID];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:strID];
    }
    
    NSString * str = _arrayData[indexPath.row];
    
    cell.textLabel.text = str;
    
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

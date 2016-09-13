//
//  ViewController.h
//  SDWebImage
//
//  Created by JING ZHANG on 9/13/16.
//  Copyright © 2016 JING ZHANG. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

<

UITableViewDataSource,
UITableViewDelegate

>

{
    
    UITableView * _tableView;
    NSMutableArray * _arrayData;
    UIBarButtonItem * _btnLoadData;
    
    UIBarButtonItem * btnEdit;
}

@end


//
//  FISAddPirateViewController.m
//  OpenMe
//
//  Created by Chris Gonzales on 9/17/14.
//  Copyright (c) 2014 Joe Burgess. All rights reserved.
//

#import "FISAddPirateViewController.h"
#import "FISPiratesDataStore.h"
#import "Pirate.h"

@interface FISAddPirateViewController ()
@property (weak, nonatomic) IBOutlet UITextField *pirateNameLabel;

@end

@implementation FISAddPirateViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)saveButtonTapped:(id)sender {
    FISPiratesDataStore *store = [FISPiratesDataStore sharedPiratesDataStore];
    Pirate *newPirate = [NSEntityDescription insertNewObjectForEntityForName:@"Pirate" inManagedObjectContext:store.managedObjectContext];
    newPirate.name = self.pirateNameLabel.text;
    
    [store save];
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)cancelButtonTapped:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

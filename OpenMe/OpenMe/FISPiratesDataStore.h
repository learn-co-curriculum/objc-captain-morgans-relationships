//
//  FISPiratesDataStore.h
//  OpenMe
//
//  Created by Joe Burgess on 3/4/14.
//  Copyright (c) 2014 Joe Burgess. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FISPiratesDataStore : NSObject

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;

- (void)save;
- (NSURL *)applicationDocumentsDirectory;

+ (instancetype) sharedPiratesDataStore;

@end

//
//  main.m
//  HomeTask2
//
//  Created by 2 on 1/26/16.
//  Copyright © 2016 123. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Artist.h"
#import "Group.h"
#import "Song.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSMutableArray *someSongs=[[NSMutableArray alloc] initWithObjects:[[Song alloc] initWithName:@"Ты Кинула" text:@"SomeText" artists: [[NSArray alloc] initWithObjects: @"Lyapis", @"Crew", nil]],[[Song alloc] initWithName:@"Грай" text:@"SomeText" artists: [[NSArray alloc] initWithObjects: @"Lyapis", @"Crew", nil]], nil];
        NSMutableArray *songs=[[NSMutableArray alloc] initWithObjects:[[Song alloc] initWithName:@"Brutto" text:@"SomeText" artists: [[NSArray alloc] initWithObjects: @"Lyapis", @"Crew", nil]],[[Song alloc] initWithName:@"someSong" text:@"notSomeSong" artists: [[NSArray alloc] initWithObjects: @"Lyapis", @"Crew", nil]], nil];
        NSMutableArray *songsOfBrutto=[[NSMutableArray alloc] initWithObjects:[[Song alloc] initWithName:@"Brutto" text:@"SomeText" artists: [[NSArray alloc] initWithObjects: @"Lyapis", @"Crew", nil]],[[Song alloc] initWithName:@"Underdog" text:@"SomeText" artists: [[NSArray alloc] initWithObjects: @"Lyapis", @"Crew", nil]], nil];
        NSMutableArray *noNameSongs=[[NSMutableArray alloc] initWithObjects:[[Song alloc] initWithName:@"Brutto" text:@"SomeText" artists: [[NSArray alloc] initWithObjects: @"Lyapis", @"Crew", nil]],[[Song alloc] initWithName:@"Underdog" text:@"SomeText" artists: [[NSArray alloc] initWithObjects: @"Lyapis", @"Crew", nil]], nil];
        
        Artist *notSergeyMihalok=[[Artist alloc] initWithName:@"Не Сергей Михалок" listOfSongs:someSongs];
        Artist *mihalok=[[Artist alloc] initWithName:@"Михалок" listOfSongs:songs];
        Artist *sergey=[[Artist alloc] initWithName:@"Сергей" listOfSongs:songsOfBrutto];
        Artist *noName=[[Artist alloc] initWithName:@"Noname" listOfSongs:noNameSongs];
        
        //Group *lyapisCrew=[[Group alloc] initWithName:@"LyapisCrew" listOfSongs:songs listOfArtist:[[NSArray alloc] initWithObjects: mihalok, notSergeyMihalok, nil]];
        //Group *brutto=[[Group alloc] initWithName:@"Brutto" listOfSongs: songsOfBrutto listOfArtist:[[NSArray alloc] initWithObjects: mihalok, sergey, nil]];
        Group *lyapisCrew=[[Group alloc] init];
        lyapisCrew.name= @"LyapisCrew";
        lyapisCrew.listOfSongs= songs;
        lyapisCrew.listOfArtists= [[NSArray alloc] initWithObjects:notSergeyMihalok, noName, nil];
        
        Group *brutto=[[Group alloc] init];
        brutto.name= @"Brutto";
        brutto.listOfSongs= songsOfBrutto;
        brutto.listOfArtists= [[NSArray alloc] initWithObjects:mihalok, sergey, nil];
        
        
        
        
    }
    return 0;
}

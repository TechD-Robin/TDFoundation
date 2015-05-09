//
//  TDUtilitiesTest.m
//  TDFoundation
//
//  Created by Robin Hsu on 2015/5/7.
//  Copyright (c) 2015年 TechD. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>

#import "TDUtilities.h"

@interface TDUtilitiesTest : XCTestCase

@end

@implementation TDUtilitiesTest

//  ------------------------------------------------------------------------------------------------
- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

//  ------------------------------------------------------------------------------------------------
- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

//  --------------------------------
//  ------------------------------------------------------------------------------------------------
- ( void ) testGetImageName
{
    NSString                      * imageName;
    
    imageName                       = TDGetPNGImageNameForAssetScale( @"testImageName" , 1 );

    imageName                       = TDGetPNGImageNameForAssetScale( @"testImageName@3X" , 1 );

    imageName                       = TDGetPNGImageNameForAssetScale( @"testImageName@2X.png" , 2 );
    
    imageName                       = TDGetPNGImageNameForAssetScale( @"testImageName@2X.abcdef" , 2 );
    
}


//  ------------------------------------------------------------------------------------------------
//  ------------------------------------------------------------------------------------------------

@end


//  ------------------------------------------------------------------------------------------------
//  ------------------------------------------------------------------------------------------------

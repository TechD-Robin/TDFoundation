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

//  ------------------------------------------------------------------------------------------------
- ( void ) testCheckFilenameWithAssetScale
{
    BOOL                            result;
    
    result                          = TDCheckFilenameWithAssetScale( @"abc@2x" );
    NSLog( @"result : %d", result );
    XCTAssertTrue( result, @"method's result should be true." );

    result                          = TDCheckFilenameWithAssetScale( @"@2Xabc@2x" );
    NSLog( @"result : %d", result );
    XCTAssertTrue( result, @"method's result should be true." );
    
    result                          = TDCheckFilenameWithAssetScale( @"abc@2x.png" );
    NSLog( @"result : %d", result );
    XCTAssertTrue( result, @"method's result should be true." );
    
    result                          = TDCheckFilenameWithAssetScale( @"abc@99x.xyz" );
    NSLog( @"result : %d", result );
    XCTAssertTrue( result, @"method's result should be true." );

    result                          = TDCheckFilenameWithAssetScale( @"abc@0x" );
    NSLog( @"result : %d", result );
    XCTAssertFalse( result, @"method's result should be false." );
    
    result                          = TDCheckFilenameWithAssetScale( @"@2x" );
    NSLog( @"result : %d", result );
    XCTAssertFalse( result, @"method's result should be false." );
    
    result                          = TDCheckFilenameWithAssetScale( @"?@2x" );
    NSLog( @"result : %d", result );
    XCTAssertFalse( result, @"method's result should be false." );

    result                          = TDCheckFilenameWithAssetScale( @"abcde@" );
    NSLog( @"result : %d", result );
    XCTAssertFalse( result, @"method's result should be false." );
    
    result                          = TDCheckFilenameWithAssetScale( @"abcde@x" );
    NSLog( @"result : %d", result );
    XCTAssertFalse( result, @"method's result should be false." );

    result                          = TDCheckFilenameWithAssetScale( @"abc@2Xabc@2" );
    NSLog( @"result : %d", result );
    XCTAssertFalse( result, @"method's result should be false." );
    
    result                          = TDCheckFilenameWithAssetScale( @"?abc@2Xabc@2X" );
    NSLog( @"result : %d", result );
    XCTAssertFalse( result, @"method's result should be false." );

    result                          = TDCheckFilenameWithAssetScale( @"abc@2x .png" );
    NSLog( @"result : %d", result );
    XCTAssertFalse( result, @"method's result should be false." );
    
}

//  ------------------------------------------------------------------------------------------------
- ( void ) testGetFilenameWithAssetScale
{
    NSString                      * filename;
    
    filename                        = TDGetFilenameWithAssetScale( nil, 0 );
    XCTAssertNil( filename, @"Filename should be nil if input source is nil");
    
    filename                        = TDGetFilenameWithAssetScale( @"testImageName" , 1 );
    XCTAssertNotNil( filename, @"the  filename should not be nil" );
    
    filename                        = TDGetFilenameWithAssetScale( @"testImageName.abcdef" , 2 );
    XCTAssertNotNil( filename, @"the  filename should not be nil" );

    filename                        = TDGetFilenameWithAssetScale( @"testImageName@", 3 );
    XCTAssertNotNil( filename, @"the  filename should not be nil" );

    filename                        = TDGetFilenameWithAssetScale( @"testImageName@3", 3 );
    XCTAssertNotNil( filename, @"the  filename should not be nil" );
    
    filename                        = TDGetFilenameWithAssetScale( @"testImageName@3X" , 1 );
    XCTAssertNotNil( filename, @"the  filename should not be nil" );

    filename                        = TDGetFilenameWithAssetScale( @"testImageName@2x.png" , 2 );
    XCTAssertNotNil( filename, @"the  filename should not be nil" );
    
    filename                        = TDGetFilenameWithAssetScale( @"testImageName@4X.abcdef" , 2 );
    XCTAssertNotNil( filename, @"the  filename should not be nil" );
    
}

//  ------------------------------------------------------------------------------------------------
- ( void ) testGetPNGImageFilenameWithAssetScale
{
    NSString                      * imageName;
    
    imageName                       = TDGetPNGImageFilenameWithAssetScale( nil, 0 );
    XCTAssertNil( imageName, @"Image name should be nil if input source is nil");

    imageName                       = TDGetPNGImageFilenameWithAssetScale( @"abc", 1 );
    XCTAssertNotNil( imageName, @"the image name should not be nil" );
    
    imageName                       = TDGetPNGImageFilenameWithAssetScale( @"abc.png", 2 );
    XCTAssertNotNil( imageName, @"the image name should not be nil" );
    
    imageName                       = TDGetPNGImageFilenameWithAssetScale( @"abc def", 3 );
    XCTAssertNotNil( imageName, @"the image name should not be nil" );
    
    imageName                       = TDGetPNGImageFilenameWithAssetScale( @"abc def.png", 4 );
    XCTAssertNotNil( imageName, @"the image name should not be nil" );
    
    imageName                       = TDGetPNGImageFilenameWithAssetScale( @"xyz/abc def.png", 4 );
    XCTAssertNotNil( imageName, @"the image name should not be nil" );
    
    imageName                       = TDGetPNGImageFilenameWithAssetScale( @"abc def.xyz.png", 6 );
    XCTAssertNotNil( imageName, @"the image name should not be nil" );
    
    imageName                       = TDGetPNGImageFilenameWithAssetScale( @"abc@99x.png", 2 );
    XCTAssertNotNil( imageName, @"the image name should not be nil" );
    
    imageName                       = TDGetPNGImageFilenameWithAssetScale( @"abc@99x.xyz.png", 2 );
    XCTAssertNotNil( imageName, @"the image name should not be nil" );
    
    
    imageName                       = TDGetPNGImageFilenameWithAssetScale( @"abc.xyz", 1 );
    XCTAssertNil( imageName, @"the image name should be nil" );
    
    imageName                       = TDGetPNGImageFilenameWithAssetScale( @"abc@99x.xyz", 2 );
    XCTAssertNil( imageName, @"the image name should be nil" );
    
    
}

//  --------------------------------
//  ------------------------------------------------------------------------------------------------
//  ------------------------------------------------------------------------------------------------

@end









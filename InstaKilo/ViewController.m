//
//  ViewController.m
//  InstaKilo
//
//  Created by Alain  on 2015-05-22.
//  Copyright (c) 2015 Alain . All rights reserved.
//

#import "ViewController.h"
#import "PhotoCollectionViewCell.h"
#import "Image.h"


@interface ViewController ()

@property NSMutableArray *objects;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    Image *image1 = [[Image alloc] initWithTitle:@"Image 1" andImage:[UIImage imageNamed:@"1.jpg"]];
    Image *image2 = [[Image alloc] initWithTitle:@"Image 2" andImage:[UIImage imageNamed:@"2.jpeg"]];
    Image *image3 = [[Image alloc] initWithTitle:@"Image 3" andImage:[UIImage imageNamed:@"3.jpg"]];
    Image *image4 = [[Image alloc] initWithTitle:@"Image 4" andImage:[UIImage imageNamed:@"4.jpg"]];
    Image *image5 = [[Image alloc] initWithTitle:@"Image 5" andImage:[UIImage imageNamed:@"5.jpg"]];
    Image *image6 = [[Image alloc] initWithTitle:@"Image 6" andImage:[UIImage imageNamed:@"6.jpg"]];
    Image *image7 = [[Image alloc] initWithTitle:@"Image 7" andImage:[UIImage imageNamed:@"7.jpg"]];
    Image *image8 = [[Image alloc] initWithTitle:@"Image 8" andImage:[UIImage imageNamed:@"8.jpg"]];
    Image *image9 = [[Image alloc] initWithTitle:@"Image 9" andImage:[UIImage imageNamed:@"9.jpeg"]];
    Image *image10 = [[Image alloc] initWithTitle:@"Image 10" andImage:[UIImage imageNamed:@"10.jpg"]];

    
    self.objects = [[NSMutableArray alloc] init];
    [self.objects addObject:image1];
    [self.objects addObject:image2];
    [self.objects addObject:image3];
    [self.objects addObject:image4];
    [self.objects addObject:image5];
    [self.objects addObject:image6];
    [self.objects addObject:image7];
    [self.objects addObject:image8];
    [self.objects addObject:image9];
    [self.objects addObject:image10];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return self.objects.count;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    // create, setup, return cell
   PhotoCollectionViewCell *cell =[collectionView dequeueReusableCellWithReuseIdentifier:@"cellIdentifier" forIndexPath:indexPath];
    
//    cell.backgroundColor=[UIColor greenColor];
    cell.imageLabel.image = [self.objects[indexPath.row] image];
    

    return cell;
}

@end

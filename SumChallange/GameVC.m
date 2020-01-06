//
//  GameVC.m
//  SumChallange
//
//  Created by Macbook on 11/08/2019.
//  Copyright © 2019 TP. All rights reserved.
//

#import "GameVC.h"

@interface GameVC ()
{
    NSMutableArray * dataArray;
    NSMutableDictionary * data;
    
    NSMutableDictionary * SelectedItem;
    
    NSString * target;
    
    NSString * answerString;
    
    
    int targetNumber;
    int sum;
    int attempts;
    int buttonCount;
    
    int randomButton;
    int index;
    int score;
    int count;
    
    NSTimer * t;
    int timer;
    
}
@end

@implementation GameVC

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.navigationController.navigationBar.hidden = false;
    
    if ([_level isEqualToString:@"Easy"])
    {
        [self setEasyArray];
    }
    else if ([_level isEqualToString:@"Medium"])
    {
        [self setMediumArray];
    }
    else
    {
        [self setHardArray];
    }
    
    
    
    sum = 0;
    buttonCount = 1;
    
    index = 0;
    score = 0;
    count = 0;
    attempts = 3;
    
    [self setScreen];
    

    
}


- (IBAction)b1:(id)sender
{
    _b1.enabled = false;
    int val = [_b1.titleLabel.text intValue];
    
    if (buttonCount == 1)
    {
        sum = sum + val;
        answerString = [NSString stringWithFormat:@"%d +",val];
        _answerLabel.text = answerString;
         buttonCount = buttonCount + 1;
        
    }
    else if (buttonCount == 2)
    {
        sum = sum + val;
        answerString = [NSString stringWithFormat:@"%@ %d +",answerString, val];
        _answerLabel.text = answerString;
         buttonCount = buttonCount + 1;
    }
    else if (buttonCount == 3)
    {
        sum = sum + val;
        answerString = [NSString stringWithFormat:@"%@ %d",answerString, val];
        _answerLabel.text = answerString;
         buttonCount = buttonCount + 1;
        if (sum == targetNumber)
        {
            score = score + 10;
            [self showPassedAlert];
            count = count + 1;
        }
        else
        {
            if (attempts > 1)
            {
                attempts = attempts - 1;
                _attemptsLabel.text = [NSString stringWithFormat:@"%d attempts left", attempts];
                [self showFailAlertAttempt];
            }
            else
            {
                [self showFailAlert];
            }
        }
        
    }
}

- (IBAction)b2:(id)sender
{
    _b2.enabled = false;
    int val = [_b2.titleLabel.text intValue];
    
    if (buttonCount == 1)
    {
        sum = sum + val;
        answerString = [NSString stringWithFormat:@"%d +",val];
        _answerLabel.text = answerString;
         buttonCount = buttonCount + 1;
        
    }
    else if (buttonCount == 2)
    {
        sum = sum + val;
        answerString = [NSString stringWithFormat:@"%@ %d +",answerString, val];
        _answerLabel.text = answerString;
         buttonCount = buttonCount + 1;
    }
    else if (buttonCount == 3)
    {
        sum = sum + val;
        answerString = [NSString stringWithFormat:@"%@ %d",answerString, val];
        _answerLabel.text = answerString;
         buttonCount = buttonCount + 1;
        if (sum == targetNumber)
        {
            score = score + 10;
            [self showPassedAlert];
            count = count + 1;
        }
        else
        {
            if (attempts > 1)
            {
                attempts = attempts - 1;
                _attemptsLabel.text = [NSString stringWithFormat:@"%d attempts left", attempts];
                [self showFailAlertAttempt];
            }
            else
            {
                [self showFailAlert];
            }
        }
        
    }
}

- (IBAction)b3:(id)sender
{
    _b3.enabled = false;
    int val = [_b3.titleLabel.text intValue];
    
    if (buttonCount == 1)
    {
        sum = sum + val;
        answerString = [NSString stringWithFormat:@"%d +",val];
        _answerLabel.text = answerString;
         buttonCount = buttonCount + 1;
        
    }
    else if (buttonCount == 2)
    {
        sum = sum + val;
        answerString = [NSString stringWithFormat:@"%@ %d +",answerString, val];
        _answerLabel.text = answerString;
        buttonCount = buttonCount + 1;
    }
    else if (buttonCount == 3)
    {
        sum = sum + val;
        answerString = [NSString stringWithFormat:@"%@ %d",answerString, val];
        _answerLabel.text = answerString;
         buttonCount = buttonCount + 1;
        if (sum == targetNumber)
        {
            score = score + 10;
            [self showPassedAlert];
            count = count + 1;
        }
        else
        {
            if (attempts > 1)
            {
                attempts = attempts - 1;
                _attemptsLabel.text = [NSString stringWithFormat:@"%d attempts left", attempts];
                [self showFailAlertAttempt];
            }
            else
            {
                [self showFailAlert];
            }
        }
        
    }
}

- (IBAction)b4:(id)sender
{
    _b4.enabled = false;
    int val = [_b4.titleLabel.text intValue];
    
    if (buttonCount == 1)
    {
        sum = sum + val;
        answerString = [NSString stringWithFormat:@"%d +",val];
        _answerLabel.text = answerString;
         buttonCount = buttonCount + 1;
        
    }
    else if (buttonCount == 2)
    {
        sum = sum + val;
        answerString = [NSString stringWithFormat:@"%@ %d +",answerString, val];
        _answerLabel.text = answerString;
        buttonCount = buttonCount + 1;
    }
    else if (buttonCount == 3)
    {
        sum = sum + val;
        answerString = [NSString stringWithFormat:@"%@ %d",answerString, val];
        _answerLabel.text = answerString;
         buttonCount = buttonCount + 1;
        if (sum == targetNumber)
        {
            score = score + 10;
            [self showPassedAlert];
            count = count + 1;
        }
        else
        {
            if (attempts > 1)
            {
                attempts = attempts - 1;
                _attemptsLabel.text = [NSString stringWithFormat:@"%d attempts left", attempts];
                [self showFailAlertAttempt];
                
            }
            else
            {
                [self showFailAlert];
            }
        }
        
    }
}

- (IBAction)b5:(id)sender
{
    _b5.enabled = false;
    int val = [_b5.titleLabel.text intValue];
    
    if (buttonCount == 1)
    {
        sum = sum + val;
        answerString = [NSString stringWithFormat:@"%d +",val];
        _answerLabel.text = answerString;
         buttonCount = buttonCount + 1;
        
    }
    else if (buttonCount == 2)
    {
        sum = sum + val;
        answerString = [NSString stringWithFormat:@"%@ %d +",answerString, val];
        _answerLabel.text = answerString;
         buttonCount = buttonCount + 1;
       
    }
    else if (buttonCount == 3)
    {
        sum = sum + val;
        answerString = [NSString stringWithFormat:@"%@ %d",answerString, val];
        _answerLabel.text = answerString;
         buttonCount = buttonCount + 1;
        
        if (sum == targetNumber)
        {
            score = score + 10;
            [self showPassedAlert];
            count = count + 1;
        }
        else
        {
            if (attempts > 1)
            {
                attempts = attempts - 1;
                _attemptsLabel.text = [NSString stringWithFormat:@"%d attempts left", attempts];
                [self showFailAlertAttempt];
            }
            else
            {
                [self showFailAlert];
            }
        }
        
    }
}

- (IBAction)b6:(id)sender
{
    _b6.enabled = false;
    int val = [_b6.titleLabel.text intValue];
    
    if (buttonCount == 1)
    {
        sum = sum + val;
        answerString = [NSString stringWithFormat:@"%d +",val];
        _answerLabel.text = answerString;
         buttonCount = buttonCount + 1;
        
    }
    else if (buttonCount == 2)
    {
        sum = sum + val;
        answerString = [NSString stringWithFormat:@"%@ %d +",answerString, val];
        _answerLabel.text = answerString;
         buttonCount = buttonCount + 1;
    }
    else if (buttonCount == 3)
    {
        sum = sum + val;
        answerString = [NSString stringWithFormat:@"%@ %d",answerString, val];
        _answerLabel.text = answerString;
         buttonCount = buttonCount + 1;
        if (sum == targetNumber)
        {
            score = score + 10;
            [self showPassedAlert];
            count = count + 1;
        }
        else
        {
            if (attempts > 1)
            {
                attempts = attempts - 1;
                _attemptsLabel.text = [NSString stringWithFormat:@"%d attempts left", attempts];
                [self showFailAlertAttempt];
                
                //[self setScreen];
            }
            else
            {
                [self showFailAlert];
            }
        }
        
    }
}


-(void) setScreen
{

    if (count == 5)
    {
        if (score == 50)
        {
            [self showPassedAlertFinal];
            _scoreLabel.text = [NSString stringWithFormat:@"%d", score];
        }
        else
        {
            [self showFailAlertFinal];
            _scoreLabel.text = [NSString stringWithFormat:@"%d", score];
        }
    }
    else
    {
        sum = 0;
        buttonCount = 1;
        answerString = @"";
        
        int rand = arc4random()%dataArray.count;
        
        SelectedItem = [dataArray objectAtIndex:rand];
        
        targetNumber = [[SelectedItem objectForKey:@"target"] intValue];
        
        _targetLabel.text = [SelectedItem objectForKey:@"target"];
        _questionLabel.text = [SelectedItem objectForKey:@"question"];
        
        _answerLabel.text = @"";
        
        _attemptsLabel.text = [NSString stringWithFormat:@"%d attempts left", attempts];
        
        _scoreLabel.text = [NSString stringWithFormat:@"%d", score];
        
        [self setButtons];
    }
    
 
}


-(void) setButtons
{
    _b1.enabled = true;
    _b2.enabled = true;
    _b3.enabled = true;
    _b4.enabled = true;
    _b5.enabled = true;
    _b6.enabled = true;
    
    [_b1 setTitle:[SelectedItem objectForKey:@"n1"] forState:UIControlStateNormal];
    [_b2 setTitle:[SelectedItem objectForKey:@"n2"] forState:UIControlStateNormal];
    [_b3 setTitle:[SelectedItem objectForKey:@"n3"] forState:UIControlStateNormal];
    [_b4 setTitle:[SelectedItem objectForKey:@"n4"] forState:UIControlStateNormal];
    [_b5 setTitle:[SelectedItem objectForKey:@"n5"] forState:UIControlStateNormal];
    [_b6 setTitle:[SelectedItem objectForKey:@"n6"] forState:UIControlStateNormal];
}

-(void) setEasyArray
{
    dataArray = [[NSMutableArray alloc] init];
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"Select 3 numbers to make 10" forKey:@"question"];
    [data setValue:@"7" forKey:@"n1"];
    [data setValue:@"8" forKey:@"n2"];
    [data setValue:@"6" forKey:@"n3"];
    [data setValue:@"1" forKey:@"n4"];
    [data setValue:@"5" forKey:@"n5"];
    [data setValue:@"4" forKey:@"n6"];
    [data setValue:@"10" forKey:@"target"];
    [dataArray addObject:data];
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"Select 3 numbers to make 16" forKey:@"question"];
    [data setValue:@"7" forKey:@"n1"];
    [data setValue:@"5" forKey:@"n2"];
    [data setValue:@"6" forKey:@"n3"];
    [data setValue:@"10" forKey:@"n4"];
    [data setValue:@"15" forKey:@"n5"];
    [data setValue:@"4" forKey:@"n6"];
    [data setValue:@"16" forKey:@"target"];
    [dataArray addObject:data];
    
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"Select 3 numbers to make 17" forKey:@"question"];
    [data setValue:@"10" forKey:@"n1"];
    [data setValue:@"5" forKey:@"n2"];
    [data setValue:@"8" forKey:@"n3"];
    [data setValue:@"1" forKey:@"n4"];
    [data setValue:@"4" forKey:@"n5"];
    [data setValue:@"9" forKey:@"n6"];
    [data setValue:@"17" forKey:@"target"];
    [dataArray addObject:data];
    
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"Select 3 numbers to make 12" forKey:@"question"];
    [data setValue:@"3" forKey:@"n1"];
    [data setValue:@"5" forKey:@"n2"];
    [data setValue:@"8" forKey:@"n3"];
    [data setValue:@"1" forKey:@"n4"];
    [data setValue:@"4" forKey:@"n5"];
    [data setValue:@"9" forKey:@"n6"];
    [data setValue:@"12" forKey:@"target"];
    [dataArray addObject:data];
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"Select 3 numbers to make 9" forKey:@"question"];
    [data setValue:@"3" forKey:@"n1"];
    [data setValue:@"5" forKey:@"n2"];
    [data setValue:@"8" forKey:@"n3"];
    [data setValue:@"1" forKey:@"n4"];
    [data setValue:@"4" forKey:@"n5"];
    [data setValue:@"9" forKey:@"n6"];
    [data setValue:@"9" forKey:@"target"];
    [dataArray addObject:data];
    
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"Select 3 numbers to make 15" forKey:@"question"];
    [data setValue:@"3" forKey:@"n1"];
    [data setValue:@"5" forKey:@"n2"];
    [data setValue:@"8" forKey:@"n3"];
    [data setValue:@"1" forKey:@"n4"];
    [data setValue:@"4" forKey:@"n5"];
    [data setValue:@"9" forKey:@"n6"];
    [data setValue:@"15" forKey:@"target"];
    [dataArray addObject:data];
    
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"Select 3 numbers to make 13" forKey:@"question"];
    [data setValue:@"3" forKey:@"n1"];
    [data setValue:@"5" forKey:@"n2"];
    [data setValue:@"7" forKey:@"n3"];
    [data setValue:@"1" forKey:@"n4"];
    [data setValue:@"4" forKey:@"n5"];
    [data setValue:@"9" forKey:@"n6"];
    [data setValue:@"13" forKey:@"target"];
    [dataArray addObject:data];
}


-(void) setMediumArray
{
    dataArray = [[NSMutableArray alloc] init];
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"Select 3 numbers to make 25" forKey:@"question"];
    [data setValue:@"7" forKey:@"n1"];
    [data setValue:@"8" forKey:@"n2"];
    [data setValue:@"6" forKey:@"n3"];
    [data setValue:@"10" forKey:@"n4"];
    [data setValue:@"5" forKey:@"n5"];
    [data setValue:@"4" forKey:@"n6"];
    [data setValue:@"25" forKey:@"target"];
    [dataArray addObject:data];
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"Select 3 numbers to make 30" forKey:@"question"];
    [data setValue:@"8" forKey:@"n1"];
    [data setValue:@"5" forKey:@"n2"];
    [data setValue:@"16" forKey:@"n3"];
    [data setValue:@"10" forKey:@"n4"];
    [data setValue:@"15" forKey:@"n5"];
    [data setValue:@"14" forKey:@"n6"];
    [data setValue:@"30" forKey:@"target"];
    [dataArray addObject:data];
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"Select 3 numbers to make 33" forKey:@"question"];
    [data setValue:@"2" forKey:@"n1"];
    [data setValue:@"5" forKey:@"n2"];
    [data setValue:@"16" forKey:@"n3"];
    [data setValue:@"10" forKey:@"n4"];
    [data setValue:@"15" forKey:@"n5"];
    [data setValue:@"13" forKey:@"n6"];
    [data setValue:@"33" forKey:@"target"];
    [dataArray addObject:data];
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"Select 3 numbers to make 21" forKey:@"question"];
    [data setValue:@"7" forKey:@"n1"];
    [data setValue:@"11" forKey:@"n2"];
    [data setValue:@"10" forKey:@"n3"];
    [data setValue:@"3" forKey:@"n4"];
    [data setValue:@"15" forKey:@"n5"];
    [data setValue:@"14" forKey:@"n6"];
    [data setValue:@"21" forKey:@"target"];
    [dataArray addObject:data];
    
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"Select 3 numbers to make 19" forKey:@"question"];
    [data setValue:@"7" forKey:@"n1"];
    [data setValue:@"5" forKey:@"n2"];
    [data setValue:@"8" forKey:@"n3"];
    [data setValue:@"10" forKey:@"n4"];
    [data setValue:@"4" forKey:@"n5"];
    [data setValue:@"11" forKey:@"n6"];
    [data setValue:@"19" forKey:@"target"];
    [dataArray addObject:data];
    
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"Select 3 numbers to make 24" forKey:@"question"];
    [data setValue:@"10" forKey:@"n1"];
    [data setValue:@"5" forKey:@"n2"];
    [data setValue:@"8" forKey:@"n3"];
    [data setValue:@"11" forKey:@"n4"];
    [data setValue:@"4" forKey:@"n5"];
    [data setValue:@"9" forKey:@"n6"];
    [data setValue:@"24" forKey:@"target"];
    [dataArray addObject:data];
    
    
}


-(void) setHardArray
{
    dataArray = [[NSMutableArray alloc] init];
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"Select 3 numbers to make 52" forKey:@"question"];
    [data setValue:@"10" forKey:@"n1"];
    [data setValue:@"5" forKey:@"n2"];
    [data setValue:@"17" forKey:@"n3"];
    [data setValue:@"11" forKey:@"n4"];
    [data setValue:@"15" forKey:@"n5"];
    [data setValue:@"20" forKey:@"n6"];
    [data setValue:@"52" forKey:@"target"];
    [dataArray addObject:data];
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"Select 3 numbers to make 44" forKey:@"question"];
    [data setValue:@"10" forKey:@"n1"];
    [data setValue:@"15" forKey:@"n2"];
    [data setValue:@"18" forKey:@"n3"];
    [data setValue:@"11" forKey:@"n4"];
    [data setValue:@"15" forKey:@"n5"];
    [data setValue:@"19" forKey:@"n6"];
    [data setValue:@"44" forKey:@"target"];
    [dataArray addObject:data];
    
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"Select 3 numbers to make 67" forKey:@"question"];
    [data setValue:@"17" forKey:@"n1"];
    [data setValue:@"25" forKey:@"n2"];
    [data setValue:@"28" forKey:@"n3"];
    [data setValue:@"21" forKey:@"n4"];
    [data setValue:@"15" forKey:@"n5"];
    [data setValue:@"29" forKey:@"n6"];
    [data setValue:@"67" forKey:@"target"];
    [dataArray addObject:data];
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"Select 3 numbers to make 56" forKey:@"question"];
    [data setValue:@"18" forKey:@"n1"];
    [data setValue:@"20" forKey:@"n2"];
    [data setValue:@"13" forKey:@"n3"];
    [data setValue:@"19" forKey:@"n4"];
    [data setValue:@"15" forKey:@"n5"];
    [data setValue:@"21" forKey:@"n6"];
    [data setValue:@"56" forKey:@"target"];
    [dataArray addObject:data];
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"Select 3 numbers to make 37" forKey:@"question"];
    [data setValue:@"10" forKey:@"n1"];
    [data setValue:@"5" forKey:@"n2"];
    [data setValue:@"8" forKey:@"n3"];
    [data setValue:@"12" forKey:@"n4"];
    [data setValue:@"15" forKey:@"n5"];
    [data setValue:@"9" forKey:@"n6"];
    [data setValue:@"37" forKey:@"target"];
    [dataArray addObject:data];
    
    data = [[NSMutableDictionary alloc] init];
    [data setValue:@"Select 3 numbers to make 41" forKey:@"question"];
    [data setValue:@"10" forKey:@"n1"];
    [data setValue:@"7" forKey:@"n2"];
    [data setValue:@"8" forKey:@"n3"];
    [data setValue:@"11" forKey:@"n4"];
    [data setValue:@"15" forKey:@"n5"];
    [data setValue:@"19" forKey:@"n6"];
    [data setValue:@"41" forKey:@"target"];
    [dataArray addObject:data];
}

-(void) showFailAlert
{
    [t invalidate];
    
    UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"Failed"
                                                                   message:[NSString stringWithFormat:@"You failed to get target : %d", targetNumber]
                                                            preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"Try Again" style:UIAlertActionStyleDefault
                                                          handler:^(UIAlertAction * action) {
                                                              
                                                              [self.navigationController popViewControllerAnimated:YES];
                                                              
                                                          }];
    
    [alert addAction:defaultAction];
    [self presentViewController:alert animated:YES completion:nil];
}

-(void) showFailAlertFinal
{
    [t invalidate];
    
    UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"Failed"
                                                                   message:[NSString stringWithFormat:@"You've failed the rounds. You Scored : %d", score]
                                                            preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"Try Again" style:UIAlertActionStyleDefault
                                                          handler:^(UIAlertAction * action) {
                                                              
                                                              [self.navigationController popViewControllerAnimated:YES];
                                                              
                                                          }];
    
    [alert addAction:defaultAction];
    [self presentViewController:alert animated:YES completion:nil];
}


-(void) showFailAlertAttempt
{
    [t invalidate];
    
    UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"Failed"
                                                                   message:[NSString stringWithFormat:@"You failed to get target : %d . %d attempts remaining", targetNumber , attempts]
                                                            preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"Try Again" style:UIAlertActionStyleDefault
                                                          handler:^(UIAlertAction * action) {
                                                              
                                                              [self setScreen];
                                                              
                                                          }];
    
    [alert addAction:defaultAction];
    [self presentViewController:alert animated:YES completion:nil];
}


-(void) showPassedAlert
{
    [t invalidate];
    
    UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"Congratulations"
                                                                   message:[NSString stringWithFormat:@"You have summed the target %d", targetNumber]
                                                            preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"Next" style:UIAlertActionStyleDefault
                                                          handler:^(UIAlertAction * action) {
                                                              
                                                              [self setScreen];
                                                              
                                                          }];
    
    [alert addAction:defaultAction];
    [self presentViewController:alert animated:YES completion:nil];
}


-(void) showPassedAlertFinal
{
    [t invalidate];
    
    UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"Congratulations"
                                                                   message:[NSString stringWithFormat:@"You've won all the rounds. You Scored : %d", score]
                                                            preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"Main Menu" style:UIAlertActionStyleDefault
                                                          handler:^(UIAlertAction * action) {
                                                              
                                                              [self.navigationController popViewControllerAnimated:YES];
                                                              
                                                          }];
    
    [alert addAction:defaultAction];
    [self presentViewController:alert animated:YES completion:nil];
}


@end

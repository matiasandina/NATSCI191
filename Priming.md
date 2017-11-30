# Background

In this task we are going to study how the inclusion of a visual cue (e.g, a photograph) can influence word recognition.  

# Method

For this experiment, subjects were presented with images and asked to complete the first letter of a word. Participants were separated into 2 groups. Group 1 saw a series of images and group 2 saw a different series of images. Both groups were tested on the same words to complete.

## Example Doctor vs Wallet

Group 1 saw this picture.

![](https://github.com/matiasandina/NATSCI191/blob/master/Fall2017/images/doctor.jpg)

Group 2 saw this picture. 

![](https://github.com/matiasandina/NATSCI191/blob/master/Fall2017/images/wallet.jpg)

Both groups were immediately tested with the following completion task

`_ U R S E`

The expected answer for Group 1 is "Nurse" while Group 2 is expected to answer "Purse". This is an example of priming, how images alter the ease to retrieve certain words. Below is the complete trial structure

| Trial        | Priming Group 1 vs Group 2          | Task           |
| ------------- |:-------------:|:-------------:|
| 1      |    Doctor vs Wallet  | `_ U R S E` | 
| 2      |    Clock vs Fruit | `_ O U R` |
| 3      |    Beach vs  Bike | `_ O O L` |
| 4      |    Bonfire vs Knife | `_ E A T` |

# The Data

The information will be found on a file called `priming_counts_trials.csv`. This can be opened with Excel. The matrix has 4 variables named **"group","trialID","keys","n"**

* **group** = Group to what the subjects were randomly assigned to, takes values 1 or 2.
* **trialID** = The number of trial in question, integer from 1 to 4.
* **keys** = letters pressed on the keyboard for each trial.
* **n** = number of times each letter was pressed (comes from data aggregation).

# Exercises

```
1. Insert a new column between the *keys* and *n* columns
1. Complete the words that would be formed using the first letter as input. ('n' would go into 'nurse' for trial 1)
1. Make 4 graphs (1 per trial) showing the difference in response for group 1 and group 2 in the same graph. Choose either a bargraph or a piechart.
```

Choose colors that sound appropriate. Remember that color blind people have difficulties distinguishing some color combinations, more info [here](https://www.robotswillkillusall.org/static/flabpal-colorblind.png)

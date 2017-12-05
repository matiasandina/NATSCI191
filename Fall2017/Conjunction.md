# Background

If event A includes event B it means that the probability of B cannot be greater than the probability of A, right? Well, our brains not always function that way. Solving the probability equations on the fly is not as straightforward as we would like and we fall for things that appear to be true rather than crunching the numbers.

# Method

Participants were assigned into groups. Both groups will receive the same two situations but the orderd will be reversed.

* **Group 1**: Linda's Problem - Conjunction Problem
* **Group 2**: Conjunction Problem - Linda's Problem

## The Linda Problem

The Linda problem is a famous problem in [Behavioral Economics.](https://en.wikipedia.org/wiki/Conjunction_fallacy)

Additionally, they were presented an artificial conjunction problem. The question asked participants what of two 3-card hands were more likely, one that had 1 Queen or another one with 3 queens on it. Logic dictates that 3 out of 3 cards being particular Queens is less likely that 1 particular Queen and 2 other cards. 


# The Data

Information for this task will be found on `conjunction_all_trials.csv` and `conjunction_count_trials.csv`.

## Getting the data in a table

Go to the `data` folder inside `Fall2017`. Click on the files of interest. Go to `Raw` and copy the data. Go to a spreadsheet and paste the data into the first cell (A1). Go to the `data` tab on Excel/Google Spreadsheets. You will see an option that gets you towards `Text into Columns`.

`conjunction_all_trials.csv` has the following variables: **"unique_id,	group,	keys,	RT,	trialID"**

* **unique_id** = Subjects ID across all experiments, a 3 number digit (except for 2 subjects that have 5 digit IDs).
* **group** = Group to what the subjects were randomly assigned to, takes values 1 or 2. 
* **keys** = letters pressed on the keyboard for each trial.
* **RT** = Reaction Time, time from taken from stimulus deliver to key being pressed in seconds.
* **trialID** = The number of trial in question, integer from 1 to 2.

> Take into account that `trialID` has information of what was presented to subjects, remember trial 1 for group 1 is the Linda problem while it's the conjunction problem for group 2.


`conjunction_count_trials.csv` has the following variables: **"group,	trialID,	keys,	n"**

* **group** = Assigned group, 1 or 2.
* **trialID** = The number of trial in question, integer from 1 to 2.
* **keys** = letters pressed on the keyboard for each trial.
* **n** = number of times each letter was pressed (comes from data aggregation).

# Exercises

## Doing the math

```
1. Do the math for the likelihood of getting the special Queen and 2 other cards. Assume No reposition of cards to the deck.
1. Do the math for the likelihood of getting the 3 special Queens. Assume No reposition of cards to the deck.
```
Assume You might find some help about probability calculation in the first answer in this link. The example is with 4 Kings instead of 3 Queens, so it needs some adjustment. [See it here](https://math.stackexchange.com/questions/438336/if-three-cards-are-selected-at-random-without-replacement-what-is-the-probabili). You can also find help for the "at least one queen" problem [here](https://www.quora.com/Three-cards-are-pulled-from-a-deck-of-52-cards-What-is-the-probability-of-getting-at-least-one-club).


## Coding into meaningful Variables

We have to give meaning to the keystrokes. "1" or "2" have no meaning unless we know what the actual answer was.

## Group 1

```
1. Insert a new column between the keys and the n, this should be now your *D* column
1. Step on cell *D2* and insert the following formula: 
"=IF(AND(A2=1,C2=1),"Linda is a bankteller","Linda is a bankteller and is active on the feminist movement")"
1. Drag down to *D3*
1. Step on *D4* and insert the following formula: "=IF(AND(A4=1,C4=1),"Queen of Hearts","3 Queens")"
1. Drag down to *D5*
```
You will now have the actual answers to the questions for group 1

## Group 2

Group 2 received the reversed order. 

```
1. Use the formulas on the last step to adapt them to group 2 values
```
Now, let's make some plots!

```
1. Make stacked barplots to show the answers to each one of the questions. You should have 4 graphs (2 questions, 2 groups).
```
Choose colors that sound appropriate. Remember that color blind people have difficulties distinguishing some color combinations, more info [here](https://www.robotswillkillusall.org/static/flabpal-colorblind.png)


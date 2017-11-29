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

We have to give meaning to the keystrokes. "1" or "2" have no meaning unless we know what the actual answer was.

>>>> CONTINUE HERE RECODING

Trial 1 Group 1

=IF(AND(A2=1,C2=1),"Linda is a bankteller","Linda is a bankteller and is active on the feminist movement")

=IF(AND(A4=1,C4=1),"Queen of Hearts","3 Queens")


```
1. Do the math for the likelihood of getting the special Queen and 2 other cards. Assume No reposition of cards to the deck.
1. Do the math for the likelihood of getting the 3 special Queens. Assume No reposition of cards to the deck.
1. Make a bargraph that allows you to see how  
```
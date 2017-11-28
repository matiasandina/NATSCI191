# Background

We are going to study if people follow their preference on a blind test and if they can truly identify their beloved brand.

# Method

For this experiment, subjects were asked the following question:

> What do you prefer: Coke or Pepsi?

The question was asked online using a form. Subjects should answer before conducting the experiment in person. They had 3 possible answers: "Coke", "Pepsi" or "No Preference".  

Subjects came to perform a blind test where they were presented with two cups, one containing Coke and the other Pepsi. Coke position was altered such that Group 1 received Coke in the cup labeled "A"" and Group 2 received Coke in the cup labeled "B". Here's the text that was presented for the experiment:  

*This is a blind test experiment.*
*I have two cups, one of them contains Coke and the other contains Pepsi.* 
*Please drink from both.*
*Which one do you like the most?*
*Can you tell the difference?*
*Can you guess which one is coke?* 


# The Data

Information is available in the Spreadsheet Named "2017-NATSCI191-Coke-Preferences". There, you will find the following columns: **ID,	Group,	preference,	real.coke,	likes,	think.can.tell,	guess.coke**. Metadata about the columns can be found below:

* ID = Subjects ID across all experiments, a 3 number digit (except for 2 subjects that have 5 digit IDs).
* Group = Group to what the subjects were randomly assigned to, takes values 1 or 2.
* preference = taste preference as expressed in the online form,  "Coke", "Pepsi" or "No Preference".
* real.coke = the label of the cup in which coke was presented, "A" or "B".
* likes = the label of the cup the subject identifies as the more palatable, "A" or "B".
* think.can.tell = the answer to the second question, "Yes" or "No". 
* guess.coke = the label subjects guessed for the position of Coke, "A" or "B"


# Excersices 

First we need to do some treatment of the data. You will notice that

```
1. Go to "2017-NATSCI191-Coke-Preferences" spreadsheet.
1. Step on the *H2* cell and insert this formula "=IF(D8=E8, "Coke", "Pepsi")" 
```
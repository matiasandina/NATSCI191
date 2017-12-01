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

Information is available in the file named `2017-NATSCI191-Coke-Preferences.csv`. There, you will find the following columns: **ID,	Group,	preference,	real.coke,	likes,	think.can.tell,	guess.coke**. Metadata about the columns can be found below:

* ID = Subjects ID across all experiments, a 3 number digit (except for 2 subjects that have 5 digit IDs).
* Group = Group to what the subjects were randomly assigned to, takes values 1 or 2.
* preference = taste preference as expressed in the online form,  "Coke", "Pepsi" or "No Preference".
* real.coke = the label of the cup in which coke was presented, "A" or "B".
* likes = the label of the cup the subject identifies as the more palatable, "A" or "B".
* think.can.tell = the answer to the second question, "Yes" or "No". 
* guess.coke = the label subjects guessed for the position of Coke, "A" or "B"


# Excersices 

First we need to do some treatment of the data. You will notice that "A" or "B" are not indicative of "Coke" or "Pepsi" because positions were switched. We can use a little trick to check. If the `D` (real coke position) values are the same as the `E` (what they liked most), that means that the they like "Coke" better.

```
1. Go to "2017-NATSCI191-Coke-Preferences.csv".
1. Step on the *H2* cell and insert this formula "=IF(D2=E2, "Coke", "Pepsi")"
1. Drag down the formula so that it applies to all the rows in study
1. Step on *H1* and name this column "really.likes"
```
We now do something similar to see if subjects can or cannot tell for real.

```
1. Step on the *I2* cell and insert this formula "=IF(G2=D2, "Can really tell", "Cannot really tell")"
1. Drag down the formula so that it applies to all the rows in study.
1. Name that column "can.tell"
```

We also want to know who switched from what they declared to their blind test preference. To do that, we need some recoding of the variables and a little trick to add noise to the data.

```
1. Step on *J2* and insert the following formula "=IF(C8="No Preference", 0, IF(C8="Coke", 1, 2))"
1. Step on *K2* and insert the following formula "=IF(H8="Coke", 1, 2)"
1. Select both *J2 and H2* and drag them down so that the formula applies to all the rows of interest
1. Step on *L2* and insert the following formula "=J2+(RAND()/10)"
1. Step on *M2* and insert the following formula "=K8+(RAND()/10)"
1. Select both *L2* and *M2* and drag them down so that the formula applies to all of the rows of interest.
```

> If you are curious about why we add the noise, the idea is to separate the values, if all Coke = 1, we cannot see them on a graph. Thus, we add a little random noise (`+RAND()/10`) so that we get 1.01, 1.05, 1.09 and other similar numbers that are really close to 1 but not exactly (also see next section).

## Plots

Let's do some plots!

```
1. Make piecharts of the following columns: preference, really.likes, think.can.tell, and can.tell.
1. Make a line plot of the two columns *L2* and *M2*. 
```

Choose colors that sound appropriate. Remember that color blind people have difficulties distinguishing some color combinations, more info [here](https://www.robotswillkillusall.org/static/flabpal-colorblind.png)



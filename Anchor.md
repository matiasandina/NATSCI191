# Background

We tend to get stuck with the first piece of information we got, even if it is not completely relevant to the task at hand. In this task we are going to explore how different wording of the same question can affect our answer?

# Method

Subjects were separated into 2 groups and presented with slightly questions. 

## Mount Kilimanjaro

Both groups saw the same statement:

> The mount Kilimanjaro is the highest mountain in Africa. 

And were asked the following question(s)

* **Group 1**: Do you think it is taller than 1033 ft?
* **Group 2**: Do you think it is taller than 8033 ft?
* **Both Groups**: How tall do you think the Kilimanjaro is?

## Dinner for 2

Both groups were presented a statement:

> A friend invited you to "Restaurant Name", a downtown restaurant. How much money do you think a dinner for both of you will cost?

* **Group 1**: "Restaurant Name" = "Q 71"
* **Group 2**: "Restaurant Name" = "Q 17"

And were asked the following question(s):

> How much money do you think a dinner for both of you will cost?


# The Data

The information will be found on a file called `anchoring.csv`. The column names are: **"group, taller, how.tall, money"**.

* **group** = Group to what the subjects were randomly assigned to, takes values 1 or 2.
* **taller** = Whether the subjects think the mount is taller or not than the anchoring value, values "Yes" or "No".
* **how.tall** = the height in feet.
* **money** = The amount of money subjects think they are going to spend in a dinner in dollars. 

# Exercises

We are interested in analyzing by group.  Thus, we need to observe the data considering them separately.

```
1. Sort the data by group. 
1. By group, make 1 Boxplot for the `how.tall` column and make 1 boxplot for the `money` column. 
```
We are also interested in seeing the effect of the anchor. We can calculate an `error` value by subtracting the anchor for each group to the value subjects reported.

```
1. Create extra columns to hold the value of the anchors per grop.
1. Calculate the error in each group for both questions. 
1. Make Boxplots again but with these new error columns.
```

Choose colors that sound appropriate. Remember that color blind people have difficulties distinguishing some color combinations, more info [here](https://www.robotswillkillusall.org/static/flabpal-colorblind.png)

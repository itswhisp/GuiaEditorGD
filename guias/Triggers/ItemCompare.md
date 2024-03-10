## Item Compare
This Trigger is used to compare two Item IDs and spawn Group IDs depending on whether their condition is true or not. Item Compare Triggers are pretty complicated, so we suggest following along with your own example.

![](https://guia.editorgd.xyz/assets/img/figures/115.png)
*Figure 7.29: Item Compare Trigger.*<br>

- **ItemID1/ItemID2:** The Item IDs you want to compare with each other. Note that depending on what option you have selected in the "Edit Special" menu in the Item Trigger, you have to select the respective option from the menu to the right of "ItemID1" and "ItemID2". For example, if "ItemID1" is a normal Item ID, and "ItemID2" is a Timer, you would select the "Item" and "Timer" options respectively. Place the "0" object and click "Edit Special" to configure a unique Item ID.
- **Mod1/Mod2:** Modifiers for "ItemID1" and "ItemID2" respectively. How the modifier interacts with the values can be changed with the "•" buttons, which is explained below.
- **TrueID/FalseID:** The IDs that will be spawned if your condition is true or false respectively.
- **Tol+-:** The tolerance. For example, if you set 0.5 here and "ItemID1" is 1, while "ItemID2" is 0.5, this would count as true despite "ItemID1" and "ItemID2" not being equal.

![](https://guia.editorgd.xyz/assets/img/figures/116.png)
*Figure 7.30: Example of the Item Compare Trigger.*<br>

The three buttons to the right decide how the values are compared, and how the modifiers interact with them. The first box decides the operation for "ItemID1" and "Mod1", the second box decides the operation for "ItemID2" and "Mod2", and the third box decides how the two values are compared to each other.

For the first and second box, you can select the following options:

- "+" means that the corresponding modifier will be added to the Item ID value.
- "-" means that the corresponding modifier will be subtracted from the Item ID value.
- "•" means that the corresponding modifier will be multiplied with the Item ID value.
- "/" means that the Item ID value will be divided by the corresponding modifier.

For the third box, you can select the following options:

- "==" will return true if "ItemID1" is equal to "ItemID2".
- ">" will return true if "ItemID1" is larger than "ItemID2".
- ">=" will return true if "ItemID1" is larger than or equal to "ItemID2".
- "<" will return true if "ItemID1" is smaller than "ItemID2".
- "<=" will return true if "ItemID1" is smaller than or equal to "ItemID2"

The first "NA" decides how the left side of the equation is handled, so "ItemID1" and "Mod1". The second "NA" decides how the right side of the equation is handled, so "ItemID2" and "Mod2". Here are all the options you can set and how they behave

- **NA:** The default way Geometry Dash handles the numbers. Using this mode will drop all decimal points.
- **RND:** Rounds the number to the closest integer. If we take our example, 3/2 = 1.5 would be rounded to 2, which would mean our answer would be 4 instead of 3.
- **FLR:** Stands for floor function, which means it will always round down to the next lower integer. For example, 4/5 = 0.8 would be rounded down to 0.
- **CEI:** Stands for ceiling function, which means it will always round up to the next higher integer. For example 1/10 = 0.1 would be rounded up to 1.

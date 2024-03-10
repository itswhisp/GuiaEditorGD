## Item Edit
This Trigger is used to edit an Item ID using two different Item IDs. You can do many different operations with these two Item IDs. Note that Item Edit Triggers are pretty complicated, so we suggest following along with your own example.

![](https://guia.editorgd.xyz/assets/img/figures/111.png)
*Figure 7.25: Item Edit Trigger.*<br>

- **ItemID1/ItemID2:** The Item IDs you want to use to do operations. Note that depending on what option you have selected in the "Edit Special" menu in the Item Trigger, you have to select the respective option from the menu to the right of "ItemID1" and "ItemID2". For example, if "ItemID1" is a normal Item ID, and "ItemID2" is a Timer, you would select the "Item" and "Timer" options respectively. Place the "0" object and click "Edit Special" to configure a unique Item ID.
- **Target ItemID:** The Item ID you want to edit. Note that depending on what option you have selected in the "Edit Special" menu in the Item Trigger, you have to select the respective option from the menu to the right of "Target ItemID". Place the "0" object and click "Edit Special" to configure a unique Item ID.
- **Mod:** Modifies the value that "ItemID1" and "ItemID2" produce. Leaving this option at 1 will disable the third button, which is "•" in the picture below.

![](https://guia.editorgd.xyz/assets/img/figures/112.png)
*Figure 7.26: Buttons.*<br>

The three buttons in figure 7.26 correspond to how the numbers interact with each other. We will explain what each one does, and then show some examples for better understanding.

- The first button decides how the new values interact with the "Target ItemID". If you set it to "=", the "Target ItemID" will use the new value. If you set it to "+", the value will be added to the current value of the "Target ItemID". Likewise, if you set it to "-", the value will be subtracted from the current value. If you set it to "•" instead, the current value will be multiplied with the value, while setting it to "/", divides the current value.
- The second button decides how "ItemID1" and "ItemID2" interact with each other to calculate the value. If you set it to "+", "ItemID1" will be added to "ItemID2". If you set it to "-", "ItemID2" will be subtracted from "ItemID1". Similarly, if you set it to "•", "ItemID1" and "ItemID2" are multiplied, and with "/", "ItemID1" will be divided by "ItemID2".
- The third button decides how the modifier interacts with the value that "ItemID1" and "ItemID2" create. If you set it to "•", the value will be multiplied with the modifier value. If you set it to "/", the value will be divided by the modifier value.

To the right of these, there are two empty, optional buttons (figure 7.25), which can be set to "N" or "A" for "neg" and "abs" respectively. In order, these negate or find the absolute value of the number. Absolute value essentially drops a negative sign and only uses positive values.

![](https://guia.editorgd.xyz/assets/img/figures/113.png)
*Figure 7.27: Example of the Item Edit Trigger.*<br>

For our example, "ItemID1" has the value 8, "ItemID2" has the value 5, and "Target ItemID" has the value 2. All values and operations are color coded for convenience. As you can see, we selected "+" in the first box. This means that the value will be added to the current value, indicated by the "I3 +" at the bottom. In the second box, we selected "-", which means "ItemID2" will be subtracted from "ItemID1", as indicated by "(I1 - I2)". Lastly, we set a modifier. We chose "/" in the third box, which means that our value will be divided by our modifier.

Let us replace the Item IDs with the values we chose to see what the result should be. (Note that this is edited and cannot be achieved in normal Geometry Dash.)

![](https://guia.editorgd.xyz/assets/img/figures/114.png)
*Figure 7.28: Edited example of the Item Edit Trigger.*<br>

Doing the calculations, we get I3 = 2 + 3/2 = 2 + 1.5, which cannot be represented due to how Geometry Dash rounds by default. Because of this, the .5 is dropped and we are left with 2 + 1. Now our equation is I3 = 2 + 1 = 3, which means the new value of our "Target ItemID" is 3.

Dropping of .5 may not be ideal in all cases. Luckily, we can fix this with the "NA" buttons. The first "NA" button decides how the value you calculate is handled. To use our example, this button decides how decimals are handled for (8 - 5) / 2.000. The second "NA" decides how the new value is handled by the "Target ItemID", so I3 in our example. Here are all the options you can set and how they behave.

- **NA:** The default way Geometry Dash handles the numbers. Using this mode will drop all decimal points.
- **RND:** Rounds the number to the closest integer. If we take our example, 3/2 = 1.5 would be rounded to 2, which would mean our answer would be 4 instead of 3.
- **FLR:** Stands for floor function, which means it will always round down to the next lower integer. For example, 4/5 = 0.8 would be rounded down to 0.
- **CEI:** Stands for ceiling function, which means it will always round up to the next higher integer. For example 1/10 = 0.1 would be rounded up to 1.
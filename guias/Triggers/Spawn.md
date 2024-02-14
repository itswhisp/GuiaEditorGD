## Spawn
Spawn Triggers can activate other Triggers

- **Group ID:** The Triggers you want to spawn.
- **Delay:** The delay before you spawn the Trigger.
- **Preview Disabled:** Disables the Spawn Trigger when in "Preview Mode". The Trigger will still activate when you playtest in the editor.
- **Spawn Ordered:** All Triggers within this Group ID will be activated from left to right, with the distance between the Triggers indicating the delay between them.
- **Reset Remap:** Resets the remapping of Group IDs.

![](https://guia.jorge603.xyz/assets/img/figures/70.png)
*Figure 7.6: Example of "Spawn Ordered".*<br>

You can use the second page of the Trigger's interface to remap Spawn
Trigger setups. This is useful to save Group IDs.

![](https://guia.jorge603.xyz/assets/img/figures/71.png)
*Figure 7.7: The second page of the Trigger.*<br>

Due to this being complex, we will use an example. In figure 7.8, we are
moving a block left and right by using a Spawn Loop. Now we want to add
another block that also moves left and right. Normally we would need to copy
all the Triggers and change their values. With remapping, we can copy the
Spawn Trigger on the left, and remap the Group ID of the old setup to the
new block. This is seen in figure 7.9.

![](https://guia.jorge603.xyz/assets/img/figures/72.png)
*Figure 7.8: Using a Spawn Loop to move objects.*<br>

![](https://guia.jorge603.xyz/assets/img/figures/73.png)
*Figure 7.9: Remapping a Spawn Trigger setup.*<br>

Now Group ID 4 will behave the same as Group ID 1. You can spawn Group ID
4 at a later time to offset the two block movements. This particular
remapping saves 3 Group IDs.
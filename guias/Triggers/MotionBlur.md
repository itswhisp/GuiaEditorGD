## Motion Blur
Blurs objects based on the X-axis, Y-axis, or a Center Group ID.

- **TargetX/TargetY:** Amount of blur that will be applied to the X-axis and Y-axis respectively.
- **Ref Channel:** Uses a Color Channel to reference the fade color. By default the fade will go towards the Background Color. See table 7.3.
- **FadeTime:** Time for the effect to apply fully.
- **Fade:** The smaller the fade value, the more blocks will blur out. You can compare this setting to the "Fade" setting in the Lens Circle Trigger, where it is easier to visualize.
- **Follow Ease:** Used for the "TargetID" option, which follows the object's or player's movement to reference the blur. "Follow Ease" eases the movement, resulting in less or more blur upon movement.
- **Intensity:** Opacity of the blur.
- **DualDir:** Blurs in both directions instead of only one. By default, "TargetX" will only blur left and "TargetY" will only blur down.
- **EmptyOnly:** The blur will only be drawn to pixels that are empty. See table 7.4.
- **TargetID:** Uses a Group ID or the player's movement as the reference for the blur. If the Group ID or player does not move, there will be no blur. On quick movements, there will be a lot of blur. If a Group ID is used, it can only consist of one object
## Radial Blur
Blurs the screen radially, so drawing a circle around the center with a given radius.

- **Size:** Size of the blur. In other words, how much it is blurred per distance from the center.
- **FadeTime:** Time for the effect to apply fully.
- **Intensity:** Opacity of the blur.
- **Ref Channel:** Uses a Color Channel to reference the fade color. By default, the fade will go towards the Background Color.

*Table 7.3: "Ref Channel" behavior.*<br>

| No Ref Channel | Ref Channel |
| -------------------------------------------------------- | -------------------------------------------------------- |
| ![](https://guia.jorge603.xyz/assets/img/figures/136.png) | ![](https://guia.jorge603.xyz/assets/img/figures/137.png) |
| The red object has blur applied. As you can see, the blur color fades towards the Background Color, which looks weird on a yellow Background. | Here we set the yellow Color Channel as the "Ref Channel", which makes the blur fade towards yellow. |

- **Screen OffX/Screen OffY:** Offsets the blur center. Negative numbers offset it to the left or bottom respectively, while positive numbers offset it to the right or up respectively.
- **Fade:** The smaller the fade value, the more blocks will blur out. You can compare this setting to the "Fade" setting in the Lens Circle Trigger, where it is easier to visualize.
- **Easing:** Easing options change the way the circle starts and ends its movement.
- **Target:** Uses a Group ID as the center the blur from. The Group ID can only consist of one object.
- **EmptyOnly:** The blur will only be drawn to pixels that are empty

*Table 7.4: "EmptyOnly" behavior.*<br>

| Without EmptyOnly | With EmptyOnly |
| -------------------------------------------------------- | -------------------------------------------------------- |
| ![](https://guia.jorge603.xyz/assets/img/figures/136.png) | ![](https://guia.jorge603.xyz/assets/img/figures/137.png) |
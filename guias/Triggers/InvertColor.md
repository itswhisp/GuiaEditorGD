## Invert Color
Inverts the screen colors.

- **Target:** Percentage of how much color inversion will be applied. For example, with 0.5 the screen will be 50% inverted.
- **FadeTime:** Time for the effect to apply fully.
- **R/G/B:** Percentage of the red, green, and blue value respectively. For example, the color white has the RGB values 255, 255, 255. If you put the R slider to 0.5, it will multiply 255 with 0.5, which is 127.5. Now, the new color would be 127.5, 255, 255, which is a brighter blue color. Note that the color values are inverted due to the Trigger.
- **EditRGB:** Allows editing the RGB values with the sliders above.
- **TweenRGB:** If you are in the inverted color state with EditRGB values, and want to change to different RGB values the switch will be instant. With this option enabled, they will transition smoothly to the new RGB you set.
- **ClampRGB:** Limits the values to 1 so that they cannot go past that value.
- **Easing:** Easing options change the way the colors start and end their transitions.

| R/G/B" with 1, 1, 1 | "R/G/B" with 2, 1, 1 | "R/G/B" with 2, 1, 1 and "ClampRGB" |
| -------------------------------------------------------- | -------------------------------------------------------- | -------------------------------------------------------- |
| ![](https://guia.editorgd.xyz/assets/img/figures/140.png) | ![](https://guia.editorgd.xyz/assets/img/figures/141.png) | ![](https://guia.editorgd.xyz/assets/img/figures/141.png) |
| Normal transition to the inverted color. Same with "EditRGB" enabled or disabled. | The transition to red will be quicker, resulting in an overall red tint. Only with "EditRGB" enabled. | The same result as using 1, 1, 1. The transition is still quicker for the red color, however the result is not tinted. "ClampRGB" limits the values between 0 and 1. |
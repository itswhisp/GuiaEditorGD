## Static Camera
Uses a Target Group ID as the center of the screen and locks to that object.

- **Target Group ID:** The Group ID that should be seen as the camera center.
Can only consist of a single object.
- **X Only/Y Only:** The camera only takes the object's X or Y position as the
camera X or Y center respectively.
- **Follow:** Follows the movement of the object.
- **Easing:** Adds an easing duration when following an object.
- **Smooth Velocity:** Reacts to player velocity and tries to move the camera
smoothly to where you want. The path is calculated by using a Bézier
curve.
- **Modifier:** Shifts the Bézier curve for the "Smooth Velocity" option.
- **Exit Static:** Exits the static mode and returns to the default camera
location.
- **Exit Instant:** The camera instantly snaps back to the default camera
location when using "Exit Static".
- **Duration:** The duration for the camera to reach the object.

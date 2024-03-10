## Gradient
Creates a gradient between two colors. You can change the way the gradient looks by rotating the Gradient Trigger.

- **Vertex Mode:** Draws the gradient between 3 or 4 points which get connected. By default, the gradient can only be a square with defined top, bottom, left, and right boundaries. Using "Vertex Mode" allows the gradient to have more interesting shapes.
- **U/D/L/R:** Used to draw the gradient if "Vertex Mode" is disabled. The variables refer to the Group IDs of target objects set as up, down, left, and right respectively. These variables work as boundaries for the gradient, so you do not have to set all.
- **BL/BR/TL/TR:** Used for the "Vertex Mode" boundaries. The variables refer to the Group IDs of target objects set as bottom left, bottom right, top left, and top right respectively. Note that putting 3 of those variables is enough to draw the gradient in "Vertex Mode".
- **Blending:** How the gradient behaves with colors beneath it.
- **ID:** Can be used to reference gradients. For example if you want to disable a gradient later on.
- **Disable All:** Disables all gradients. You can disable only a single gradient by using its "ID" and choosing the "Disable" option.
- **Preview Opacity:** The opacity the gradient has in the editor preview.
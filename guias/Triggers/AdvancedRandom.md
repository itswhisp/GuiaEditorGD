## Advanced Random
Randomly triggers one of up to 10 Group IDs.

- **Group ID:** The Group ID you want to have a chance of being triggered.
- **Chance:** How likely it is for this Group ID to be triggered. The way the odds are calculated is by multiplying the "Chance" value by 100, and then dividing it by the sum of all "Chance" values so far and the one you are about to add.

For example, if you add Group ID 1 with a "Chance" of 20, and then add Group ID 2 with a "Chance" of 50, the odds will be calculated as follows. "Chance" of Group ID 2, 50, is multiplied by 100, resulting in 5000. Afterwards, it is divided by both the "Chance" of Group ID 1 and 2, so 5000 / 70 ≈ 71%. This is the odds Group ID 2 will have, while Group ID 1 will have odds of (20 * 100) / 70 ≈ 29%. If you were to add Group ID 3 with "Chance" at 60, the odds would change to (20 * 100) / 130 ≈ 15% for Group ID 1, (50 * 100) / 130 ≈ 38% for Group ID 2, and (60 * 100) / 130 ≈ 46% for Group ID 3.
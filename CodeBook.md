# CodeBook

## Original Data
The raw data were collected from 30 subjects who performed six activities (walking, walking upstairs, walking downstairs, sitting, standing, and laying) while wearing a Samsung Galaxy S smartphone. The phone’s accelerometer and gyroscope captured 3-axial linear acceleration and angular velocity.

## Variables
- **subject** — ID number of the test subject (1–30)  
- **activityName** — Descriptive activity name (e.g., WALKING, SITTING, etc.)  
- **Other columns** — Mean and standard deviation features selected from the original dataset, including signals from the accelerometer and gyroscope.

Examples:
- `TimeBodyAccelerometerMeanX`
- `TimeBodyAccelerometerStdY`
- `FrequencyBodyGyroscopeMeanZ`

## Transformations Performed
1. Merged the training and test datasets into one.
2. Extracted only the measurements on the mean and standard deviation.
3. Replaced activity IDs with descriptive names.
4. Cleaned and made variable names more descriptive (e.g., replaced "t" with "Time", "f" with "Frequency").
5. Created a second tidy dataset containing the **average of each variable for each activity and each subject**.

## Output
The final tidy dataset (`tidy_data.txt`) contains **180 rows** and **68 columns**.

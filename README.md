# Vehicle Data Cleaning and Transformation in R

A course exercise using base R to inspect a vehicle dataset and create transformed combined fuel-economy variables.

## Workflow
1. Read `vehicles.csv` and inspect its structure and summary statistics.
2. Check missing values and duplicated rows.
3. Exclude records with missing or nonpositive `comb08`, and remove exact duplicate rows.
4. Create natural-log and square-root transformations of `comb08`.
5. Export `vehicles_clean_transformed.csv`.

## Input snapshot
The supplied CSV contains 34,631 rows and 74 columns. The submitted transformed file contains 34,631 rows and 76 columns. No row reduction is implied. The mean `comb08` value is approximately 19.79. The dataset's original URL, version date, and redistribution terms were not included in the supplied project materials, so the input CSV is not bundled in this public package.

## Run
Requires R; no additional packages are needed. Obtain the original course `vehicles.csv`, put it beside the script, open a terminal in that directory, and run:
```bash
Rscript vehicle_project.R
```
The script uses the current working directory. `validation_summary.txt` records the local execution check against the supplied course snapshot. The raw and transformed CSVs are omitted from the public package pending source attribution.

## Interpretation
This exercise demonstrates data preparation, not a predictive model or a measured business outcome. Transformations do not establish that skewness has improved; distribution checks would be needed to assess that. Fuel-economy units and comparability across vehicle types should be verified using source documentation before substantive comparisons.

## Author
Shun-Min Tang

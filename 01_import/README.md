# Import Data

Common data formats you might encounter are

- `.csv`
- `.tsv`
- `.json`
- `.xls`
- `.xlsx`

The following sections show R and Python methods of reading in these kinds of
data.

**Note**: [Mockaroo](https://mockaroo.com/) is one of many sites to generate
mock data in various formats.

## R

### tidyverse Solution

See [`readr`](http://readr.tidyverse.org/) for more information.

```r
# Installs readr package
install.packages("tidyverse")

# Load readr package
library(readr)

# Reading in CSV file
mtcars <- read_csv(readr_example("mtcars.csv"))

# Other read_ functions
#   - read_csv(): comma separated (CSV) files
#   - read_tsv(): tab separated files
#   - read_delim(): general delimited files
#   - ...

# Specify columns types for reproducible read in of data
mtcars <- read_csv(readr_example("mtcars.csv"), col_types =
  cols(
    mpg = col_double(),
    cyl = col_integer(),
    disp = col_double(),
    hp = col_integer(),
    drat = col_double(),
    vs = col_integer(),
    wt = col_double(),
    qsec = col_double(),
    am = col_integer(),
    gear = col_integer(),
    carb = col_integer()
  )
)
```

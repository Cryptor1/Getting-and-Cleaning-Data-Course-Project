[*run\_analysis.R*](run_analysis.R) file contains the&nbsp;same&nbsp;name
function which performs an&nbsp;analysis of measurement&nbsp;data obtained from
the&nbsp;Samsung&nbsp;Galaxy&nbsp;S smartphone's accelerometers.
A&nbsp;full&nbsp;description is available at
the&nbsp;[site](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)
where the&nbsp;data was obtained.
<a name="link_at_beginning"></a>The data set exactly used by the function can be
obtained from this
[link](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
([license note](#license)).

<p>*run\_analysis* function takes single argument&nbsp;&mdash; *download\_data*,
which actually has default value. By&nbsp;default there&nbsp;is no&nbsp;need to
download and unzip necessary data to perform its analysis. If
no&nbsp;*UCI HAR Dataset* folder is present in the&nbsp;working&nbsp;directory,
*run\_analysis*&nbsp;function attempts to download and unzip required
data&nbsp;set. However this option may be disabled by passing *FALSE* argument
to the&nbsp;function.

<p>*run\_analysis* function results in a&nbsp;*tbl\_df* data&nbsp;frame which
contains calculated **average**&nbsp;values of **mean** and
**standard&nbsp;deviation** sensor&nbsp;measurements for each activity type of
each subject. Mentioned data&nbsp;frame result is also contained in
this&nbsp;repository as [*tidy\_data.csv*](tidy_data.csv) file.

##What the Function Does##

Here are the&nbsp;main actions performed by *run\_analysis*&nbsp;function:

1. Load data&nbsp;set to process.

1. Check some data&nbsp;set key&nbsp;characteristics for correctness (see
[*Data Set Requirements*](#requirements)&nbsp;section).

1. Extract from *UCI HAR Dataset/test/X\_test.txt* and
*UCI HAR Dataset/test/X\_train.txt* only variables that contain mean or
standard&nbsp;deviation.

1. Combine:
    * *UCI HAR Dataset/test/X\_test.txt* with *UCI HAR Dataset/train/X\_train.txt*;
    
    * *UCI HAR Dataset/test/subject\_test.txt* with
    *UCI HAR Dataset/train/subject\_train.txt*;
    
    * *UCI HAR Dataset/test/y\_test.txt* with *UCI HAR Dataset/train/y\_train.txt*.
    
1. Prepare necessary variable&nbsp;names from *UCI HAR Dataset/features.txt* in
several steps:

    * Replace all inappropriate signs (like dashes or parentheses) with
    underscore. Example: *tBodyAcc-mean()-X* becomes *tBodyAcc\_mean\_\_\_X*;
    
    * Replace all sections where there are two or more underscores are going
    one&nbsp;by&nbsp;one. Example: *tBodyAcc\_mean\_\_\_X* becomes
    *tBodyAcc\_mean\_X*;
    
    * Remove leading and trailing underscores. Example: *tBodyAccMag\_mean\_*
    becomes *tBodyAccMag\_mean*;
    
    * Add leading *V* in case of variable&nbsp;name begins with a&nbsp;digit.
    Example: *2some\_variable* becomes *V2some\_variable*. (Actually there is
    no&nbsp;such variables which begin with a&nbsp;digit, but it's&nbsp;better
    to be ready for this than&nbsp;not)
    
1. Set appropriate names for activity&nbsp;types according to values in
*UCI HAR Dataset/activity\_labels.txt*&nbsp;file and check this action resulted
without producing *NA*&nbsp;values.

1. Make activity&nbsp;types lowercase and replace underscores with spaces to
make them more readable.

1. Set variable names for data.

1. Bind all data together and perform its tidying.

##<a name="requirements"></a>Data Set Requirements##

* It is expected
[*dplyr*](https://cran.r-project.org/web/packages/dplyr/index.html)&nbsp;package
is available for using. Otherwise an&nbsp;error is produced.

* If there is a&nbsp;folder *UCI HAR Dataset* already in the&nbsp;working
directory, following files in this directory **should&nbsp;not** be moved
(otherwise an&nbsp;error is produced):
    * *test/X\_test.txt*;
    * *test/y\_test.txt*;
    * *test/subject\_test.txt*;
    * *train/X\_train.txt*;
    * *train/y\_train.txt*;
    * *train/subject\_train.txt*;
    * *activity\_labels.txt*;
    * *features.txt*.

Data files from link mentioned at the&nbsp;[beginning](#link_at_beginning) are
correct, hence next requirements are rather for self&nbsp;defense.

* **Rows** quantity in *UCI HAR Dataset/features.txt* must match with **columns**
quantity in *UCI HAR Dataset/test/X\_test.txt* and
*UCI HAR Dataset/test/y\_test.txt*. Otherwise and&nbsp;error is produced.

* Function fails if there is no equality in rows quantities of next
file&nbsp;groups:

    * *UCI HAR Dataset/test/subject\_test.txt* ==
    *UCI HAR Dataset/test/y\_test.txt* == *UCI HAR Dataset/test/X\_test.txt*;
    
    * *UCI HAR Dataset/train/subject\_train.txt* ==
    *UCI HAR Dataset/train/y\_train.txt* == *UCI HAR Dataset/train/X\_train.txt*.
    
* Variables in *UCI HAR Dataset/activity\_labels.txt*&nbsp;file must be unique.
File's first variable must also represent variables from the&nbsp;first columns
of *UCI HAR Dataset/test/subject\_test.txt* and
*UCI HAR Dataset/train/subject\_train.txt* files. Otherwise an&nbsp;error is
produced.

* Mean and standard&nbsp;deviation related variable&nbsp;names obtained after
parsing *UCI HAR Dataset/features.txt* values must be unique. Otherwise
an&nbsp;error is produced.

*Note*. The&nbsp;function **does&nbsp;not**&nbsp;check for *NA*&nbsp;values in
*UCI HAR Dataset/test/X\_test.txt* and *UCI HAR Dataset/test/train/X\_train.txt*
data&nbsp;files when calculating average for mean and standard&nbsp;deviation
variables. Also there is no&nbsp;check whether data&nbsp;type is
*numeric*/*integer* in the&nbsp;mentioned files. Hence it is possible to get
*NAs* in case of other than mentioned types or in case of data contains *NAs*.

##Tests##

There are some [tests](tests/test_run_analysis.R) added to check whether
*run\_analysis* function works properly if data&nbsp;set is correct, and
explicitly fails if data&nbsp;set contents are wrong. To run this test
[*testthat*](https://cran.r-project.org/web/packages/testthat/index.html)&nbsp;package
need to be installed. Run *test\_dir("path/to/tests")* where *path/to/tests*
is the&nbsp;path to *test\_run\_analysis.R* file (**do&nbsp;not&nbsp;include
this filename itself!**).

---

##<a name="license"></a>Data Set License Note##

Use of this dataset in publications must be acknowledged by referencing
the&nbsp;following publication&nbsp;[1] 

<p>[1] Davide&nbsp;Anguita, Alessandro&nbsp;Ghio, Luca&nbsp;Oneto,
Xavier&nbsp;Parra and Jorge&nbsp;L.&nbsp;Reyes&#8209;Ortiz.
Human&nbsp;Activity&nbsp;Recognition on Smartphones using a Multiclass
Hardware&#8209;Friendly Support Vector Machine. International Workshop of
Ambient Assisted Living (IWAAL&nbsp;2012). Vitoria&#8209;Gasteiz, Spain.
Dec&nbsp;2012

<p>This dataset is distributed AS&#8209;IS and no&nbsp;responsibility implied or
explicit can be addressed to the&nbsp;authors or their institutions for its use
or misuse. Any commercial use is prohibited.

<p>Jorge L.&nbsp;Reyes&#8209;Ortiz, Alessandro&nbsp;Ghio, Luca&nbsp;Oneto,
Davide&nbsp;Anguita. November&nbsp;2012.

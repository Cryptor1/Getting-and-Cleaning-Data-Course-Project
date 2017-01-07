library(testthat)

source("../run_analysis.R")


result_data_set <- run_analysis() %>% group_by(subject)
activities_per_subject <-
	summarise(.data = result_data_set, unique(activity_type) %>% length())

test_that("Result data set is correct",
	{
		expect_false(anyNA(result_data_set))
		## Ensure there are 30 persons observed
		expect_identical(unique(result_data_set$subject) %>% length(), 30L)
		## Ensure each person performed 6 types of unique activities
		expect_true(activities_per_subject[[2]][activities_per_subject[[2]] == 6] %>%
			all())
	}
)


##### Break 'UCI HAR Dataset/features.txt' --------------------------------#####
features_file_name <- "UCI HAR Dataset/features.txt"

broken_features <- read.table(features_file_name) %>% tbl_df()
broken_features <-
	rbind(
		broken_features,
		data.frame(V1 = 1000, V2 = "dummy_feature") %>% tbl_df()
	)

## Character sting added to renamed files to identify them
renamed_file_identifier <- "renamed"

file.rename(
	from = features_file_name,
	to = paste(features_file_name, renamed_file_identifier)
)

write.table(
	broken_features,
	file = features_file_name,
	row.names = FALSE,
	col.names = FALSE
)

test_that(
	paste("Fails when ROWS quantity in 'UCI HAR Dataset/features.txt'",
		"doesn't match with COLUMNS quantity in 'UCI HAR Dataset/test/X_test.txt'",
		"and 'UCI HAR Dataset/test/y_test.txt'"),
	expect_error(
		run_analysis(),
		paste("Cannot perform data processing. Obtained data is not correct.",
			"Please, refer to 'README.md' to see the requirements for",
			"the appropriate data contents")
	)
)

file.rename(
	from = paste(features_file_name, renamed_file_identifier),
	to = features_file_name
)
##### ---------------------------------------------------------------------#####


#####-1# Break 'UCI HAR Dataset/activity_labels.txt' ----------------------#####
activity_labels_file_name <- "UCI HAR Dataset/activity_labels.txt"

broken_activity_labels <- read.table(activity_labels_file_name) %>% tbl_df()
broken_activity_labels <-
	select(
		.data = broken_activity_labels,
		names(broken_activity_labels) %>% seq_along() %>% rev()
	)

file.rename(
	from = activity_labels_file_name,
	to = paste(activity_labels_file_name, renamed_file_identifier)
)

write.table(
	broken_activity_labels,
	file = activity_labels_file_name,
	row.names = FALSE,
	col.names = FALSE
)

test_that("Fails when 'UCI HAR Dataset/activity_labels.txt' variables are swapped",
	expect_error(run_analysis())
)


broken_activity_labels <-
	read.table(paste(activity_labels_file_name, renamed_file_identifier)) %>%
	tbl_df()
## Duplicate 1st and last values of the first variable
broken_activity_labels[[1]][1] <-
	broken_activity_labels[[1]][length(broken_activity_labels[[1]])]

write.table(
	broken_activity_labels,
	file = activity_labels_file_name,
	row.names = FALSE,
	col.names = FALSE
)

test_that("Fails when there are duplicates in 'UCI HAR Dataset/activity_labels.txt'",
	expect_error(
		run_analysis(),
		paste("Cannot perform data processing. Obtained data is not correct.",
			"Please, refer to 'README.md' to see the requirements for",
			"the appropriate data contents")
	)
)

file.rename(
	from = paste(activity_labels_file_name, renamed_file_identifier),
	to = activity_labels_file_name
)
#####-1# ------------------------------------------------------------------#####


#####-2# Add missing activity type to 'UCI HAR Dataset/test/y_test.txt' ---#####
y_test_file_name <- "UCI HAR Dataset/test/y_test.txt"

broken_y_test <- read.table(y_test_file_name) %>% tbl_df()
broken_y_test <- rbind(broken_y_test, data.frame(V1 = 140000))

file.rename(
	from = y_test_file_name,
	to = paste(y_test_file_name, renamed_file_identifier)
)

write.table(
	broken_y_test,
	file = y_test_file_name,
	row.names = FALSE,
	col.names = FALSE
)

test_that(
	paste("Fails when nonexistent activity type index present in",
		"'UCI HAR Dataset/test/y_test.txt'"),
	expect_error(
		run_analysis(),
		paste("There is a discrepancy between documented activity types in",
			"'activity_labels.txt' and declared activity indexes in",
			"'y_test.txt' and/or 'y_train.txt'. 'y_test.txt' and/or 'y_train.txt'",
			"contain activity types that are not documented in 'activity_labels.txt'")
	)
)

file.rename(
	from = paste(y_test_file_name, renamed_file_identifier),
	to = y_test_file_name
)
#####-2# ------------------------------------------------------------------#####

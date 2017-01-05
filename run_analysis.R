#' Accelerometers Data Analysis
#' 
#' Performs an analysis of measurement data obtained from the accelerometers
#' from the Samsung Galaxy S smartphone. A full description is available at
#' the site where the data was obtained:
#' http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
#' The data set exactly used by the function can be obtained from this link:
#' https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
#' 
#' License note about processed data.
#' =============================================================================
#' Use of this dataset in publications must be acknowledged by referencing
#' the following publication [1]
#' 
#' [1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and
#' Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using
#' a Multiclass Hardware-Friendly Support Vector Machine. International Workshop
#' of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
#' 
#' This dataset is distributed AS-IS and no responsibility implied or explicit
#' can be addressed to the authors or their institutions for its use or misuse.
#' Any commercial use is prohibited.
#' 
#' Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
#' =============================================================================
#'  
#' You may read additional information about the function's requirements in
#' the 'README.md' file.
#' 
#' @param download_data Logical.
#'     - 'TRUE': if no 'UCI HAR Dataset' folder is found in
#'       the working directory, this folder will be downloaded automatically.
#'       There is a message produced in case of automatic data downloading.
#'     - 'FALSE': if no 'UCI HAR Dataset' folder is found in
#'       the working directory, the function produces an error.
#' 
#' @return 'tbl_df' object containing data set with the mean and
#' standard deviation average of each variable for each activity type of each
#' subject.
run_analysis <- function(download_data = TRUE)
{
	## Boolean value indicating whether 'dplyr' package is available or not
	dplyr_package_is_available <- NULL
	
	suppressMessages(dplyr_package_is_available <- require(dplyr))
	
	## If there is no 'dplyr' package available
	if (!dplyr_package_is_available)
	{
		stop(
			cat(
				"Cannot load 'dplyr' library. Possibly package",
				" is not installed. Execute",
				"\n\n\tinstall.packages(\"dplyr\")",
				"\n\nto install the package.",
				sep = ""
			)
		)
	}
	
	## If there is no folder with a data set to process in the working directory
	if (!file.exists("UCI HAR Dataset"))
	{
		if (download_data)
		{
			message(
				cat(
					"There is no 'UCI HAR Dataset' folder with a data to process",
					" present in the working directory.",
					"\nDownloading required data to the temporary file",
					" 'temp_zip.zip' which will be automatically removed after",
					" extracting necessary files...",
					sep = ""
				)
			)

			## If failed to download necessary zip file
			if (download.file(
				url = "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",
				destfile = "temp_zip.zip",
				method = "curl",
				quiet = TRUE)
			)
			{
				stop("Failed to download data set to process")
			}
						
			unzip(
				zipfile = "temp_zip.zip",
				files = c(
					"UCI HAR Dataset/README.txt",
					"UCI HAR Dataset/features_info.txt",
					"UCI HAR Dataset/test/X_test.txt",
					"UCI HAR Dataset/train/X_train.txt",
					"UCI HAR Dataset/test/subject_test.txt",
					"UCI HAR Dataset/train/subject_train.txt",
					"UCI HAR Dataset/activity_labels.txt",
					"UCI HAR Dataset/test/y_test.txt",
					"UCI HAR Dataset/train/y_train.txt",
					"UCI HAR Dataset/features.txt"
				)
			)
			
			file.remove("temp_zip.zip")
		}
		else
		{
			stop(cat("There is no 'UCI HAR Dataset' folder with a data to",
				"process present in the working directory")
			)
		}
	}
	
	test_data_set <- read.table("UCI HAR Dataset/test/X_test.txt") %>% tbl_df()
	train_data_set <- read.table("UCI HAR Dataset/train/X_train.txt") %>% tbl_df()
	
	subject_test <-
		read.table("UCI HAR Dataset/test/subject_test.txt") %>% tbl_df()
	subject_train <-
		read.table("UCI HAR Dataset/train/subject_train.txt") %>% tbl_df()
	
	activity_types <-
		read.table("UCI HAR Dataset/activity_labels.txt") %>% tbl_df()
	
	activity_type_test <-
		read.table("UCI HAR Dataset/test/y_test.txt") %>% tbl_df()
	activity_type_train <-
		read.table("UCI HAR Dataset/train/y_train.txt") %>% tbl_df()
	
	features <- read.table("UCI HAR Dataset/features.txt") %>% tbl_df()
	
	
	##### Checking loaded data for correctness ----------------------------#####
	features_rows_quantity <- nrow(features)
	activity_types_rows_quantity <- nrow(activity_types)
	
	## If 'test_data_set' OR 'train_data_set' VARIABLES quantities doesn't match
	## with ROWS quantity in 'features' OR ...
	if (ncol(test_data_set) != features_rows_quantity ||
		ncol(train_data_set) != features_rows_quantity ||
		## ... records in 'activity_labels.txt' file aren't unique
		length(unique(activity_types[[1]])) != activity_types_rows_quantity ||
		length(unique(activity_types[[2]])) != activity_types_rows_quantity
	)
	{
		stop(
			cat(
				"Cannot perform data processing. Obtained data is not correct.",
				"Please, refer to 'README.md' to see the requirements for",
				"the appropriate data contents"
			)
		)
	}
	##### -----------------------------------------------------------------#####
	
	
	needed_features_indexes <-
		grep(pattern = "mean|std", x = features[[2]], ignore.case = TRUE)
	
	## Retain only variables that measure mean or standard deviation
	test_data_set <- select(.data = test_data_set, needed_features_indexes)
	train_data_set <- select(.data = train_data_set, needed_features_indexes)
	
	## Combine test and train data
	combined_data_set <- rbind(test_data_set, train_data_set)
	combined_subject <- rbind(subject_test, subject_train)
	combined_activity_type <- rbind(activity_type_test, activity_type_train)
	
	
	#####-1# Prepare variable names for 'combined_data_set' ---------------#####
	#' Checks if passed 'string' argument contains digit as a first character.
	#' If so, concatenates "V" as a first character to the 'string'.
	#' 
	#' @param string Vector of length 1.
	#' 
	#' @return Passed 'string' argument with or without leading "V" character
	#' added as aforesaid.
	check_for_digit_funct <- function(string)
	{
		## If passed argument contains digit as a first character
		if (grepl(pattern = "^[0-9]", string))
		{
			return(paste("V", string, sep = ""))
		}
		
		string
	}
	
	data_set_variable_names <- features[[2]][needed_features_indexes] %>%
		## Replace all inappropriate signs (like dashes or parentheses) with
		## underscore. Example: "tBodyAcc-mean()-X" becomes "tBodyAcc_mean___X"
		gsub(pattern = "[^a-z0-9_]", replacement = "_", x = ., ignore.case = TRUE) %>%
		## Replace all sections where there are two or more underscores are going
		## one by one. Example: "tBodyAcc_mean___X" becomes "tBodyAcc_mean_X"
		gsub(pattern = "__+", replacement = "_", x = .) %>%
		## Remove leading and trailing underscores. Example: "tBodyAccMag_mean_"
		## becomes "tBodyAccMag_mean"
		gsub(pattern = "^_|_$", replacement = "", x = .) %>%
		## Add leading "V" in case of variable name begins with a digit.
		## Example: "2some_variable" becomes "V2some_variable"
		sapply(., FUN = check_for_digit_funct, USE.NAMES = FALSE)
	#####-1# --------------------------------------------------------------#####
	
	
	## Set appropriate names for activity types according to values in
	## 'activity_labels.txt' file
	suppressMessages(
		combined_activity_type <-
			left_join(x = combined_activity_type, y = activity_types) %>%
			select(2)
	)
	
	## Ensure left join was performed without producing NA values
	if (anyNA(combined_activity_type))
	{
		stop(
			cat(
				"There is a discrepancy between documented activity types in",
				"'activity_labels.txt' and declared activity indexes in",
				"'y_test.txt' and/or 'y_train.txt'.",
				"'y_test.txt' and/or 'y_train.txt' contain activity types that",
				"are not documented in 'activity_labels.txt'"
			)
		)
	}
	
	## Make activity types lowercase and replace underscores with spaces to make
	## them more readable
	combined_activity_type[[1]] <-
		gsub(pattern = "_", replacement = " ", x = combined_activity_type[[1]]) %>%
		tolower()
	
	## Set variable names for data
	names(combined_data_set) <- data_set_variable_names
	names(combined_subject) <- "subject"
	names(combined_activity_type) <- "activity_type"
	
	## Bind all data together ...
	cbind(combined_subject, combined_activity_type, combined_data_set) %>%
		## .. and perform its tidying
		group_by(subject, activity_type) %>%
		arrange(subject, activity_type) %>%
		summarise_all(.funs = mean) %>%
		ungroup()
}

# Module 7 Assignment: S3 vs S4

# Create S3 example
book <- list(title="A Wonderland", Year=2024, Author="C.D. Jack")
class(book) <- "story_book"

#To check whether it is S3
is.object(book)
#[1]TRUE

# Create S4 example
setClass("story_book", slots = list(title="character", Year="numeric", Author="character"))
novel_s4 <- new("story_book", title="A Wonderland", Year=2024, Author="C.D. Jack")
 
#To check whether it is S4
isS4(novel_s4)
#[1] TRUE

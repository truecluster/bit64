\name{optimizer64.data}
\alias{optimizer64.data}
\docType{data}
\title{
 Results of performance measurement on a Core i7 Lenovo T410 8 GB RAM under Windows 7 64bit
}
\description{
  These are the results of calling \code{\link{optimizer64}}
}
\usage{data(optimizer64.data)}
\format{
  The format is:
List of 16
 $ : num [1:9, 1:3] 0 0 1.63 0.00114 2.44 ...
  ..- attr(*, "dimnames")=List of 2
  .. ..$ : chr [1:9] "match" "match.64" "hashpos" "hashrev" ...
  .. ..$ : chr [1:3] "prep" "both" "use"
 $ : num [1:10, 1:3] 0 0 0 1.62 0.00114 ...
  ..- attr(*, "dimnames")=List of 2
  .. ..$ : chr [1:10] "\%in\%" "match.64" "\%in\%.64" "hashfin" ...
  .. ..$ : chr [1:3] "prep" "both" "use"
 $ : num [1:10, 1:3] 0 0 0.00105 0.00313 0.00313 ...
  ..- attr(*, "dimnames")=List of 2
  .. ..$ : chr [1:10] "duplicated" "duplicated.64" "hashdup" "sortorderdup1" ...
  .. ..$ : chr [1:3] "prep" "both" "use"
 $ : num [1:15, 1:3] 0 0 0 0.00104 0.00104 ...
  ..- attr(*, "dimnames")=List of 2
  .. ..$ : chr [1:15] "unique" "unique.64" "hashmapuni" "hashuni" ...
  .. ..$ : chr [1:3] "prep" "both" "use"
 $ : num [1:14, 1:3] 0 0 0 0.000992 0.000992 ...
  ..- attr(*, "dimnames")=List of 2
  .. ..$ : chr [1:14] "unique" "unipos.64" "hashmapupo" "hashupo" ...
  .. ..$ : chr [1:3] "prep" "both" "use"
 $ : num [1:13, 1:3] 0 0 0 0 0.000419 ...
  ..- attr(*, "dimnames")=List of 2
  .. ..$ : chr [1:13] "tabulate" "table" "table.64" "hashmaptab" ...
  .. ..$ : chr [1:3] "prep" "both" "use"
 $ : num [1:7, 1:3] 0 0 0 0.00236 0.00714 ...
  ..- attr(*, "dimnames")=List of 2
  .. ..$ : chr [1:7] "rank" "rank.keep" "rank.64" "sortorderrnk" ...
  .. ..$ : chr [1:3] "prep" "both" "use"
 $ : num [1:6, 1:3] 0 0 0.00189 0.00714 0 ...
  ..- attr(*, "dimnames")=List of 2
  .. ..$ : chr [1:6] "quantile" "quantile.64" "sortqtl" "orderqtl" ...
  .. ..$ : chr [1:3] "prep" "both" "use"
 $ : num [1:9, 1:3] 0 0 0.00105 1.17 0 ...
  ..- attr(*, "dimnames")=List of 2
  .. ..$ : chr [1:9] "match" "match.64" "hashpos" "hashrev" ...
  .. ..$ : chr [1:3] "prep" "both" "use"
 $ : num [1:10, 1:3] 0 0 0 0.00104 1.18 ...
  ..- attr(*, "dimnames")=List of 2
  .. ..$ : chr [1:10] "\%in\%" "match.64" "\%in\%.64" "hashfin" ...
  .. ..$ : chr [1:3] "prep" "both" "use"
 $ : num [1:10, 1:3] 0 0 1.64 2.48 2.48 ...
  ..- attr(*, "dimnames")=List of 2
  .. ..$ : chr [1:10] "duplicated" "duplicated.64" "hashdup" "sortorderdup1" ...
  .. ..$ : chr [1:3] "prep" "both" "use"
 $ : num [1:15, 1:3] 0 0 0 1.64 1.64 ...
  ..- attr(*, "dimnames")=List of 2
  .. ..$ : chr [1:15] "unique" "unique.64" "hashmapuni" "hashuni" ...
  .. ..$ : chr [1:3] "prep" "both" "use"
 $ : num [1:14, 1:3] 0 0 0 1.62 1.62 ...
  ..- attr(*, "dimnames")=List of 2
  .. ..$ : chr [1:14] "unique" "unipos.64" "hashmapupo" "hashupo" ...
  .. ..$ : chr [1:3] "prep" "both" "use"
 $ : num [1:13, 1:3] 0 0 0 0 0.32 ...
  ..- attr(*, "dimnames")=List of 2
  .. ..$ : chr [1:13] "tabulate" "table" "table.64" "hashmaptab" ...
  .. ..$ : chr [1:3] "prep" "both" "use"
 $ : num [1:7, 1:3] 0 0 0 2.96 10.69 ...
  ..- attr(*, "dimnames")=List of 2
  .. ..$ : chr [1:7] "rank" "rank.keep" "rank.64" "sortorderrnk" ...
  .. ..$ : chr [1:3] "prep" "both" "use"
 $ : num [1:6, 1:3] 0 0 1.62 10.61 0 ...
  ..- attr(*, "dimnames")=List of 2
  .. ..$ : chr [1:6] "quantile" "quantile.64" "sortqtl" "orderqtl" ...
  .. ..$ : chr [1:3] "prep" "both" "use"
 - attr(*, "dim")= int [1:2] 8 2
 - attr(*, "dimnames")=List of 2
  ..$ : chr [1:8] "match" "\%in\%" "duplicated" "unique" ...
  ..$ : chr [1:2] "65536" "33554432"
}
\examples{
data(optimizer64.data)
print(optimizer64.data)
oldpar <- par(no.readonly = TRUE)
par(mfrow=c(2,1))
par(cex=0.7)
for (i in 1:nrow(optimizer64.data)){
 for (j in 1:2){
   tim <- optimizer64.data[[i,j]]
  barplot(t(tim))
  if (rownames(optimizer64.data)[i]=="match")
   title(paste("match", colnames(optimizer64.data)[j], "in", colnames(optimizer64.data)[3-j]))
  else if (rownames(optimizer64.data)[i]=="\%in\%")
   title(paste(colnames(optimizer64.data)[j], "\%in\%", colnames(optimizer64.data)[3-j]))
  else
   title(paste(rownames(optimizer64.data)[i], colnames(optimizer64.data)[j]))
 }
}
par(mfrow=c(1,1))
}
\keyword{datasets}

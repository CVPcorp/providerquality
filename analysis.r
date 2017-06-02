library(readr)
library(dplyr)

#The physician compare file was 600MB (GitHub only wants <=100MB)
#Plus, most providers don't report scores, so let's filter it down to just physicians with scores

#This was only needed to generate the src.csv file and is included for reference

#setwd("c:/users/calzemelman/providerquality")

#dfp = read_csv("phys.csv")
#dfs = read_csv("pqrs.csv")
#df = inner_join(dfp,dfs,by=c("NPI"="npi"))
#write_csv(df,path="C:/Users/calzemelman/providerquality/data/src.csv",col_names=TRUE)
#rm(dfp,dfs)
#end one-time setup

df = read_csv("src.csv")


# cols_to_factor = c("sex","chestpaintype","fastingbsugar", "restecg", "exerangina","heartdisease")
# df[cols_to_factor] = lapply(df[cols_to_factor],factor)
# df$thal= as.numeric(df$thal)
# df=na.omit(df)

# a = createDataPartition(df$heartdisease,p=0.5,list=FALSE)
# #this means create a new dataframe called train that includes all the rows in df that were in the vector a, which was randomized
# train = df[a,]
# #this means take all the ones that WEREN'T in a, and call those test
# test = df[-a,]
# tree = train(heartdisease ~ . ,data=train,method="rf")


# rf = randomForest(heartdisease ~ . ,data=train,  keep.forest=TRUE, proximity=TRUE, importance=TRUE,test=test)

# varImpPlot(rf,type = 2,main = "Variable Importance",col = 'black')
# plot(rf)
# confusionMatrix(test$heartdisease,predict(rf,newdata=test))

# MDSplot(rf, train$heartdisease,k=2)
# legend("topright", legend=c('Clear','Heart Disease'), fill=brewer.pal(3, "Set1")) 
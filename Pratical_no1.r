 #Q.1 Create Variables to store Your Name,Your Age ,Whether your are a student (logical)
name="Vinayak"
age=20
student=TRUE
print(name)
print(age)
print(student)


#Q.2 Create a Vector containing in numbers 1 to 10.


vector <-c(1:10)
print(vector)

#Q.3Create a sequence from 5 to 50 with a step size of 5.
 my_seq=seq(5,50,5)
print(my_seq)

#Q.4 Store the names of 5 fruits in a character vector and display the second and fourth fruit.
fruits<-c("apple","banana","mango","kiwi","grapes")
print(fruits[2])
print(fruits[4])

#Q.5 Create a numeric vector of 10 random numbers between 1 and 100, then find:
#1. Maximum value
#2. Minimum value
#3. Mean

set.seed(123)
num_vector<-seq(1,100,10)
max_value<-max(num_vector)
min_value<-min(num_vector)
mean_value<-mean(num_vector)
print(max_value)
print(min_value)
print(mean_value)

#Q.6 Create a data frame with columns: Name, Age, Marks. Enter at least 5 records
student_id<-data.frame(
  Name= c("vinayak","pranav","kunal","sudhanshu","shubham"),
  Age=c(20,21,20,22,23),
  Marks=c(80,85,90,95,99)
)
print(student_id)

#Q.7Write code to sort the data frame by Marks in descending order.
desc_ord<-student_id[order(-student_id$Marks),]
print(desc_ord)



# VARIABLES AND DATATYPE 

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

# *************OPERATORS IN R*****************

#Q1.Perform the  following operations


10+5
10-5
10*5
10/5
10%%3
10%/%3


# Q2.Compare if 15 is greater than 10, and if 7 is equal to 7.
15>10
7==7

#Q3.3. Create two vectors:
#1. a <- c(2, 4, 6, 8)
# 2. b <- c(1, 3, 5, 7)
# Perform:
#   1. Addition
# 2. Subtraction
# 3. Element-wise multiplication

a<-c(2,3,6,8)
b<-c(1,3,5,7)
print(a+b)
print(a-b)
print(a*b)

# 4. Use logical operators to check:
#   1. Which elements of a are greater than 5?
#   2. Which elements of b are less than or equal to 4?

a > 5
b<4


#Q5.Use %in% to check if the number 5 exists in vector a.


 5 %in% a

#Q6.Given x <- c(TRUE, FALSE, TRUE, FALSE) and y <- c(TRUE, TRUE, FALSE, FALSE), apply:
 # 1. &
 # 2. |
 # 3. !

 x<-c(TRUE,FALSE,TRUE,FALSE)
 y<-c(TRUE,TRUE,FALSE,FALSE)
 
 x&y
x|y
!x
  

#  ******************** LOOPS IN R**********************

# Q1.Write a for loop to print numbers from 1 to 10.
for(i in 1:10){
  print(i)
}

# Q2.Write a while loop to sum numbers from 1 to 100

i<-1
sum<-0
while(i<=100){
  sum<-sum+i
  i<-i+1

}
print(sum)

#Q3.Write a loop to print only even numbers between 1 and 50.

for(i in 1:50){
  if(i%%2==0){
    print(i)
  }
}

#Q4.Write a loop to print the multiplication table of 7.


for(i in 1:10){
  
  i<-i*7
  print(i)
}

#Q5.Create a loop to calculate the factorial of a given number n.
n<-4
fac_result<-1
for(i in 1:n){
  fac_result<-fac_result*i
  
}
print(paste("factorial of",n,"is",fac_result))


#Q6. Write a nested loop to print a star pattern:
  ```
   *
   **
   ***
   ****
  ```
rows <- 4
for (i in 1:rows){
  
  line <- ""
  for (j in 1:i) {
    line <- paste0(line, "*")
 }
   print(line)
}


# ***************CONDITIONALS IN R******************

#Q1. Write an if statement to check if a number is positive or negative. 
  
num<-5
if(num > 0){
  print("number is postive")
}else{
  print("number is negative")
}
  
  
#Q2.Write an if-else statement to check if a given number is even or odd.

number<-7
if(number %% 2 ==0){
  print("the number is even")
}else{
  print("the number is odd")
}
#Q3.Write a program to check if a given year is a leap year.
year<-2025
if(year %% 400==0){
  print("the year is leap year")
}else{
  print("the year  is not leap year")
}

#Q4. Take a numeric input for marks and print:
# 1. “Pass” if marks >= 40
# 2. “Fail” otherwise

marks<-as.numeric(readline(prompt="enter the marks"))

if(marks>=40){
  print("pass")
}else{
  print("fail")
}

#Q5.5. Using nested if-else, assign grades:
# 1. Marks >= 90 → A
# 2. 75–89 → B
# 3. 60–74 → C
# 4. <60 → Fail

if(marks>=90){
  print("grade is a")
}else if (marks >=75){
  print("grade is b")
}else if ("marks >=50"){
  print("grade is c")
  
}else{
  print("fail")
}


#*******************Functions in R********************
#Q1.Write a function add_numbers(a, b) to return the sum of two numbers.
p<-10
q<-20
add<-function(p,q){
  return(p+q)
}
print(add(p,q))
#Q2.Write a function square(n) to return the square of a number.
d<-5
square<-function(d){
  return(d^2)
}
print(square(d))


f

#Q3.Write a function to calculate the factorial of a number using recursion

fact<-function(n){
  if (n==0 || n==1){
    return(1)
  }else{
    return(n*fact(n-1))
  }
}
fact(5)

#Q4.Write a function to check if a number is prime.
prime <-function(pn){
  if(pn<=0){
    return("its not prime number")
  }
  for(i in 2:floor(sqrt(pn))){
    if(pn%%i==0){
      return("its not  a prime number")
    }
  }
  return("its is prime number")
}
prime(9)
prime(5)

#Q5. Write a function that takes a vector and returns:
# 1. Mean
# 2. Median
# 3. Standard Deviation
vectors_stats <- function(vec){ 
  mean_value<-mean(vec)
  median_value<-median(vec)
  standard_value<-sd(vec)
  return(list(
    Mean = mean_value,
    Median=median_value,
    Standard_deviation=standard_value
  ))
  }
vector<-c(34,13,45,5,6,7)
vectors_stats(vector)

#Q6.Write a function that accepts a data frame and a column name, and returns the top 5 highest values in that column.
top5_values <- function(df, col_name) {
  
  
  column_data <- df[[col_name]]
  
  
  sorted_data <- sort(column_data, decreasing = TRUE)
  

  top5 <- head(sorted_data, 5)
  
  return(top5)
}


students <- data.frame(
  Name = c("Vinayak", "Pranav", "Kunal", "Sudhanshu", "Rohit", "Amit"),
  Marks = c(85, 92, 78, 88, 95, 81)
)

top5_values(students, "Marks")

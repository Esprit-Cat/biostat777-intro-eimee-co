
Use wget or curl to download the students.csv file locally from here.
# Add your solution here

Wave@Esprits-MacBook-Pro MyWebsite % curl -L -o students.csv https://raw.githubusercontent.com/stephaniehicks/jhustatprogramming2025/main/projects/01-project/students.csv
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100   257  100   257    0     0   4146      0 --:--:-- --:--:-- --:--:--  4213

Display the contents of the students.csv file using the cat command.
# Add your solution here
Wave@Esprits-MacBook-Pro MyWebsite % cat students.csv
ID,Name,Age,Gender,Grade,Subject
1,Alice,20,F,88,Math
2,Bob,22,M,76,History
3,Charlie,23,M,90,Math
4,Diana,21,F,85,Science
5,Eve,20,F,92,Math
6,Frank,22,M,72,History
7,Grace,23,F,78,Science
8,Heidi,21,F,88,Math
9,Ivan,20,M,85,Science
10,Judy,22,F,79,History%              

Display only the first 5 lines of the file using head to show the first few lines.
# Add your solution here (includes the header)
Wave@Esprits-MacBook-Pro MyWebsite % head -n 5 students.csv
ID,Name,Age,Gender,Grade,Subject
1,Alice,20,F,88,Math
2,Bob,22,M,76,History
3,Charlie,23,M,90,Math
4,Diana,21,F,85,Science

Display only the last 3 lines of the file using tail to show the last few lines.
# Add your solution here
Wave@Esprits-MacBook-Pro MyWebsite % tail -n 3 students.csv
8,Heidi,21,F,88,Math
9,Ivan,20,M,85,Science
10,Judy,22,F,79,History%  

Count the number of lines in the file using the wc command to count the lines.
# Add your solution here (includes the header)
Wave@Esprits-MacBook-Pro MyWebsite % wc students.csv
      10      11     257 students.csv


Find all students who are taking “Math” as a subject using grep to filter lines with the subject “Math”.
# Add your solution here
Wave@Esprits-MacBook-Pro MyWebsite % grep "Math" students.csv
1,Alice,20,F,88,Math
3,Charlie,23,M,90,Math
5,Eve,20,F,92,Math
8,Heidi,21,F,88,Math

Find all female students using grep or awk to filter based on gender.
# Add your solution here
Wave@Esprits-MacBook-Pro MyWebsite % awk -F',' '$4=="F"' students.csv

1,Alice,20,F,88,Math
4,Diana,21,F,85,Science
5,Eve,20,F,92,Math
7,Grace,23,F,78,Science
8,Heidi,21,F,88,Math
10,Judy,22,F,79,History

Sort the file by the students’ ages in ascending order. Use sort to order by the “Age” column.
# Add your solution here
ID,Name,Age,Gender,Grade,Subject
1,Alice,20,F,88,Math
5,Eve,20,F,92,Math
9,Ivan,20,M,85,Science
4,Diana,21,F,85,Science
8,Heidi,21,F,88,Math
10,Judy,22,F,79,History
2,Bob,22,M,76,History
6,Frank,22,M,72,History
3,Charlie,23,M,90,Math
7,Grace,23,F,78,Science

Find the unique subjects listed in the file. Use cut, sort, and uniq to extract unique subjects.
# Add your solution here
Wave@Esprits-MacBook-Pro MyWebsite % cut -d',' -f6 students.csv | sort | uniq
History
Math
Science
Subject

Calculate the average grade of the students. Use awk to sum the grades and divide by the number of students.
# Add your solution here
Wave@Esprits-MacBook-Pro MyWebsite % awk -F',' 'NR>1 {sum = sum + $5; count = count + 1} END {print "Average grade:", sum/count}' students.csv

Average grade: 83.3

    #sum +=$5  --> sum = sum + $5
    #count ++  --> count = count + 1

Replace all occurrences of “Math” with “Mathematics” in the file. Use sed to perform the replacement.
# Add your solution here
Wave@Esprits-MacBook-Pro MyWebsite % sed 's/Math/Mathematics/g' students.csv
ID,Name,Age,Gender,Grade,Subject
1,Alice,20,F,88,Mathematics
2,Bob,22,M,76,History
3,Charlie,23,M,90,Mathematics
4,Diana,21,F,85,Science
5,Eve,20,F,92,Mathematics
6,Frank,22,M,72,History
7,Grace,23,F,78,Science
8,Heidi,21,F,88,Mathematics
9,Ivan,20,M,85,Science
10,Judy,22,F,79,History%    

Put all the commands into a shell script (.sh) file and run the command below to show the output from all the commands together.
# Add your solution here 
Wave@Esprits-MacBook-Pro MyWebsite % touch students_analysis.sh
Wave@Esprits-MacBook-Pro MyWebsite % chmod +x students_analysis.sh  


cd new_folder
ls -lsa

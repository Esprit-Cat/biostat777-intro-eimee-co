1. Use [`wget`](https://www.gnu.org/software/wget) or [`curl`](https://curl.se/docs/tutorial.html) to download the `students.csv` file locally from [here](https://github.com/stephaniehicks/jhustatprogramming2025/blob/main/projects/01-project/students.csv).

``` {bash}
# Add your solution here
curl -L -o students.csv https://raw.githubusercontent.com/stephaniehicks/jhustatprogramming2025/main/projects/01-project/students.csv

```

2. Display the contents of the `students.csv` file using the `cat` command.

```{bash}
# Add your solution here
cat students.csv
```

3. Display only the first 5 lines of the file using `head` to show the first few lines. 

```{bash}
# Add your solution here
head -n 5 students.csv
```

4. Display only the last 3 lines of the file using `tail` to show the last few lines.

```{bash}
# Add your solution here
tail -n 3 students.csv
```

5. Count the number of lines in the file using the `wc` command to count the lines.

```{bash}
# Add your solution here
wc students.csv
```

6. Find all students who are taking "Math" as a subject using `grep` to filter lines with the subject "Math".

```{bash}
# Add your solution here
grep "Math" students.csv
```

7. Find all female students using `grep` or `awk` to filter based on gender.
```{bash}
# Add your solution here
awk -F',' '$4=="F"' students.csv
```

8. Sort the file by the students' ages in ascending order. Use `sort` to order by the "Age" column.

```{bash}
# Add your solution here
sort -t',' -k3,3n students.csv
```

1. Find the unique subjects listed in the file. Use `cut`, `sort`, and `uniq` to extract unique subjects.

```{bash}
# Add your solution here
cut -d',' -f6 students.csv | sort | uniq
```

10. Calculate the average grade of the students. Use `awk` to sum the grades and divide by the number of students.

```{bash}
# Add your solution here
awk -F',' 'NR>1 {sum = sum + $5; count = count + 1} END {print "Average grade:", sum/count}' students.csv
```

11. Replace all occurrences of "Math" with "Mathematics" in the file. Use `sed` to perform the replacement.


```{bash}
# Add your solution here
sed 's/Math/Mathematics/g' students.csv
```

12. Put all the commands into a shell script (`.sh`) file and run the command below to show the output from all the commands together. 

```{bash}
# Add your solution here 
touch students_analysis.sh
echo '#!/bin/bash
curl -L -o students.csv https://raw.githubusercontent.com/stephaniehicks/jhustatprogramming2025/main/projects/01-project/students.csv
cat students.csv
head -n 5 students.csv
tail -n 3 students.csv
wc -l students.csv
grep "Math" students.csv
awk -F"," '"'"'$4=="F"'"'"' students.csv
sort -t"," -k3,3n students.csv
cut -d"," -f6 students.csv | sort | uniq
awk -F"," '"'"'NR>1 {sum += $5; count += 1} END {print sum/count}'"'"' students.csv
sed "s/Math/Mathematics/g" students.csv' > students_analysis.sh
chmod +x students_analysis.sh
./students_analysis.sh
```

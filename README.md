# badgerbadger
Badge generator for events (such as conferences)

badgerbadger is a simple script that generates conference badge
from a template. The script takes 3 arguments: first name, last
name, institute.

How to execute the script:
bash badgerbadger.sh "firstname" "lastname" "institute"

Inkscape is used via command line in the final step to convert
badges from svg to pdf format.

A template is included, but you can use your own with the following requirement:
- your template is a svg file
- you name the file "original_badge.svg" (if you name it differently, you
just have to change the script accordingly, it's easy)
- you put the following placeholders: "name1" which will be replaced by the
attendee's first names, "name2" with last names, "institute" with their actual institutes.

--

if you have many badges to produce, automatron will help you.
You need one text file with three lines for each badge to produce:
line 1: first name
line 2: last name
line 3: institute

Then, you can execute automatron (bash automatron.sh) which will look
for all the "*.dat" files in the directory by defaults and generate
badges using badgerbadger for each of the names.

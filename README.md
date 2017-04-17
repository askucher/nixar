Website address is 'http://askucher.github.io/nixarweb/#/'

# New shell commands
Joyable equivalents for existent linux commands

![Nixar](http://content.screencast.com/users/a.stegno/folders/Jing/media/cf29f8c0-b343-4692-9e05-1ff44f37f48d/00000255.png)

npm install -g nixar

### Commands

#### after
Prints everything after [mask]. Has option 'after last [mask]'
#### before
Prints everything before mask
#### cols
Get specific columns. Example: `cols 1-3 5 6 9-20`
#### concat
Joins lines into one line
#### content
Prints content, content lines, content created date, content modified date, content size
#### count
Calculates lines count
#### drop
Drops lines
#### exclude
Excludes line specified by mask
#### filter
Filter lines
#### fs
Finds file(s) by glob-like mask (*.* or **/*.* or */ or all)
#### length
Calculates characters count
#### log
Logs output to file and continues printing
#### lower
Converts characters to lowercase
#### map
Transforms line
#### mark
Highlights lines' parts according to the provided mask
#### max
Calculates maximum number from list of numbers
#### min
Calculates minimum number from list of numbers
#### nixar
Shows all commands. Run `nixar killall` in order to kill all running nixar's commands
#### order
Sorts lines
#### remove
Removes substring in line
#### replace
Replaces substring in line
#### reverse
Reverses the order of output
#### rows
Gets specific rows
#### show
Prints file, file lines, file created date, file modified date
#### split
Splits line into lines
#### substr
Returns the part of string specified by start and length parameters
#### sum
Calc sum of numbers in list
#### table
Create columns from line based on separator
#### take
Select lines
#### trim
Remove spaces from start and end of line. But if you provide the substring it will remove it from start and end of line
#### turn
Rotate the table. Convert rows to cols and cols to rows. This command can replace concat and split commands
#### unique
Get unique records
#### upper
Convert characters to uppercase

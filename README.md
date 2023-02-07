# common-three
written in Ruby, this CLI tool searches given .txt file contents, locating the most-commonly used three-word phrases throughout. It returns a list of 100, from most to least common.

### **please note: tests and gems were added after initial submission was made.**

if you prefer to see *__only__* the code as it was submitted at the time of deadline, following your initial repo clone, please run:
```
git reset --hard c5237939126d24356967908ac764fac6c4df9d00
```
I did find a bug during testing: the Regex option "i" was not ignoring casing, as I understood it was. I made a change to manually downcase the string before splitting it.

I'm aware of a bug that will return a 2 or 1 word phrase when it reaches the end of the file/string. I didn't prioritize fixing it, as it doesn't affect the top results.
### Instructions
To use this tool, Ruby will need to be installed to your environment.
Clone this repo and CD into the project directory.
You may select your txt file and run the program by entering:
```
ruby app.rb texts/<filename>
```
Rspec testing can be run, and testing coverage percentage can be seen by running:
```
rspec ./spec/common-three_spec.rb
```
### Project Status
At this time, the project is __under testing__.
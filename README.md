# common-three
written in Ruby, this CLI tool searches given .txt file contents, locating the most-commonly used three word phrases throughout. It returns a list of 100, from most-to-least common
### Project Status
At this time, the project is __*half-baked*__.
### Instructions
To use this tool, Ruby will need to be installed to your environment.
Alternately, you can run this tool within a Docker container by running
```
docker build -t common-three .
```
followed by
```
docker run common-three
```
You may select your txt file and run the program by running
```
ruby common-three.rb texts/<filename>
```
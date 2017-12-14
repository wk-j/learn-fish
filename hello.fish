echo hello world

mkdir My\ Files
cd My\ Files

cd -

ls My\ Files
ls "My Files"

echo hello world | wc

## Variable

echo My home directy is $HOME
echo "My current directory is $PWD"
echo 'My current directory is $PWD'
set name 'Mister Noodle'
echo $name

## Exist status

echo $status

## Exports (Shell varaiables)

set -x MyVariable SomeValue
env | grep MyVariable
env

## Erase variable
set -e MyVariable

## List
echo $PATH
count $PATH

echo $PATH[1]
echo $PATH[-1]

echo $PATH[1..2]
echo $PATH[-1..2]

for val in $PATH
    echo "entry $val"
end

set -l a 1 2 3
set -l 1 a b c
echo $a$1
echo $a" banana"
echo "$a banana"

## Command substitutions 
echo In (pwd), running (uname)

set os (uname)
echo $os

touch "testing_"(date +%s)".txt"
ls *.txt

## Combineers (And, Or, Not)

echo abc; and echo efg
echo abc; or echo  efg

## Conditionals (If, Else, Switch)

if grep fish /etc/shells
    echo Found fish
else if grep bash /etc/shells
    echo Found bash
else
    echo Get nothing
end

switch (uname)
case Linux
    echo Hi Tux!
case Darwin
    echo Hi Hexley!
case FreeBSD NetBSD DragonFly
    echo Hi Beastie!
case '*'
    echo Hi, stranger!
end

## Functions
function say_hello
    echo Hello $argv
end

say_hello
say_hello everybody!

functions

functions ls

for file in *.txt
    echo $file
end

for x in (seq 5)
    echo $x
end

## Prompt

function fish_prompt
    echo "New Prompt % "
end

function fish_prompt
    set_color purple
    date "+%m/%d/%y"
    set_color FF0
    echo (pwd) '>'
    set_color normal
end

## Startup (Where's .bashrc?)
cat ~/.config/fish/config.fish

## Autoloading Functions

## Unversal Variables
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
## Quotes

## Eacape Characters

## Input / Output

## Piping

cat README.md | head

## Background Jobs

## Functions

function ll
    ls -l $argv
end

ll .
ll (pwd)

function ls
    command ls --color=auto $argv
end

ls (pwd)

## Completion

## Command Substitution

echo (basename image.jpg .jpg).png

## Barce Expansion

echo input.{c,h,txt}

## Variable Expandsion

echo $HOME

set WORD cat
echo The plural of $WORD is "$WORD"s

echo The plural of $WORD is {$WORD}s

set WORD 1 2 3

echo The plural of $WORD is {$WORD}s

set foo a b c
set a 10
set b 20
set c 30
for i in (seq (count $$foo))
    echo $$foo[$i]
end

count $foo

## Cartesian Products

echo {good,bad}" apples"

set -l a x y z
set -l b 1 2 3
echo $a$b
echo {x,y,z}$b
echo {$b}word

## Index Range Expansion

echo (seq 10)
echo (seq 10)[1..5]

echo (seq 10)[2..5 1..3]
echo (seq 10)[-1..1]

## Shell Variable And Function Names

## Variable Scope

begin
    set -l pirate "There be ..."
end

echo $pirate

begin
    set pirate "There be ..."
end

echo $pirate

## More On Universal Variables


## Arrays

echo $PATH[3]

## Special Variables

echo $fish_greeting
echo $fish_escape_delay_ms
echo $BROWSER
echo $CPATH
echo $LANG
echo $LC_ALL
echo $fish_user_paths

## The Status Variable

## Variables For Changing Highlighting Colors

echo $fish_color_normal
echo $fish_color_command
echo $fish_color_quote

## Buildin Command

## Shared Bindings
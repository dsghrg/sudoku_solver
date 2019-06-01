This is a sudoku solver written in swi-prolog.

# Tests

## Nr 1: the hardest sudoku in the world

https://www.telegraph.co.uk/news/science/science-news/9359579/Worlds-hardest-sudoku-can-you-crack-it.html

```
[
    [8,_,_,_,_,_,_,_,_]
    [_,_,3,6,_,_,_,_,_]
    [_,7,_,_,9,_,2,_,_]
    [_,5,_,_,_,7,_,_,_]
    [_,_,_,_,4,5,7,_,_]
    [_,_,_,1,_,_,_,3,_]
    [_,_,1,_,_,_,_,6,8]
    [_,_,8,5,_,_,_,1,_]
    [_,9,_,_,_,_,4,_,_]
]
```


Run the program like this:
```
swipl -s sudoku.pl
```

then paste the following statement into the console (swipl) to test this program:
```
solve([[8,_,_,_,_,_,_,_,_], [_,_,3,6,_,_,_,_,_], [_,7,_,_,9,_,2,_,_], [_,5,_,_,_,7,_,_,_], [_,_,_,_,4,5,7,_,_], [_,_,_,1,_,_,_,3,_], [_,_,1,_,_,_,_,6,8], [_,_,8,5,_,_,_,1,_], [_,9,_,_,_,_,4,_,_]]).
```

or just call:
```
test
```

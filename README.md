Attempt at fixing the for loop behavior of CoffeeScript according to my 
[proposal](https://github.com/michaelficarra/CoffeeScriptRedux/issues/94):

For ranges the iteration always goes from left to right and down or up
depending on the step provided (up by default). There is no need for reverse iteration, because we can simply
swap the range limits.

    for i in [a..b] by -2 # for (i = a; i >= b; i -= 2)

For list-likes the direction is determined by the step

    for i in xs by -2     # for (i = xs.length - 1; i >= 0; i -= 2)


This should also address [satyr](https://github.com/satyr)'s 
[comment](https://github.com/jashkenas/coffee-script/issues/2541) about referencial transparency:

    # old                                                  # new
    $ coffee -e 'console.log i for i in [3..1]'            $ coffee -e 'console.log i for i in [3..1]'
    3
    2
    1

    $ coffee -e 'console.log i for i in [3..1] by 1'       $ coffee -e 'console.log i for i in [3..1] by 1'

    $ coffee -e 'console.log i for i in ([3..1]) by 1'     $ coffee -e 'console.log i for i in ([3..1]) by 1'
    3                                                      3
    2                                                      2
    1                                                      1

    $ coffee -e 'console.log i for i in [3..1] by (1)'     $ coffee -e 'console.log i for i in [3..1] by (1)'
    3
    4
    5
    6
    ...

Iterating over ranges is consistent, the loop doesn't run because 3 > 1 
(compare with original behaviour: runs, doesn't, infinite loop).

And you can even keep the old behavior!

    for i in ([a..b])
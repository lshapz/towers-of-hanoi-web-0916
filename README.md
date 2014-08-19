---
  tags: recursion
  languages: ruby
  resources: 4
---

# Towers of Hanoi

## LETS GET READY TO RECURSE!!!!!!

You have 4 discs which vary in size from small to large.

There are 3 pegs, A, B, C, respectively.

The discs are all currently on peg A, with the largest disc on the bottom, and the smallest disc on the top.

```
|      - 1 -     |                 |                 |
|     -- 2 --    |                 |                 |
|    --- 3 ---   |                 |                 |
|   ---- 4 ----  |                 |                 |
_________A________________B_________________C_________
```

Get the discs from peg A to peg C.

**Rules:**
- Only one disk may be moved at a time.
- Each move consists of taking the upper disk from one of the pegs and sliding it onto another peg, on top of the other disks that may already be present on that peg.
- No disk may be placed on top of a smaller disk (can't put disc 4 on top of disc 1).

One method for setting this up might look like:

```ruby
a = [1,2,3,4]
b = [] # empty Array
c = [] # empty Array
```

Then, as you move items(discs) between Arrays(pegs), you can't ever allow
a larger number occurs before a smaller one in any Array, like:

```
c = [2,1] # WRONG!
```

Write a method that will call itself recursively until the discs are stacked on the C peg with the largest (4) on the bottom and the smallest (1) on top. So, write that method so that in the end the numbers are in the same order but in Array c.

Remember that there is more than one way to solve this problem. Don't try and bulldoze your way through it. Write comments and psuedo code. Write it out on paper. Work your way through the problem logically. Watch the video below if you need help.

[Here's a little extra](/labs/tower-of-hanoi/extra-help.html) help if you need an idea of how to get started.

### Resources:

[Video Explanation](http://blossoms.mit.edu/videos/files/english/towers_hanoi_experiential_recursive_thinking_english_flash)

![hanoi](http://upload.wikimedia.org/wikipedia/commons/6/60/Tower_of_Hanoi_4.gif)

[http://en.wikipedia.org/wiki/Tower_of_Hanoi](http://en.wikipedia.org/wiki/Tower_of_Hanoi)

[http://anabecker.tumblr.com/post/43500989356/ways-we-tried-to-solve-the-hanoi-tower-problem](http://anabecker.tumblr.com/post/43500989356/ways-we-tried-to-solve-the-hanoi-tower-problem)


This is just an example of how you might get started with this problem.

```ruby
# tower_of_hanoi.rb

a = [1,2,3,4]
b = []
c = []
 
# Move the disks from one peg to another following the rules of Hanoi.
#
# number_of_disks - the total number of disks
# from - the starting peg
# to - the ending (goal) peg
# via - the remaining peg (b in this case)
#
def move_disk(number_of_disks,from,to,via)
  # Do your magic here
  # your method should return to
  to
end
 
# here we go!
puts move_disk(4, a, c, b)
```

## Resources
* [MIT](http://blossoms.mit.edu/videos) - [Towers of Hanoi Recursion video](http://blossoms.mit.edu/videos/files/english/towers_hanoi_experiential_recursive_thinking_english_flash)
* [Wikipedia](https://www.wikipedia.org/) - [Towers of Hanoi](http://en.wikipedia.org/wiki/Tower_of_Hanoi)
* [Ana's Blog](http://anabecker.tumblr.com/) - [Ways We Tried to Solve the Hanoi Tower Problem](http://anabecker.tumblr.com/post/43500989356/ways-we-tried-to-solve-the-hanoi-tower-problem)
* [Chris Lee's Blog](http://clee681.github.io/blog/) - [Recursion Towers of Hanoi](http://clee681.github.io/blog/2013/10/14/recursion-towers-of-hanoi/)

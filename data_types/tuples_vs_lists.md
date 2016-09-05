1. This is a pretty good article on List vs Tuple in Elixir:
http://hostiledeveloper.com/…/20/elixir-tuples-vs-lists.html
https://elixirschool.com/lessons/basics/collections/
2. And if youre not familiar with (Linked) List https://www.youtube.com/watch?v=pBrz9HmjFOs
3. And since Tuple is closest to Vector and if you are like me curious about why we can't simply access a particular value this way: `{1,2,3}[2]` like most other programming languages implementation of vectors/arrays, read this link
https://groups.google.com/…/elixir…/CkBwWH_-J2k/M29WQHRTNKYJ
(spoiler: elixir preaches pattern matching or destructuring, if you are trying to access the value to be assigned to variable)
jump to `destructuring` to understand more: https://en.wikipedia.org/wiki/Assignment_(computer_science)

Update: clarification! Tuples are immutable unlike vectors. Since data types in Elixir are immutable, vectors/arrays don't exist

In summary
- It's O(1) (constant), faster, to access data inside a Tuple
- It's O(n) (linear), can get inefficient if List is long or `index` location is `farther down` the list, to access data inside a List or calculate the length of the List
- It's fast to prepend data to List
- Though quite similar on the surface, Elixir programmers use Tuple and List in very different situations. http://culttt.com/2016/03/28/using-tuples-elixir/

### Part 1

Implementations of the various linear search algorithms described in Chapter 2 of Thomas H. Cormen's excellent 'Algorithms Unlocked'. Note that these are experiments written to be as language agnostic as actual implementations can be, and as such sacrifice some Ruby best practices in exchange for ease of portability to other languages.

Most linear search algorithms that I have seen most closely resemble the "better linear search" method, but it is interesting to note that, at least based on these implementations, the "sentinel search" is reliably, and often significantly faster. It is still O(n), but the fact that it only needs to perform one check per iteration seems to make a noticeable difference for relatively small datasets like the "names" text file.

The recursive version is, not surprisingly, the slowest of the bunch.

### Part 2

Implemented the iterative and recursive binary search algorithms discussed in Chapter 3. As expected, the binary search implementations vastly outperform the linear ones from yesterday when searching ordered lists. More surprising is the fact that the recursive version performs just as well as, and often even slightly better than, the iterative version.

I also tested the linear search methods on the ordered data and found, interestingly enough, that the recursive linear method's performance relative to that of the other linear functions is significantly improved, bringing it to about the level of the "better", standard linear search. Both are still outperformed by both the linear sentinel search, as well as, of course, the binary implementations.

Implementations of the various linear search algorithms described in Chapter 2 of Thomas H. Cormen's excellent 'Algorithms Unlocked'. Note that these are experiments written to be as language agnostic as actual implementations can be, and as such sacrifice some Ruby best practices in exchange for ease of portability to other languages.

Most linear search algorithms that I have seen most closely resemble the "better linear search" method, but it is interesting to note that, at least based on these implementations, the "sentinel search" is reliably, and often significantly faster. It is still O(n), but the fact that it only needs to perform one check per iteration seems to make a noticeable difference for relatively small datasets like the "names" text file.

The recursive version, not surprisingly, is the slowest of the bunch.

# Ackermann

## Contents
* [Intro](#intro)
* [Swift](#swift)
* [Author](#author)
* [License](#license)


##Intro
Swift version of the Ackermann Function. You can read more about the Ackermann Function [here](https://en.wikipedia.org/wiki/Ackermann_function). If you'd like to watch a video about it, check out [this video](https://www.youtube.com/watch?v=i7sm9dzFtEI) from Computerphile.

Realistically, the highest value of Ackermann you will be able to compute on your machine is Ackermann(4, 1), with a value of 65533. This will take a few minutes and use about 25GB of RAM.

![Alt text](https://raw.githubusercontent.com/MrAdamBoyd/ackermann/master/RAM%20Usage%20SS.png)

## Swift
I made two modifications to the program when translating it from C.

1) Using `Int32`. This is to save memory.

2) Using `UnsafeMutablePointer`s. Calling this program without using pointers quickly causes it to crash and run out of memory. Using pointers overcomes this.

## Author
My name is Adam Boyd.

Your best bet to contact me is on Twitter. [@MrAdamBoyd](https://twitter.com/MrAdamBoyd)

My website is [adamjboyd.com](http://www.adamjboyd.com).

## License
MIT

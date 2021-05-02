# Head

Based on my cache implementation i have the following cache hit ratio for two programs 'test1.asm' and 'test2.asm'

| Number of Block | Block Size | Hit ratio(test1.asm) | Hit ratio(test2.asm) |
| --------------- | ---------- | -------------------- | -------------------- |
| 8               | 1          | .500                 | .503                 |
| 4               | 2          | .636                 | .669                 |
| 2               | 4          | .777                 | .793                 |
| 1               | 8          | .857                 | .0154                |
| 2               | 2          | .636                 | .667                 |
| 4               | 4          | .777                 | .796                 |
| 8               | 2          | .636                 | .672                 |
| 2               | 8          | .875                 | .879                 |
| 8               | 4          | .777                 | .801                 |


test1.asm has highest hit ratio(.875) when it has number of block=2 and block size=8 and lowest hit ratio (.5000) when nnumber of block=8 and block size=1. The higher the hit ratio, the better  cache is . so the test1.asm is optimal when number of block=2 and block size=8 because it contains 8 words within   each of the 2 block. so when we want to have fetch a word from cache,  it got higher hit rate as it has the higher probability to have that word exist beforehand in the cache block. The more word in the cache with highr number of block, the more chance  it will have to get that word fetched from the cache. There is little need to go to main memory for getting that word. 


test2.asm has highest hit ratio(.879) when it has number of block=2 and block size=8 and lowest hit ratio (.5000) when nnumber of block=1 and block size=8. The higher the hit ratio , the better  cache is . so the test2.asm is optimal when number of block=2 and block size=8  because it contains 8 words within   each of the 2 block. so when we want to have fetch a word from cache,  it got higher hit rate as it has the higher probability to have that word exist beforehand in the cache. The more word in the cache with highr number of block the more chance it will get that word fetched from the cache. There is little need to go to main memory for getting that word.(same reason mentioned above).



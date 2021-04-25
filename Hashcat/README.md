# Hashcat - https://hashcat.net/wiki/doku.php?id=hashcat
```
https://hashcat.net/wiki/doku.php?id=rule_based_attack
https://hashcat.net/wiki/doku.php?id=example_hashes
```

## Hashid
```
hashid.py <input-file/text>
```

## Options

### Enable a specific workload profile -w
```
-w1 <- Low
-w2 <- Default
-w3 <- High
-w4 <- Nightmare
```

### Hash-type -m
```
-m0 <- MD5
-m100 <- SHA1
-m3200 <- bcrypt $2*$, Blowfish (Unix) 
```

### Attack-mode -a
```
-a0 <- Straight
-a1 <- Combination
-a3 <- Brute-force
-a6 <- Hybrid Wordlist + Mask
-a7 <- Hybrid Mask + Wordlist
```

### Outfile for recovered hash -o
```
-o cracked.txt hash.txt
```

### Enable optimized kernels -O
```
-O
```

### Abort if temperature reaches X degrees Celsius
```
--hwmon-temp-abort=96
```

### Show info about detected backend API devices
```
-I
```

### User-defined charset
```
?l?l?l?l?l?l?l <- 7 lowercase letters
?l?l?l?l?l?l?l -i <- from 1 to 7 lowercase letters

-1 ?l?d ?1?1?1?1?1?1?1 <- 7 lowercase letters or numbers
-1 ?l?d@ ?1?1?1?1?1?1?1 <- 7 lowercase letters or numbers or @

```

### Enable mask increment mode (requires -i)
```
--increment-min=4
--increment-max=8
```

## Examples (dictionaries refer to the book repository)

```
hashcat64 -w4 -m0 -a3 -o cracked.txt hash.txt ?l?l?l?l?l?l?l?l?l?l --hwmon-temp-abort=96
hashcat64 -w4 -m0 -a3 -o cracked.txt hash.txt ?l?l?l?l?l?l?l?l?l?l -i --increment-min=10 --hwmon-temp-abort=96
hashcat64 -w4 -m0 -a3 -o cracked.txt hash.txt -1 ?l?d@ ?1?1?1?1?1?1?1 -i -O

hashcat64 -w4 -m0 -a0 file.dict -o cracked.txt hash.txt 

hashcat64 -w4 -m0 -a1 file.dict lower lower -o cracked.txt hash.txt 

hashcat64 -w4 -m0 -a6 file.dict lower lower ?d?d?d -o cracked.txt hash.txt // Combination two words and three numbers

hashcat64 -r hashcatOne.rules
hashcat64 -w4 -m0 -a0 file.dict -o cracked.txt hash.txt -r hashcatOne.rules -O
hashcat64 -w4 -m0 -a0 file.dict -o cracked.txt hash.txt -r hashcatOne.rules -O --hwmon-temp-abort=96
```

```
hashcat64 --restore
```

```
hashcat64 -I
```
# based on LAB4-IA Model

library(rowr)
# phoneme layer
# each consonant is represented by 4 features:
# 1. voicing: c(voiced, unvoiced)
# 2. aspiration: c(aspirated, unaspirated)
# 3. place of articulation: c(bilabial, labiodental, dental, alveolar, postalveolar, retroflex, 
#                             palatal, velar, uvular, pharyngeal, glottal)
# 4. manner: c(plosive, nasal, trill, tap, fricative, affricative, lateral fricative, approximant, 
#              lateral approximant)

# /m/ voiced labial nasal
m <- c(c(1, -1), 
       c(-1, 1),
       c(1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1),
       c(-1, 1, -1, -1, -1, -1, -1, -1, -1))

# /l/ voiced alveolar lateral approximant
l <- c(c(1, -1), 
       c(-1, 1),
       c(-1, -1, -1, 1, -1, -1, -1, -1, -1, -1, -1),
       c(-1, -1, -1, -1, -1, -1, -1, -1, 1))

# /p/ (Mandarin pinyin "b", as the /p/ in "spot": unaspirated /p/)
p <- c(c(-1, 1),
       c(-1, 1),
       c(1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1),
       c(1, -1, -1, -1, -1, -1, -1, -1, -1))

# /b/: voiced bilabial plosive
b <- c(c(1, -1),
       c(-1, 1),
       c(1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1),
       c(1, -1, -1, -1, -1, -1, -1, -1, -1))

# /w/: voiced labial-velar approximant -> here as a bilabial
w <- c(c(1, -1),
       c(-1, 1),
       c(1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1),
       c(-1, -1, -1, -1, -1, -1, -1, -1, 1))

# /k/: (Mandarin pinyin "g", as the /k/ in "skirt": unaspirated /k/) 
g <- c(c(-1, 1),
       c(-1, 1),
       c(-1, -1, -1, -1, -1, 1, -1, -1, -1, -1, -1),
       c(1, -1, -1, -1, -1, -1, -1, -1, -1))

# /k/: (Mandarin pinyin "k", same as English aspirated /k/)
k <- c(c(-1, 1),
       c(1, -1),
       c(-1, -1, -1, -1, -1, 1, -1, -1, -1, -1, -1),
       c(1, -1, -1, -1, -1, -1, -1, -1, -1))

# /s/: voiceless alveolar fricative
s <- c(c(-1, 1),
       c(-1, 1),
       c(-1, -1, -1, 1, -1, -1, -1, -1, -1, -1, -1),
       c(-1, -1, -1, -1, 1, -1, -1, -1, -1))

# /ʃ/: voiceless postalveolar fricative
ʃ <- c(c(-1, 1),
       c(-1, 1),
       c(-1, -1, -1, -1, 1, -1, -1, -1, -1, -1, -1),
       c(-1, -1, -1, -1, 1, -1, -1, -1, -1))

# /ʂ/ (Mandarin pinyin "sh") voiceless retroflex fricative
sh <- c(c(-1, 1),
        c(1, -1),
        c(-1, -1, -1, -1, -1, 1, -1, -1, -1, -1, -1),
        c(-1, -1, -1, -1, 1, -1, -1, -1, -1))

# /ʈ͡ʂ/(Mandari pinypin "ch") voiceless retroflex affricative (aspirated)
ch <- c(c(-1, 1),
        c(1, -1),
        c(-1, -1, -1, -1, -1, 1, -1, -1, -1, -1, -1),
        c(-1, -1, -1, -1, -1, 1, -1, -1, -1))

# /ʈ͡ʂ/ (Mandarin pinyin "zh") voiceless retroflex affricative (unaspirated)
zh <- c(c(-1, 1),
        c(-1, 1),
        c(-1, -1, -1, -1, -1, 1, -1, -1, -1, -1, -1),
        c(-1, -1, -1, -1, -1, 1, -1, -1, -1))

# /f/: voiceless labiodental fricative
f <- c(c(-1, 1),
       c(-1, 1),
       c(-1, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1),
       c(-1, -1, -1, -1, 1, -1, -1, -1, -1))

# /d/: voiced alveolar plosive
d <- c(c(1, -1),
       c(-1, 1),
       c(-1, -1, -1, 1, -1, -1, -1, -1, -1, -1, -1),
       c(1, -1, -1, -1, -1, -1, -1, -1, -1))

# /ɹ/: voiced alveolar approximant
r <- c(c(1, -1),
       c(-1, 1),
       c(-1, -1, -1, 1, -1, -1, -1, -1, -1, -1, -1),
       c(-1, -1, -1, -1, -1, -1, -1, 1, -1))

# /n/: voiced alveolar nasal
n <- c(c(1, -1), 
       c(-1, 1),
       c(-1, -1, -1, 1, -1, -1, -1, -1, -1, -1, -1),
       c(-1, 1, -1, -1, -1, -1, -1, -1, -1))

# /ŋ/: voiced velar nasal
ŋ <- c(c(1, -1), 
       c(-1, 1),
       c(-1, -1, -1, -1, -1, -1, -1, 1, -1, -1, -1),
       c(-1, 1, -1, -1, -1, -1, -1, -1, -1))

# /t/: voiceless alveolar plosive (aspirated)
t <- c(c(-1, 1),
       c(1, -1),
       c(-1, -1, -1, 1, -1, -1, -1, -1, -1, -1, -1),
       c(1, -1, -1, -1, -1, -1, -1, -1, -1))

# /h/: voicless glottal fricative
h <- c(c(-1, 1),
       c(1, -1),
       c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 1),
       c(-1, -1, -1, -1, 1, -1, -1, -1, -1))


# row is a feature, column is a consonant
consonant.connections <- matrix(
  c(m, l, p, b, w, g, k, s, ʃ, sh, ch, zh, f, d, r, n, ŋ, t, h), ncol = 19
)
# consonant.connections[consonant.connections == -1] <- -0.8

# each vowel is represented by 4 features:
# 1. tenseness c(tense, lax)
# 2. roundedness: c(rounded, unrounded)
# 3. frontness: c(front, central, back)
# 4. height: c(close, close-mid, open-mid, open)
# diphthongs are represented by the combination of two monophones

# /ʊ/
ʊ <- c(c(-1, 1), c(1, -1), c(-1, -1, 1), c(1, -1, -1, -1))

# /u/
u <- c(c(1, -1), c(1, -1), c(-1, -1, 1), c(1, -1, -1, -1))

# /a/ (the one at the back)
ab <- c(c(1, -1), c(-1, 1), c(-1, -1, 1), c(-1, -1, -1, 1))

# /a/ (the one in the front, written differently)
af <- c(c(1, -1), c(-1, 1), c(1, -1, -1), c(-1, -1, -1, 1))

# /i/
i <- c(c(1, -1), c(-1, 1), c(1, -1, -1), c(1, -1, -1, -1))

# /ɪ/
ɪ <- c(c(-1, 1), c(-1, 1), c(1, -1, -1), c(1, -1, -1, -1))

# /e/
e <- c(c(1, -1), c(-1, 1), c(1, -1, -1), c(-1, 1, -1, -1))

# /y/
y <- c(c(1, -1), c(1, -1), c(1, -1, -1), c(1, -1, -1, -1))

# /o/
o <- c(c(1, -1), c(1, -1), c(-1, -1, 1), c(-1, 1, -1, -1))

# /ɔ/
ɔ <- c(c(1, -1), c(1, -1), c(-1, -1, 1), c(-1, -1, 1, -1))

# /ʌ/
ʌ <- c(c(-1, 1), c(-1, 1), c(-1, -1, 1), c(-1, -1, 1, -1))

# /æ/
æ <- c(c(-1, 1), c(-1, 1), c(1, -1, -1), c(-1, -1, 1, -1))

vowel.connections <- matrix(
  c(ʊ, u, ab, af, i, ɪ, e, y, o, ɔ, ʌ, æ), ncol = 12
)

# phono-lexical layer
# the pronunciation of each word is represented as one-syllable (CCVVCC) pattern
# Consonants: m, l, p, b, w, g, k, s, ʃ, sh, ch, zh, f, d, r, n, ŋ, t, h
# Vowels: ʊ, u, a (back), a (front), i, ɪ, e, y, o, ɔ, ʌ, æ

# tree
tree <- c(
  c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 1, -1),
  c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 1, -1, -1, -1, -1),
  c(-1, -1, -1, -1, 1, -1, -1, -1, -1, -1, -1, -1),
  c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1),
  c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1),
  c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1))

# shu
shu <- c(
  c(-1, -1, -1, -1, -1, -1, -1, -1, -1, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1),
  c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1),
  c(-1, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1),
  c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1),
  c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1),
  c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1))

# book
book <- c(
  c(-1, -1, -1, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1),
  c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1),
  c(1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1),
  c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1),
  c(-1, -1, -1, -1, -1, -1, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1),
  c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1))

# hu 
hu <- c(
  c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 1),
  c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1),
  c(-1, 1, -1, -1, -1,  -1, -1, -1, -1, -1, -1, -1),
  c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1),
  c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1),
  c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1))

# eye
eye <- c(
  c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1),
  c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1),
  c(-1, -1, -1, 1, -1, -1, -1, -1, -1, -1, -1, -1),
  c(-1, -1, -1, -1, -1, 1, -1, -1, -1, -1, -1, -1),
  c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1),
  c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1))

# mu
mu <- c(
  c(1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1),
  c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1),
  c(-1, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1),
  c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1),
  c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1),
  c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1))

# wood
wood <- c(
  c(-1, -1, -1, -1, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1),
  c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1),
  c(1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1),
  c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1),
  c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 1, -1, -1, -1, -1, -1),
  c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1))

# lu
lu <- c(
  c(-1, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1),
  c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1),
  c(-1, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1),
  c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1),
  c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1),
  c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1))

# dam
dam <- c(
  c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 1, -1, -1, -1, -1, -1),
  c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1),
  c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 1),
  c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1),
  c(1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1),
  c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1))

# ba
ba <- c(
  c(-1, -1, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1),
  c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1),
  c(-1, -1, -1, 1, -1, -1, -1, -1, -1, -1, -1, -1),
  c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1),
  c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1),
  c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1))

# scar
scar <- c(
  c(-1, -1, -1, -1, -1, -1, -1, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1),
  c(-1, -1, -1, -1, -1, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1),
  c(-1, -1, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1),
  c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1),
  c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 1, -1, -1, -1, -1),
  c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1))

# wa
wa <- c(
  c(-1, -1, -1, -1, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1),
  c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1),
  c(-1, -1, -1, 1, -1, -1, -1, -1, -1, -1, -1, -1),
  c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1),
  c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1),
  c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1))

# arm
arm <- c(
  c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1),
  c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1),
  c(-1, -1, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1),
  c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1),
  c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 1, -1, -1, -1, -1),
  c(1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1))

# bi
bi <- c(
  c(-1, -1, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1),
  c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1),
  c(-1, -1, -1, -1, 1, -1, -1, -1, -1, -1, -1, -1),
  c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1),
  c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1),
  c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1))

# coin
coin <- c(
  c(-1, -1, -1, -1, -1, -1, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1),
  c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1),
  c(-1, -1, -1, -1, -1, -1, -1, -1, -1, 1, -1, -1),
  c(-1, -1, -1, -1, -1, 1, -1, -1, -1, -1, -1, -1),
  c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 1, -1, -1, -1),
  c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1))


# mi
mi <- c(
  c(1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1),
  c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1),
  c(-1, -1, -1, -1, 1, -1, -1, -1, -1, -1, -1, -1),
  c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1),
  c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1),
  c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1))

# rain
rain <- c(
  c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 1, -1, -1, -1, -1),
  c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1),
  c(-1, -1, -1, -1, -1, -1, 1, -1, -1, -1, -1, -1),
  c(-1, -1, -1, -1, -1, 1, -1, -1, -1, -1, -1, -1),
  c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 1, -1, -1, -1),
  c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1))

# yu
yu <- c(
  c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1),
  c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1),
  c(-1, -1, -1, -1, -1, -1, -1, 1, -1, -1, -1, -1),
  c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1),
  c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1),
  c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1))

# fish
fish <- c(
  c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 1, -1, -1, -1, -1, -1, -1),
  c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1),
  c(-1, -1, -1, -1, -1, 1, -1, -1, -1, -1, -1, -1),
  c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1),
  c(-1, -1, -1, -1, -1, -1, -1, -1, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1),
  c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1))

# gu
gu <- c(
  c(-1, -1, -1, -1, -1, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1),
  c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1),
  c(-1, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1),
  c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1),
  c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1),
  c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1))

# toe
toe <- c(
  c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 1, -1),
  c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1),
  c(-1, -1, -1, -1, -1, -1, -1, -1, 1, -1, -1, -1),
  c(1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1),
  c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1),
  c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1))

# zhi
zhi <- c(
  c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 1, -1, -1, -1, -1, -1, -1, -1),
  c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1),
  c(-1, -1, -1, -1, 1, -1, -1, -1, -1, -1, -1, -1),
  c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1),
  c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1),
  c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1))

# mole
mole <- c(
  c(1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 1, -1, -1, -1, -1, -1, -1, -1),
  c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1),
  c(-1, -1, -1, -1, -1, -1, -1, -1, 1, -1, -1, -1),
  c(1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1),
  c(-1, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1),
  c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1))

# chi
chi <- c(
  c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 1, -1, -1, -1, -1, -1, -1, -1, -1),
  c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1),
  c(-1, -1, -1, -1, 1, -1, -1, -1, -1, -1, -1, -1),
  c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1),
  c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1),
  c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1))

# fee
fee <- c(
  c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 1, -1, -1, -1, -1, -1, -1),
  c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1),
  c(-1, -1, -1, -1, -1, 1, -1, -1, -1, -1, -1, -1),
  c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1),
  c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1),
  c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1))

# # fei
# fei <- c(
#   c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 1, -1, -1, -1, -1, -1, -1),
#   c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1),
#   c(-1, -1, -1, -1, -1, -1, 1, -1, -1, -1, -1, -1),
#   c(-1, -1, -1, -1, -1, 1, -1, -1, -1, -1, -1, -1),
#   c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1),
#   c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1))

# fei -> change it to rei (not a real word. just to test the phonolexical similarities for rain)
fei <- c(
  c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 1, -1, -1, -1, -1),
  c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1),
  c(-1, -1, -1, -1, -1, -1, 1, -1, -1, -1, -1, -1),
  c(-1, -1, -1, -1, -1, 1, -1, -1, -1, -1, -1, -1),
  c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1),
  c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1))

# 
lung <- c(
  c(-1, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1),
  c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1),
  c(-1, -1, -1, -1, -1, -1, 1, -1, -1, -1, 1, -1),
  c(-1, -1, -1, -1, -1, 1, -1, -1, -1, -1, -1, -1),
  c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 1, -1, -1, -1),
  c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1))

# bei
bei <- c(
  c(-1, -1, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 1, -1, -1, -1),
  c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 1, -1, -1, -1),
  c(-1, -1, -1, -1, -1, -1, 1, -1, -1, -1, -1, -1),
  c(-1, -1, -1, -1, -1, 1, -1, -1, -1, -1, -1, -1),
  c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 1, -1, -1, -1),
  c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 1, -1, -1, -1))

phonolexical.connections <- matrix(
  c(tree, shu, book, eye, mu, wood, dam, ba, scar, arm, bi, coin, rain, yu, fish, toe, zhi, mole, fee, fei, lung),
  ncol = 21
)

# The 21 elements in the vector is organized in seven groups in the pattern of 
# (English_target)-(Mandarin_homophones)-(English_competitor).
# The parameter, overlap, determines the degree which the meaning will activate
# the corresponding Mandarin pronunciation.
overlap <- 1
tree
tree.word <-
  c(1, overlap, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1)
# shu
# shu.word <-
#   c(-1, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1)
# tu
book.word <-
  c(-1, overlap, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1)
# eye
eye.word <-
  c(-1, -1, -1, 1, overlap, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1)
# mu
# mu.word <-
#   c(-1, -1, -1, -1, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1)
# lu
wood.word <-
  c(-1, -1, -1, -1, overlap, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1)
# dam
dam.word <-
  c(-1, -1, -1, -1, -1, -1, 1, overlap, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1)
# ba
# ba.word <-
#   c(-1, -1, -1, -1, -1, -1, -1, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1)
# wa
scar.word <-
  c(-1, -1, -1, -1, -1, -1, -1, overlap, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1)
# arm
arm.word <-
  c(-1, -1, -1, -1, -1, -1, -1, -1, -1, 1, overlap, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1)
# bi
# bi.word <-
#   c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1)
# mi
coin.word <-
  c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, overlap, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1)
# rain
rain.word <-
  c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 1, overlap, -1, -1, -1, -1, -1, -1, -1)
# yu
# yu.word <-
#   c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 1, -1, -1, -1, -1, -1, -1, -1)
# fish
fish.word <-
  c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, overlap, 1, -1, -1, -1, -1, -1, -1)
# toe
toe.word <-
  c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 1, overlap, -1, -1, -1, -1)
# zhi
# zhi.word <-
#   c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 1, -1, -1, -1, -1)
# chi
mole.word <-
  c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, overlap, 1, -1, -1, -1)
# fee
fee.word <-
  c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 1, overlap, -1)
# fei
# fei.word <-
#   c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 1, -1)
# bei
lung.word <-
  c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, overlap, 1)



# nodes in the semantic layer are presented as a group of TWO:
# first one being the English target word, second one being competitor
semantic.connections <- matrix(
  c(tree.word, book.word, eye.word, wood.word, dam.word, scar.word, arm.word, coin.word, 
    rain.word, fish.word, toe.word, mole.word, fee.word, lung.word),
  ncol = 14
)
# semantic.connections[semantic.connections == -1] <- -0.8



# input: rain -> this is only for testing the semantic layer
# input.rain.word <-
#   c(0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0)

# input: rain (phonolexical level) -> this is only for testing the phonolexical layer
# input.rain <- c(
#   c(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
#   c(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
#   c(0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
#   c(0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0),
#   c(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0),
#   c(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0))

# input: r
input.r <- c(c(1, -1),
             c(-1, 1),
             c(-1, -1, -1, 1, -1, -1, -1, -1, -1, -1, -1),
             c(-1, -1, -1, -1, -1, -1, -1, 1, -1))

input.n <- c(c(1, -1),
             c(-1, 1),
             c(-1, -1, -1, 1, -1, -1, -1, -1, -1, -1, -1),
             c(-1, 1, -1, -1, -1, -1, -1, -1, -1))

# input: e
input.e <- c(c(1, -1), c(-1, 1), c(1, -1, -1), c(-1, 1, -1, -1))
# input: ɪ
input.ɪ <- c(c(-1, 1), c(-1, 1), c(1, -1, -1), c(1, -1, -1, -1))

# input: ʃ
input.ʃ <- c(c(-1, 1),
             c(-1, 1),
             c(-1, -1, -1, -1, 1, -1, -1, -1, -1, -1, -1),
             c(-1, -1, -1, -1, 1, -1, -1, -1, -1))

# input: i
input.i <- c(c(1, -1), c(-1, 1), c(1, -1, -1), c(1, -1, -1, -1))

# input: empty consonant
input.empty.consonant <- c(c(-1, -1),
                           c(-1, -1),
                           c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1),
                           c(-1, -1, -1, -1, -1, -1, -1, -1, -1))
# input: empty vowel
input.empty.vowel <- c(c(-1,-1), c(-1, -1), c(-1, -1, -1), c(-1, -1, -1, -1))

input.empty.sound <- cbind.fill(
  input.empty.consonant, input.empty.consonant, input.empty.vowel, input.empty.vowel,
  input.empty.consonant, input.empty.consonant,
  fill=NA
)


input.tree.sound <- cbind.fill(
  input.ʃ, input.r, input.i, input.empty.vowel, input.empty.consonant, input.empty.consonant,
  fill=NA
)

input.eye.sound <- cbind.fill(
  input.empty.consonant, input.empty.consonant, af, i, input.empty.consonant, input.empty.consonant,
  fill=NA
)

input.rain.sound <- cbind.fill(
  input.r, input.empty.consonant, input.e, input.ɪ, input.n, input.empty.consonant,
  fill=NA
)

input.rain.fish <- c(-1, -1, -1, -1, -1, -1, -1, -1, 1, 1, -1, -1, -1, -1)
input.rain.tree <- c(1, -1, -1, -1, -1, -1, -1, -1, 1, -1, -1, -1, -1, -1)
input.rain.fei <- c(-1, -1, -1, -1, -1, -1, -1, -1, 1, -1, -1, -1, -1, 1)

input.eye.wood <- c(-1, -1, 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1)
input.eye.tree <- c(1, -1, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1)

input.tree.book <- c(1, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1)
input.tree.eye <- c(1, -1, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1)
input.tree.wood <- c(1, -1, -1, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1)
input.tree.dam <- c(1, -1, -1, -1, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1)
input.rain.fei <- c(-1, -1, -1, -1, -1, -1, -1, -1, 1, -1, -1, -1, -1, 1)

# building the model
# a vector to record the activity each consonant/vowel
all.phoneme.units <- cbind.fill(
  c(rep(0,19)), c(rep(0,19)), c(rep(0,12)), c(rep(0,12)), c(rep(0,19)), c(rep(0,19)),
  fill=NA
)
phoneme.excitatory.weight <- 0.5
phoneme.inhibitory.weight <- -0.1
phonolexical.to.phoneme.excitatory.weight <- 0.6
phonolexical.to.phoneme.inhibitory.weight <- -0.15

# a vector to record the activity of each of the 21 CCVVCC representations at the phonolexical layer
phonolexical.units <- rep(0,21)
phonolexical.excitatory.weight <- 0.6
phonolexical.inhibitory.weight <- -0.15
# semantic.to.phonolexical.excitatory.weight <- 0.8
semantic.to.phonolexical.excitatory.weight <- 0.8
semantic.to.phonolexical.inhibitory.weight <- -0.005

# a vector to record the activity of each of the 14 words at the semantic layer
semantic.units <- rep(0,14)
semantic.excitatory.weight <- 0.5
semantic.inhibitory.weight <- -0.1
visual.excitatory.weight <- 0.3
visual.inhibitory.weight <- -0.085

cycles <- 30

# inputs to the phonolexical level: 1. auditory input; 2. the output from the phonological layer
phoneme.activation <- function(sound.input, phonolexical.input){
  phoneme.output <- c()
  phonolexical.feedback <- rep(0, 100)
  for(x in 1:100){
    phonolexical.feedback[x] <- sum(phonolexical.input * phonolexical.connections[x, ] * phonolexical.to.phoneme.excitatory.weight)
  }
  
  # because consonant and vowel have different connection units, go through each element
  # of the CCVVCC sequence
  for(i in 1:6){
    phoneme <- na.omit(sound.input[i])
    if (i == 3 || i == 4) {
      is.consonant <- FALSE
      num <- 12
    } else {
      is.consonant <- TRUE
      num <- 19
    }
    phoneme.units <- na.omit(all.phoneme.units[i])
    input.weight <- phoneme * phoneme.excitatory.weight
   
     # excitatory connection from the auditory input 
    for (n in 1:num){
      # if it is a consonant
      if (is.consonant) {
        excitatory.input <- consonant.connections[, n] * input.weight
      } 
      # if it is a vowel
      else {
        excitatory.input <- vowel.connections[, n] * input.weight
      }
      phoneme.units[n,] <- phoneme.units[n,] + sum(excitatory.input)
      if(phoneme.units[n,] < 0){
        phoneme.units[n,] <- 0
      }
    }
  
    # inhibitory connection from the auditory input 
    inhibitory.activity <- numeric()
    for(n in 1:num){
      inhibitory.activity[n] <- sum(phoneme.units[-n,] * phoneme.inhibitory.weight)
    }
    phoneme.units <- phoneme.units + inhibitory.activity
    for(n in 1:num){
      if(phoneme.units[n,] < 0){
        phoneme.units[n,] <- 0
      }
    }
    
    # excitatory connections from the phonolexical layer feedback
    if (i == 1 || i == 2){
      phoneme.units <- phoneme.units + phonolexical.feedback[((i-1)*19+1) : (i*19)]
    } else if (i == 3 || i == 4){
      phoneme.units <- phoneme.units + phonolexical.feedback[(38+(i-3)*12+1) : (38+(i-2)*12)]
    } else {
      phoneme.units <- phoneme.units + phonolexical.feedback[(62+(i-5)*19+1) : (62+(i-4)*19)]
    }
    for(n in 1:num){
      if(phoneme.units[n,] < 0){
        phoneme.units[n,] <- 0
      }
    }
    
    # inhibitory connections from the phonolexical layer feedback
    inhibitory.activity <- numeric()
    for(n in 1:num){
      inhibitory.activity[n] <- sum(phoneme.units[-n,] * phonolexical.to.phoneme.inhibitory.weight)
    }
    phoneme.units <- phoneme.units + inhibitory.activity
    for(n in 1:num){
      if(phoneme.units[n,] < 0){
        phoneme.units[n,] <- 0
      }
    }
    
    # the response probability of the phoneme
    phoneme.sum <- sum(phoneme.units)
    # when it is the empty consonant/vowel, keep them as zeros. Or the divider will be zero
    # when calculating the probability
    if(phoneme.sum != 0){
      phoneme.response.probability <- phoneme.units / phoneme.sum
    } else {
      phoneme.response.probability <- phoneme.units
    }
    
    # update the weight matrix (or dataframe in this case -> need to add NA to the vowels columns)
    if (i == 3 || i == 4){
      all.phoneme.units[i] <- rbind(phoneme.units, NA, NA, NA, NA, NA, NA, NA)
    } else{
      all.phoneme.units[i] <- phoneme.units
    }
    phoneme.output <- c(phoneme.output, phoneme.response.probability[,1])
  }
  phoneme.result <- list("prob" = phoneme.output, "units" = all.phoneme.units)
  return (phoneme.result)
}


# inputs to the phonolexical level: 1. semantic activation (assuming seeing the picture will activate
# both the English and the Mandarin word for it); 2. phonemic activation
# output of the phonolexical level: how likely it is to be one of the 21 words (a vector of probabilities)
phonolexical.activation <- function(phoneme.input, semantic.input){
  # excitatory connections from the phoneme layer
  phoneme.input.weight <- phoneme.input * phonolexical.excitatory.weight
  for (n in 1:21){
    phoneme.excitatory.input <- phonolexical.connections[, n] * phoneme.input.weight
    phonolexical.units[n] <- phonolexical.units[n] + sum(phoneme.excitatory.input)
    if(phonolexical.units[n] < 0){
      phonolexical.units[n] <- 0
    }
  }
  
  # inhibitory connections from the phoneme layer
  inhibitory.activity <- numeric()
  for(n in 1:21){
    inhibitory.activity[n] <- sum(phonolexical.units[-n] * phonolexical.inhibitory.weight)
  }
  phonolexical.units <- phonolexical.units + inhibitory.activity
  for(n in 1:21){
    if(phonolexical.units[n] < 0){
      phonolexical.units[n] <- 0
    }
  }
  
  # excitatory connections from the semantic layer
  for (n in 1:21){
    phonolexical.units[n] <- phonolexical.units[n] +
      sum(semantic.input * semantic.connections[n, ] * semantic.to.phonolexical.excitatory.weight)
    if(phonolexical.units[n] < 0){
      phonolexical.units[n] <- 0
    }
  }
  
  # inhibitory connections from the semantic layer
  inhibitory.activity <- numeric()
  for(n in 1:21){
    inhibitory.activity[n] <- sum(phonolexical.units[-n] * semantic.to.phonolexical.inhibitory.weight)
  }
  phonolexical.units <- phonolexical.units + inhibitory.activity
  for(n in 1:21){
    if(phonolexical.units[n] < 0){
      phonolexical.units[n] <- 0
    }
  }
  
  # the response probability for words at phonolexical level
  phonolexical.response.probability <- phonolexical.units / sum(phonolexical.units)
  phonolexical.result <- list("prob"=phonolexical.response.probability, "units"=phonolexical.units)
  return(phonolexical.result)
}


# inputs to the semantic level: 1. visual inputs; 2. phonolexical layer output
semantic.activation <- function(phonolexical.input, visual.input){
  input.weight <- phonolexical.input * semantic.excitatory.weight
  # excitatory connections from the phonological feedback
  for (n in 1:14){
    excitatory.input <- semantic.connections[, n] * input.weight
    semantic.units[n] <- semantic.units[n] + sum(excitatory.input)
    if(semantic.units[n] < 0){
      semantic.units[n] <- 0
    }
  }
  
  # inhibitory connections from the phonological feedback
  inhibitory.activity <- numeric()
  for(n in 1:14){
    inhibitory.activity[n] <- sum(semantic.units[-n] * semantic.inhibitory.weight)
  }
  semantic.units <- semantic.units + inhibitory.activity
  for(n in 1:14){
    if(semantic.units[n] < 0){
      semantic.units[n] <- 0
    }
  }
  
  # excitatory connections from the visual inputs
  for(n in 1:14){
    # the target
    if(n%%2 == 1){
      index <- (n%/%2) * 3 + 1
    semantic.units[n] <- semantic.units[n] + sum(visual.input * visual.excitatory.weight *
                                                   (semantic.connections[index,] + semantic.connections[index+1,]))
    } # the competitor
    else {
      index <- (n%/%2) * 3
      semantic.units[n] <- semantic.units[n] + sum(visual.input * visual.excitatory.weight *
                                                     (semantic.connections[index,] + semantic.connections[index-1,]))
    }
  }
  for(n in 1:14){
    if(semantic.units[n] < 0){
      semantic.units[n] <- 0
    }
  }
  
  # inhibitory connections from the visual inputs
  inhibitory.activity <- numeric()
  for(n in 1:14){
    inhibitory.activity[n] <- sum(semantic.units[-n] * visual.inhibitory.weight)
  }
  semantic.units <- semantic.units + inhibitory.activity
  for(n in 1:14){
    if(semantic.units[n] < 0){
      semantic.units[n] <- 0
    }
  }
 
  # assume there is no excitatory/inhibitory connections from the visual inputs to the semantic
  # layer
  # semantic.units <- semantic.units + visual.input * visual.excitatory.weight
  # for(n in 1:14){
  #   if(semantic.units[n] < 0){
  #     semantic.units[n] <- 0
  #   }
  # }
  
  # the response probability for words at semantic level
  semantic.response.probability <- semantic.units / sum(semantic.units)
  semantic.result <- list("prob"=semantic.response.probability, "units"=semantic.units)
  return (semantic.result)
}

visual.world <- function(auditory.input, visual.input){
  phonolexical.output <- list("prob" = rep(0, 21), "units" = rep(0,21))
  for (cycle in 1:10){
  phoneme.output <- phoneme.activation(auditory.input, phonolexical.output$prob)
  all.phoneme.units <- phoneme.output$units
  
  semantic.output <- semantic.activation(phonolexical.output$prob, visual.input)
  semantic.units <- semantic.output$units
  
  phonolexical.output <- phonolexical.activation(na.omit(phoneme.output$prob), semantic.output$prob)
  phonolexical.units <- phonolexical.output$units
  print(semantic.output$prob)
  }
  
  # the result of the code can be used to simulate the scenario, assuming the auditory stimulus
  # is only present during the first few cycles
  # semantic.output <- semantic.activation(phonolexical.output$prob, visual.input)
  # semantic.units <- semantic.output$units
  # 
  # for (cycle in 1:cycles){
    # # semantic.output <- semantic.activation(phonolexical.output$prob, visual.input)
    # # semantic.units <- semantic.output$units
    # 
    # # if (cycle <= 5){
    #   phoneme.output <- phoneme.activation(auditory.input, phonolexical.output$prob)
    # # } else {
    # # phoneme.output <- phoneme.activation(input.empty.sound, phonolexical.output$prob)
    # # }
    # all.phoneme.units <- phoneme.output$units
    # # cat("phoneme.output.prob", phoneme.output$prob)
  #   
  #   phonolexical.output <- phonolexical.activation(na.omit(phoneme.output$prob),
  #                                                  semantic.output$prob)
  #   phonolexical.units <- phonolexical.output$units
  #   # cat("phonolexical.output.prob", phonolexical.output$prob)
  #   
  #   semantic.output <- semantic.activation(phonolexical.output$prob,
  #                                          visual.input)
  #   semantic.units <- semantic.output$units
    # print(semantic.output$prob)
  # }
  return(semantic.output)
}

# test the model
# a vector to record the activity each consonant/vowel
all.phoneme.units <- cbind.fill(
  c(rep(0,19)), c(rep(0,19)), c(rep(0,12)), c(rep(0,12)), c(rep(0,19)), c(rep(0,19)),
  fill=NA
)
# a vector to record the activity of each of the 21 CCVVCC representations at the phonolexical layer
phonolexical.units <- rep(0,21)
# a vector to record the activity of each of the 14 words at the semantic layer
semantic.units <- rep(0,14)

# graphs 
x <- -1
result.comp <- c()
result.target <- c()
while(x<=1){
  overlap <- x
  x <- x+0.1
  tree.word <-
    c(1, overlap, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1)
  rain.word <-
    c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 1, overlap, -1, -1, -1, -1, -1, -1, -1)
  fish.word <-
    c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, overlap, 1, -1, -1, -1, -1, -1, -1)
  semantic.connections <- matrix(
    c(tree.word, book.word, eye.word, wood.word, dam.word, scar.word, arm.word, coin.word, 
      rain.word, fish.word, toe.word, mole.word, fee.word, lung.word),
    ncol = 14
  )
  cat("overlap", overlap)
  output <- visual.world(input.rain.sound, input.rain.tree)
  all.phoneme.units <- cbind.fill(
    c(rep(0,19)), c(rep(0,19)), c(rep(0,12)), c(rep(0,12)), c(rep(0,19)), c(rep(0,19)),
    fill=NA
  )
  # a vector to record the activity of each of the 21 CCVVCC representations at the phonolexical layer
  phonolexical.units <- rep(0,21)
  # a vector to record the activity of each of the 14 words at the semantic layer
  semantic.units <- rep(0,14)
  result.comp <- c(result.comp, output$prob[10])
  result.target <- c(result.target, output$prob[9])
}
result.comp
result.target
plot(seq(-1, 1, by=0.1), result.comp, xlab="overlap", ylab="Activation percentage", ylim=c(0.2,0.8))
points(seq(-1, 1, by=0.1),result.target, col="red")
legend("topleft",legend=c("target-rain","competitor-tree"), col=c("red","black"),lty=c(1,2), cex = 0.75)
# lines(seq(-1, 1, by=0.1),  result.target,xlab="overlap", ylab="Target(rain) percentage", col="red")
plot(seq(-1, 1, by=0.1), result.target,xlab="overlap", ylab="Target(rain) percentage")


visual.world(input.eye.sound, input.eye.wood)
visual.world(input.eye.sound, input.eye.tree) # error message, somewhere the sum of units is 0

x=-1
result.comp <- c()
result.target <- c()
while(x<=1){
  overlap <- x
  x <- x+0.1
  tree.word <-
    c(1, overlap, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1)
  book.word <-
    c(-1, overlap, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1)
  eye.word <-
    c(-1, -1, -1, 1, overlap, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1)
  wood.word <-
    c(-1, -1, -1, -1, overlap, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1)
  dam.word <-
    c(-1, -1, -1, -1, -1, -1, 1, overlap, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1)
  semantic.connections <- matrix(
    c(tree.word, book.word, eye.word, wood.word, dam.word, scar.word, arm.word, coin.word, 
      rain.word, fish.word, toe.word, mole.word, fee.word, lung.word),
    ncol = 14
  )
  cat("overlap", overlap)
  output <- visual.world(input.tree.sound, input.tree.dam)
  all.phoneme.units <- cbind.fill(
    c(rep(0,19)), c(rep(0,19)), c(rep(0,12)), c(rep(0,12)), c(rep(0,19)), c(rep(0,19)),
    fill=NA
  )
  # a vector to record the activity of each of the 21 CCVVCC representations at the phonolexical layer
  phonolexical.units <- rep(0,21)
  # a vector to record the activity of each of the 14 words at the semantic layer
  semantic.units <- rep(0,14)
  result.comp <- c(result.comp, output$prob[5])
  result.target <- c(result.target, output$prob[1])
}
result.comp
result.target
plot(seq(-1, 1, by=0.1), result.comp, xlab="overlap", ylab="Activation percentage", ylim=c(0.2,0.8))
points(seq(-1, 1, by=0.1),result.target, col="red")
legend("topleft",legend=c("target-tree","competitor-dam"), col=c("red","black"),lty=c(1,2), cex = 0.75)
# lines(seq(-1, 1, by=0.1),  result.target,xlab="overlap", ylab="Target(rain) percentage", col="red")

visual.world(input.tree.sound, input.tree.wood)
visual.world(input.tree.sound, input.tree.book)
visual.world(input.tree.sound, input.tree.dam)
visual.world(input.tree.sound, input.tree.eye)
 
visual.world(input.rain.sound, input.rain.fei)

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

# each vowel is represented by 3 features:
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
# -------> don't need to include the English word for the competitors? 
# CCVVCC
# Consonants: m, l, p (unaspirated), w, k (unaspirated), ʂ, ʈ͡ʂ, ʈ͡ʂ (unaspirated), f, d, ɹ, n, t
# Vowels: ʊ, u, a (back), a (front), i, ɪ, e, y, o, ɔ, æ

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
  c(-1, -1, -1, -1, -1, -1, 1, -1, -1, -1,-1, -1),
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

# fei
fei <- c(
  c(-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 1, -1, -1, -1, -1, -1, -1),
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


# semantic layer: receives signals from the visual stimulus and the output from the phonolexical level.
# Meanwhile, it also send feedback signals to nodes at the phonolexical level
# compare the target to the competitor to simulate the growth curve

overlap <- 0.5
# tree
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



# input: rain -> this is only for testing the semantic layer
# input.rain.word <-
#   c(0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0)

# input: rain (phonolexical level) -> this is only for testing the phonolexical layer
# input.rain <- cbind.fill(
#   c(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
#   c(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
#   c(0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
#   c(0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0),
#   c(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0),
#   c(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
#   fill=NA)

# input: r 
input.r <- c(c(1, 0),
             c(0, 1),
             c(0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
             c(0, 0, 0, 0, 0, 0, 0, 1, 0))

input.n <- c(c(1, 0),
             c(0, 1),
             c(0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0),
             c(0, 1, 0, 0, 0, 0, 0, 0, 0))

# input: e
input.e <- c(c(1, 0), c(0, 1), c(1, 0, 0), c(0, 1, 0, 0))
# input: ɪ
input.ɪ <- c(c(0, 1), c(0, 1), c(1, 0, 0), c(1, 0, 0, 0))

# input: empty consonant
input.empty.consonant <- c(c(0, 0),
                           c(0, 0),
                           c(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
                           c(0, 0, 0, 0, 0, 0, 0, 0, 0))
# input: empty vowel
input.empty.vowel <- c(c(0, 0), c(0, 0), c(0, 0, 0), c(0, 0, 0, 0))

input.empty.sound <- cbind.fill(
  input.empty.consonant, input.empty.consonant, input.empty.vowel, input.empty.vowel,
  input.empty.consonant, input.empty.consonant,
  fill=NA
)

input.rain.sound <- cbind.fill(
  input.r, input.empty.consonant, input.e, input.ɪ, input.n, input.empty.consonant,
  fill=NA
)

input.rain.fish <- c(0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0)
input.rain.tree <- c(1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0)


# building the model
# a vector to record the activity each consonant/vowel
# consonant.units <- rep(0, 19)
# vowel.units <- rep(0,12)
all.phoneme.units <- cbind.fill(
  c(rep(0,19)), c(rep(0,19)), c(rep(0,12)), c(rep(0,12)), c(rep(0,19)), c(rep(0,19)),
  fill=NA
)
phoneme.excitatory.weight <- 0.5
phoneme.inhibitory.weight <- -0.1

# a vector to record the activity of each of the 21 CCVVCC representations at the phonolexical layer
phonolexical.units <- rep(0,21)
phonolexical.excitatory.weight <- 0.5
phonolexical.inhibitory.weight <- -0.01
eng.excitatory.weight <- 0.4
ma.excitatory.weight <- 0.3

# a vector to record the activity of each of the 14 words at the semantic layer
semantic.units <- rep(0,14)
semantic.excitatory.weight <- 0.5
semantic.inhibitory.weight <- -0.1

cycles <- 1

# activation function at the phoneme level
phoneme.activation <- function(sound.input, phonolexical.feedback){
  phoneme.output <- c()
  for(i in 1:6){
    phoneme <- na.omit(sound.input[i])
    if (i == 3 || i == 4) {
      is.consonant <- FALSE
      # phoneme.units <- vowel.units
      num <- 12
    } else {
      is.consonant <- TRUE
      # phoneme.units <- consonant.units
      num <- 19
    }
    phoneme.units <- na.omit(all.phoneme.units[i])
    for (cycle in cycles){
      input.weight <- phoneme * phoneme.excitatory.weight
      # excitatory connection within the phoneme layer
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
      # inhibitory connection within the phoneme layer
      inhibitory.activity <- numeric()
      for(n in 1:num){
        inhibitory.activity[n] <- sum(phoneme.units[-n,] * phoneme.inhibitory.weight)
      }
      phoneme.units <- phoneme.units + inhibitory.activity
      # activation from the phonolexical layer feedback
      for(n in 1:21){
        phonolexical.activity <- phonolexical.feedback[n] * phonolexical.connections[, n]
        if (i == 1 || i == 2){
          phoneme.units <- phoneme.units + phonolexical.activity[((i-1)*19+1) : (i*19)]
        } else if (i == 3 || i == 4){
          phoneme.units <- phoneme.units + phonolexical.activity[(38+(i-3)*12+1) : (38+(i-2)*12)]
        } else {
          phoneme.units <- phoneme.units + phonolexical.activity[(62+(i-5)*19+1) : (62+(i-4)*19)]
        }
      }
      for(n in 1:num){
        if(phoneme.units[n,] < 0){
          phoneme.units[n,] <- 0
        }
      }
    }
    # print(phoneme.units)
    # the response probability for consonants
    phoneme.sum <- sum(phoneme.units)
    # when it is the empty consonant/vowel -> keep them as zeros
    if(phoneme.sum != 0){
      phoneme.response.probability <- phoneme.units / phoneme.sum
    } else {
      phoneme.response.probability <- phoneme.units
    }
    if (i == 3 || i == 4){
      all.phoneme.units[i] <- rbind(phoneme.units, NA, NA, NA, NA, NA, NA, NA)
    } else{
      all.phoneme.units[i] <- phoneme.units
    }
    phoneme.output <- c(phoneme.output, phoneme.response.probability[,1])
  }
  # print(all.phoneme.units)
  phoneme.result <- list("prob" = phoneme.output, "units" = all.phoneme.units)
  return (phoneme.result)
} 


# inputs of the phonolexical level: 1. semantic activation (assuming seeing the picture will activate
# both the English and the Mandarin word for it); 2. phonemic activation
# output of the phonolexical level: how likely it is to be one of the 21 words (a vector of probabilities)
phonolexical.activation <- function(phoneme.input, visual.input){
  # phonolexical.units <- rep(0,21)
  for (cycle in 1:cycles){
    phoneme.input.weight <- phoneme.input * phonolexical.excitatory.weight
    for (n in 1:21){
      # excitatory inputs include both the output of the phoneme level
      # as well as the activation at the semantic level 
      phoneme.excitatory.input <- phonolexical.connections[, n] * phoneme.input.weight
      phonolexical.units[n] <- phonolexical.units[n] + sum(phoneme.excitatory.input)
      # print(phonolexical.units)
      if(phonolexical.units[n] < 0){
        phonolexical.units[n] <- 0
      }
    }
    for (n in 1:21){
      if (n %% 3 == 1){
        index <- (n %/% 3) * 2 + 1
        phonolexical.units[n] <- phonolexical.units[n] + visual.input[index] * eng.excitatory.weight
        phonolexical.units[n+1] <- phonolexical.units[n+1] + visual.input[index] * ma.excitatory.weight 
      } else if (n %% 3 == 0) {
        index <- (n %/% 3) * 2
        phonolexical.units[n] <- phonolexical.units[n] + visual.input[index] * eng.excitatory.weight
        phonolexical.units[n-1] <- phonolexical.units[n-1] + visual.input[index] * ma.excitatory.weight
      }
      if(phonolexical.units[n] < 0){
        phonolexical.units[n] <- 0
      }
    }
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
    # print(phonolexical.units)
    # print(phonolexical.response.probability)
  }
  # the response probability for words at phonolexical level
  phonolexical.response.probability <- phonolexical.units / sum(phonolexical.units)
  # return (phonolexical.response.probability)
  phonolexical.result <- list("prob"=phonolexical.response.probability, "units"=phonolexical.units)
  return(phonolexical.result)
}

# a vector to record the activity of each word at the semantic level
semantic.activation <- function(input){
  # semantic.units <- rep(0,14)
  for (cycle in 1:cycles){
    input.weight <- input * semantic.excitatory.weight
    print(input.weight)
    for (n in 1:14){
      excitatory.input <- semantic.connections[, n] * input.weight
      print(excitatory.input)
      semantic.units[n] <- semantic.units[n] + sum(excitatory.input)
      print(semantic.units)
      if(semantic.units[n] < 0){
        semantic.units[n] <- 0
      }
    }
    # print(semantic.units)
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
    # print(semantic.units/sum(semantic.units))
    # the response probability for words at semantic level
  }
  semantic.response.probability <- semantic.units / sum(semantic.units)
  semantic.result <- list("prob"=semantic.response.probability, "units"=semantic.units)
  return (semantic.result)
}

# visual.world <- function(auditory.input, visual.input){
#   phonolexical.output <- rep(0, 21)
#   phoneme.output <- phoneme.activation(auditory.input, phonolexical.output)
#   phonolexical.output <- phonolexical.activation(na.omit(phoneme.output), visual.input)
#   semantic.output <- semantic.activation(phonolexical.output)
#   return(semantic.output)
# }
# 
# visual.world(input.rain.sound, input.rain.fish)
# visual.world(input.rain.sound, input.rain.tree)

test.phonolexical.output <- rep(0, 21)
test.phoneme.output <- phoneme.activation(input.rain.sound, test.phonolexical.output)
print(test.phoneme.output)
all.phoneme.units <- test.phoneme.output$units

test.phonolexical.output <- phonolexical.activation(na.omit(test.phoneme.output$prob), input.rain.fish)
# test.phonolexical.output <- phonolexical.activation(na.omit(test.phoneme.output$prob), input.rain.tree)
print(test.phonolexical.output) 
phonolexical.units <- test.phonolexical.output$units

test.semantic.output <- semantic.activation(test.phonolexical.output$prob)
print(test.semantic.output)
semantic.units <- test.semantic.output$units

test.phoneme.feedback.output <- phoneme.activation(input.empty.sound, test.phonolexical.output$prob)
print(test.phoneme.feedback.output)
# since the picture is still being displayed
test.phonolexical.feedback.output <- phonolexical.activation(na.omit(test.phoneme.feedback.output$prob),
                                                             input.rain.fish)
print(test.phonolexical.feedback.output)
test.semantic.final.output <- semantic.activation(test.phonolexical.feedback.output$prob)
print(test.semantic.final.output)


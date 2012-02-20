o =. 'iirytroyppytpeppowuiyoiuypipiyuyotyoiwiytorouqyiepyirueuiprpptwyiroqwtuyipourrrourorwipowiorutpwtwruuioquteorioriyutwqyyprptuqqquuituyywyuoewtrppqwrtiiruirpwyptpuoyyoeyerpqiotuieripurouwuwyuwrworowitoepoypeipeypiireeorrwripuuteoitpuutturruwiyryeetyrioweytueqrrrtotrpiqetoyepoipiwrwpppiritupwipruooiepoweypiuwrqywuuwyiroqpqpruioopuiuerputpwwuuiqwpiroewrtwiqerteoyeqtutwoeoipioiuqiiiouuoqtuuwtuwiiqwppqitywuqpuutrqiyoeuuutwrwtoqrqyoeyoiporuuioiwryoeruypreprqroiyuqwtuyoytoerwqryeeripryieypiwqirtriurueypiuyuypriuiwptywppupoioyrewooytreteeriiwroietuwypieeeeeqpiiiwrirtppoeyiwpooyyporpruwuoriiyowuytiwpwpryeywotoyirqypyypoeptiuwwoyprquoetepptorwiewprpiywwtuieeiweytrrwiqtwotioryoiptyyyuriiqiyroeeiqepwteuwptpruuypipieuoiiuuweeuryuuowporrooyywyyrryriqyirooitirueruptotpryoqtipippyptiurwyiryooywtryyuurtrutwqiqiiiqwouyeooueoturuowiuwrtruwwiupwopwweoo'

a =. (((#o) % 2) , 2) $ ('qwertyuiop' i. o)
+/ |: (I. 1 = +/ |: =a) { ~.a

NB. Prints 9 0 9 7 2 6 5 3 8 3

NB.  My first ever J program!
NB.  Note: precedence is always right-to-left.

NB.  o:  the original string
NB.  the "i." operator is "index of", so (s i. o) is the index (in s) of each member of o
NB.  The # operator gives the size of the operand.
NB.  "%" is NOT modulus, but is actually division.  "/" would be Index or Table...
NB.  $ is the "shape" operator.  The left hand side is (422 2), so it reshapes
NB.    (s i. o) to a table of size (422 2).
NB.
NB.  So 'a' is
NB.     7 7
NB.     3 5
NB.     4 3
NB.      ...
NB.
NB.  For the last line, mostly reading right-to-left:
NB.        ~.a the "nub" of a: i.e. the unique elements in a
NB.           http://www.jsoftware.com/docs/help701/dictionary/d222.htm
NB.
NB.        =a "self classifies" a, that is, yields a table of "size nub a" by "size a"
NB.           of booleans, with a 1 where that nub element of a is equal to the
NB.           corresponding element of a.
NB.           http://www.jsoftware.com/docs/help701/dictionary/d000.htm
NB.
NB.        |:  transposes the right hand side
NB.
NB.        /   applies the left hand side between each element of the right hand side
NB.            so "+/ |: =a" sums the transpose of the self-classification of "a"
NB.            giving a count of how many times each element in the nub was seen.
NB.        1 = compares each element to 1 (vector comparison to scalar, with vector result, essentially)
NB.        I.  yields a list of indices of the argument that are equal to 1.
NB.
NB.        So (I. 1 = +/ |: =a) is a list of indices in the nub that only appear once.
NB.
NB.        {  "x { y" gives the xth element of y: essentially y[x] in most "normal" languages
NB.
NB.        So (I. 1 = +/ |: =a) { ~.a  is those elements in a that appear once (in order)
NB.           i.e.
NB.               5 4
NB.               0 0
NB.               4 5
NB.               3 4
NB.               1 1
NB.               4 2
NB.               3 2
NB.               2 1
NB.               5 3
NB.               1 2

NB.        |:  transpose that again
NB.        +/  insert sum between elements (sum across)


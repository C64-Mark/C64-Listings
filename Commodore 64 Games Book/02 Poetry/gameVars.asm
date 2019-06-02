;game variables
aj      byte    00
ajPtr   word    00
ajTxt   text    'sorrowful@      putrid@         boring@         ugly@           fat@            '
        text    'pathetic@       irritating@     tortuous@       dying@          stupid@         '
        text    'apathetic@      odourless@      enlightening@   plain@          thin@           '
        text    'ordinary@       calming@        hating@         living@         ignorant@       '
        text    'joyful@         scented@        interesting@    beautiful@      lean@           '
        text    'super@          exciting@       loving@         newly born@     intelligent@    '

av      byte    00
avPtr   word    00
avTxt   text    'sadly@          foully@         tirelessly@     clumsily@       noisily@        '
        text    'pathetically@   sharply@        @               painfully@      foolishly@      '
        text    'carelessly@     carefully@      effortlessly@   @               quietly@        '
        text    '@               cooly@          contemptuously@ easily@         @               '
        text    'happily@        sweetly@        easily@         gracefully@     @               '
        text    'superbly@       excitedly@      lovingly@       @               intelligently@  '

title   text    '** poetry **@'
fl      byte    00
mo      byte    00
i       byte    00
poemPtr byte    00
poemTxt text    'the % man # beguiled her@                       '
        text    'a % woman enchanted me with # blinking eyes@    '
        text    'in % keeping with her # vows@                   '
        text    'alas, she must % leave his # presence@          '
        text    'a breath of % air # rustled in the trees@       '
        text    'another % day # ended@                          '
        text    'the % hills marched # across the horizon@       '
        text    'and then:@                                      '
        text    'the % bell tolled # once again@                 '
        text    'the % # human arrived@                          '
        text    'life % dawned on the # universe@                '
ScnPos  byte    00
ChrPos  byte    00
WrdPos  byte    00

ScnAdr  =       $0003

;Global Variables
zpLow           = $00FB
zpHigh          = $00FC
zpLow2          = $00FD
zpHigh2         = $00FE

SCREENRAM       = $0400 ;1024 - start of screen ram

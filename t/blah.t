use base 'Test::Class';
use lib '../lib';

use Blah qw/to_uppercase remove_digits/;
use Test2::V0;

sub check_remove_digits : Tests {

    is remove_digits('mo6om09ooo2222'), 'moomooo',
        'numeric characters are remoooved';

    is remove_digits('winchester -20'), 'winchester -',
        'negative sign preserved';
}

sub check_to_uppercase : Tests {

    is to_uppercase('hello there'), 'HELLO THERE',
        'word characters';

    is to_uppercase('h3ll0 th#r3'), 'H3LL0 TH#R3',
        'mixed word & numeric';

}

Test::Class->runtests;


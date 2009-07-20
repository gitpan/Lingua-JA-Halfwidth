use strict;
use Test::Base;
use Lingua::JA::Halfwidth;
use utf8;

plan tests => 1 * blocks;

filters {
    i => [qw/lines chomp array do_test dumper/],
    e => [qw/lines chomp array to_num dumper/],
};

sub do_test {
    my $ra_data = shift;
    my @array;

    for (@$ra_data) {
        push @array, is_japanese_halfwidth($_);
    }
    return \@array;
}

sub to_num {
    my $ra_data = shift;
    return [ map { $_ += 0; $_ } @$ra_data ];
}

run_is i => 'e';

__END__
=== japanese halfwidth katakana
--- i
ｦ
ｧ
ｨ
ｩ
ｪ
ｫ
ｬ
ｭ
ｮ
ｯ
ｰ
ｱ
ｲ
ｳ
ｴ
ｵ
ｶ
ｷ
ｸ
ｹ
ｺ
ｻ
ｼ
ｽ
ｾ
ｿ
ﾀ
ﾁ
ﾂ
ﾃ
ﾄ
ﾅ
ﾆ
ﾇ
ﾈ
ﾉ
ﾊ
ﾋ
ﾌ
ﾍ
ﾎ
ﾏ
ﾐ
ﾑ
ﾒ
ﾓ
ﾔ
ﾕ
ﾖ
ﾗ
ﾘ
ﾙ
ﾚ
ﾛ
ﾜ
ﾝ
--- e
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
=== japanese halfwidth punctuation
--- i
｡
､
･
--- e
1
1
1
=== japanese halfwidth voice marks
--- i
ﾞ
ﾟ
--- e
1
1
=== japanese halfwidth bracket
--- i
｢
｣
--- e
1
1
=== other pattern in HalfwidthAndFullwidthForms
--- i
?
（
）
［
］
＾
｀
｛
｝
?
！
＂
＃
＄
％
＆
＇
＊
＋
，
－
．
／
０
１
２
３
４
５
６
７
８
９
：
；
＜
＝
＞
？
＠
Ａ
Ｂ
Ｃ
Ｄ
Ｅ
Ｆ
Ｇ
Ｈ
Ｉ
Ｊ
Ｋ
Ｌ
Ｍ
Ｎ
Ｏ
Ｐ
Ｑ
Ｒ
Ｓ
Ｔ
Ｕ
Ｖ
Ｗ
Ｘ
Ｙ
Ｚ
＼
＿
ａ
ｂ
ｃ
ｄ
ｅ
ｆ
ｇ
ｈ
ｉ
ｊ
ｋ
ｌ
ｍ
ｎ
ｏ
ｐ
ｑ
ｒ
ｓ
ｔ
ｕ
ｖ
ｗ
ｘ
ｙ
ｚ
｜
～
?
?
?
?
?
?
?
?
?
?
?
?
?
?
?
?
?
?
?
?
?
?
?
?
?
?
?
?
?
?
?
?
?
?
?
?
?
?
?
?
?
?
?
?
?
?
?
?
?
?
?
?
?
?
?
?
?
?
?
?
?
?
?
?
?
￠
￡
￢
￣
￤
￥
?
?
?
?
?
?
?
?
?
?
--- e
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0

#!/usr/bin/env perl

use strict;
use warnings;
use LWP::UserAgent;
use HTML::TreeBuilder;

#my $url = "http://www.excite.co.jp/News/90s/";
my $url = "https://twitter.com/tokubi_nagoya/s";
my $user_agent = "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10; rv:48.0)";
my $ua = LWP::UserAgent->new('agent' => $user_agent);
my $res = $ua->get($url);
my $content = $res->content;

my $tree = HTML::TreeBuilder->new;
   $tree->parse($content);

my @items = $tree->look_down('class','js-tweet-text-container');

print $_->as_text."\n" for @items;

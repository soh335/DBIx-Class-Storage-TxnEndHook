use strict;
use warnings;
use Test::More;
use lib qw(t/lib);

my $schema = MyApp::Schema->connect("dbi:SQLite::memory:", "", "", {
    sqlite_use_immediate_transaction => 1,
});

done_testing;

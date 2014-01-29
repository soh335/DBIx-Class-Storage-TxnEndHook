requires 'perl', '5.008001';
requires 'DBIx::Class';

on 'test' => sub {
    requires 'Test::More', '0.98';
    requires 'Test::Fatal';
    requires 'DBI';
    requires 'DBD::SQLite';
};


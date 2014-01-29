# NAME

DBIx::Class::Storage::TxnEndHook - It's new $module

# SYNOPSIS

    package MyApp::Schema;
    use parent 'DBIx::Schema';
    __PACKAGE__->ensure_class_loaded('DBIx::Class::Storage::TxnEndHook');
    __PACKAGE__->ensure_class_loaded('DBIx::Class::Storage::DBI');
    __PACKAGE__->inject_base('DBIx::Class::Storage::DBI', 'DBIx::Class::Storage::TxnEndHook');

    package main

    my $schema = MyApp::Schema->connect(...)
    $schema->txn_begin;
    $schema->add_txn_end_hook(sub { ... });
    $schema->txn_commit;

# DESCRIPTION

DBIx::Class::Storage::TxnEndHook is ...

# LICENSE

Copyright (C) soh335.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

# AUTHOR

soh335 <sugarbabe335@gmail.com>

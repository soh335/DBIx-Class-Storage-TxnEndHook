package t::lib::MyApp::Schema;
use warnings;

use parent 'DBIx::Class::Schema';
__PACKAGE__->storage->load_components('Storage::TxnEndHook');

package t::lib::MyApp::Schema::Table;

use strict;
use warnings;
use parent 'DBIx::Class::Core';

__PACKAGE__->table('table')
__PACKAGE__->add_columns(
    id   => {
        data_type         => 'INTEGER',
        is_nullable       => 0,
        is_auto_increment => 1,
    },
    name => {
        data_type   => 'VARCHAR',
        size        => 255,
        is_nullable => 0,
    },
);

1;

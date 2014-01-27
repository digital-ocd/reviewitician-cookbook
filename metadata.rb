name             'reviewitician'
maintainer       'Jeremy Ward'
maintainer_email 'jrmy.ward@gmail.com'
license          'All rights reserved'
description      'Installs/Configures reviewitician-cookbook'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '1.0.0'

depends 'postgresql'
depends "ocd_rackbox"
<!---
  Licensed to the Apache Software Foundation (ASF) under one
  or more contributor license agreements.  See the NOTICE file
  distributed with this work for additional information
  regarding copyright ownership.  The ASF licenses this file
  to you under the Apache License, Version 2.0 (the
  "License"); you may not use this file except in compliance
  with the License.  You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

  Unless required by applicable law or agreed to in writing,
  software distributed under the License is distributed on an
  "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
  KIND, either express or implied.  See the License for the
  specific language governing permissions and limitations
  under the License.
-->

# ADBC Apache Arrow Flight SQL Driver for Python

This package contains bindings for the [Golang Apache Arrow Flight SQL
driver](../../go/adbc/driver/flightsql), using the [driver
manager](../adbc_driver_manager/README.md) to provide a [DBAPI 2.0/PEP
249-compatible][dbapi] interface on top.

[dbapi]: https://peps.python.org/pep-0249/

## Building

Dependencies: a build of the Apache Arrow Flight SQL driver, and the
`adbc-driver-manager` Python package.  Optionally, install PyArrow to
use the DBAPI 2.0-compatible interface.

Set the environment variable `ADBC_FLIGHTSQL_LIBRARY` to the path to
`libadbc_driver_flightsql.{dll,dylib,so}` before running `pip install`.

```
# If not already installed
pip install -e ../adbc_driver_manager

export ADBC_FLIGHTSQL_LIBRARY=/path/to/libadbc_driver_flightsql.so
pip install -e --no-deps .
```

See [CONTRIBUTING.md](../../CONTRIBUTING.md) for details on the
general build process.

## Testing

To run the tests, use pytest:

```shell
$ pytest -vvx
```

See [CONTRIBUTING.md](../../CONTRIBUTING.md) for details on the
general test process.

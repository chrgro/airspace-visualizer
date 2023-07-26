# Airspace Visualizer

chrgro:
Modified to be able to show Points of each airspace section, as well
as clicking on them in sequence to generate new openair airspace definitions.

Original:
https://airspaces.bargen.dev/

This webapplication can visualize airspaces in OpenAir format, for example as
used by Skytraxx devices.

The implementation is done using Rust and WebAssembly. The parsing of the
OpenAir files is handled by [openair-rs](https://github.com/dbrgn/openair-rs).
Map data is provided by Mapbox / OpenStreetMap.


## Building

Prerequisite: wasm-pack.

    cargo install wasm-pack

Prerequisite: npm.

To build the WebAssembly sources:

    wasm-pack build  # debug mode, or...
    wasm-pack build --release  # release mode

To run tests:

    wasm-pack test --headless --firefox

To set up the frontend:

    cd pkg
    npm link
    cd ../www
    npm install
    npm link airspace-visualizer
    cd ..

Start the dev server:

    make dev

Now the frontend should be running at `localhost:8080`.


## License

Licensed under the AGPL version 3 or later. See `LICENSE.md` file.

    Copyright (C) 2019-2022 Danilo Bargen

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU Affero General Public License as
    published by the Free Software Foundation, either version 3 of the
    License, or (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU Affero General Public License for more details.

    You should have received a copy of the GNU Affero General Public License
    along with this program.  If not, see <https://www.gnu.org/licenses/>.

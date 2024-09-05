# Zen Browser XBPS Package

This repository contains files for packaging Zen Browser for Void Linux using the XBPS package manager.

## Files

1. `template`: XBPS template file for Zen Browser
2. `files/update-template.sh`: Script to update the Zen Browser XBPS template

## Template File

The `template` file is an XBPS template for Zen Browser.

- Architecture: x86_64 only
- Build style: precompiled binaries
- Maintainer: SalahDin Rezk <salah2112004@gmail.com>

The template file handles the installation of precompiled binaries and sets up the necessary dependencies.

### Installation

To install the Zen Browser package:

1. Clone the Void Packages repository:
   ```sh
   git clone https://github.com/salastro/zen-browser.git
   ```
2. Copy the directory to the `srcpkgs/zen-browser` directory in your Void Packages repository:
   ```sh
   cp -rf zen-browser /path/to/void-packages/srcpkgs/
   ```
3. Build the package:
   ```sh
   ./xbps-src pkg zen-browser
   ```
4. Install the package:
   ```sh
   sudo xbps-install --repository=hostdir/binpkgs zen-browser
   ```
5. Run Zen Browser:
   ```sh
   zen
   ```
6. Enjoy!

* You can also install using `vpsm` instead of (3) and (4):
   ```sh
   vpsm install zen-browser
   ```

## Update Script

The `update-template.sh` script automates the process of updating the Zen Browser XBPS template. It performs the following tasks:

1. Fetches the latest release version from the Zen Browser GitHub repository
2. Updates the version in the template file
3. Updates the checksums
4. Installs the updated Zen Browser package

### Prerequisites

To use the update script, you need:

- vpsm
- xbps-src
- curl
- sed
- sh

You must also set the `XBPS_DISTDIR` environment variable to point to your Void Packages directory.

Example:
```sh
export XBPS_DISTDIR="$HOME/.void-packages"
```

### Usage

To update the Zen Browser package:

1. Ensure you have met all prerequisites
2. Run the update script:
   ```sh
   chmod +x files/update-template.sh
   ./files/update-template.sh
   ```

## Contributing

If you want to contribute to this package, please make sure to test your changes thoroughly before submitting a pull request.

## Issues

If you encounter any issues with the package or the update script, please open an issue in this repository.

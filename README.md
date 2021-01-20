# TWRP Device configuration for Motorola One Zoom

## CRITICAL : Does not include display and touch support, please use /sbin/twrp in adb shell to complete the flashing operation

## Device specifications

Basic   | Spec Sheet
-------:|:-------------------------
CPU     | Allwinner B300
Memory  | 2 GB
Shipped Android Version | 8.1 (Oreo)
Storage | 32GB

### Kernel Source

From Prebuile Recoveryimage

### How to compile

```sh
. build/envsetup.sh
export LC_ALL=C
lunch omni_parker-eng
make -j4 recoveryimage
```


### Copyright
 ```
  /*
  *  Copyright (C) 2013-21 The OmniROM Project
  *
  * This program is free software: you can redistribute it and/or modify
  * it under the terms of the GNU General Public License as published by
  * the Free Software Foundation, either version 3 of the License, or
  * (at your option) any later version.
  *
  * This program is distributed in the hope that it will be useful,
  * but WITHOUT ANY WARRANTY; without even the implied warranty of
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  * GNU General Public License for more details.
  *
  * You should have received a copy of the GNU General Public License
  * along with this program.  If not, see <http://www.gnu.org/licenses/>.
  *
  */
  ```# TWRP Device configuration for Motorola One Zoom

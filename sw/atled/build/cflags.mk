# cflags.mk
# Copyright (C) 2021 Vladimir Roncevic <elektron.ronca@gmail.com>
#
# atled is free software: you can redistribute it and/or modify it
# under the terms of the GNU General Public License as published by the
# Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# atled is distributed in the hope that it will be useful, but
# WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
# See the GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License along
# with this program_name. If not, see <http://www.gnu.org/licenses/>.

CFLAGS := \
	-Wl,-Map,atled.map \
	-mmcu=atmega328p

CCFLAGS := \
	-Wall \
	-g2 \
	-gstabs \
	-O2 \
	-fpack-struct \
	-fshort-enums \
	-ffunction-sections \
	-fdata-sections \
	-std=gnu99 \
	-funsigned-char \
	-funsigned-bitfields \
	-save-temps \
	-mmcu=atmega328p \
	-DF_CPU=16000000UL \
	-MMD \
	-MP \
	-MF


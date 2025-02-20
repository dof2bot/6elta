# subdir.mk
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

include tools.mk
include cflags.mk

C_SRCS += \
../main.c

OBJS += \
./main.o

C_DEPS += \
./main.d

%.o: ../%.c
	@echo 'Building file: $<'
	@echo 'Invoking: AVR Compiler'
	$(CC) $(CCFLAGS) "$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


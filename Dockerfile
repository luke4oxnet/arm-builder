FROM alpine:3.17
# ...
#RUN apk add --update --no-cache scons gcc-riscv-none-elf
RUN apk add --update --no-cache python3 gcc python3-dev linux-headers musl-dev gcc-arm-none-eabi newlib-arm-none-eabi && ln -sf python3 /usr/bin/python
#RUN rm /usr/lib/python3.11/EXTERNALLY-MANAGED
RUN python3 -m ensurepip
RUN python3 -m pip install scons==4.4.0 requests psutil


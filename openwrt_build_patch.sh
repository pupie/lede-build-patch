sed -i "s/0x7c0000/0xf80000/g" `grep -rl "0x7c0000" ../openwrt/tools/firmware-utils/src/mktplinkfw.c`
sed -i "s/0x3c0000/0xf80000/g" `grep -rl "0x3c0000" ../openwrt/tools/firmware-utils/src/mktplinkfw.c`
cp ./999-openvpn-2.4.4-xor-patch.patch ../openwrt/package/network/services/openvpn/patches/
sed -i '/x509_username_field/a\scramble' ../openwrt/package/network/services/openvpn/files/openvpn.options

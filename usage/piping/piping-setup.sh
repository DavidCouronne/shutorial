#! /bin/sh

# THIS SCRIPT WAS GENERATED, DO NOT EDIT
# Real source: piping-setup.sharin

if grep -q '# fr_FR.UTF-8 UTF-8' /etc/locale.gen ; then
   apt update; apt -y install locales manpages-fr) 2>/dev/null >/dev/null
   sed -i -e 's/# fr_FR.UTF-8 UTF-8/fr_FR.UTF-8 UTF-8/' /etc/locale.gen
   dpkg-reconfigure --frontend=noninteractive locales
   update-locale LANG=fr_FR.UTF-8
fi


# KCCLEAN
cd; rm -rf *

touch OK

# KCINCLUDE plus.sh /root
if which uuencode >/dev/null 2>/dev/null ; then :; else apt install sharutils 2>/dev/null >/dev/null; fi
uudecode << 'KCINCLUDE_EOF' > /root/plus.sh &&
begin-base64 644 -
IyEgL2Jpbi9zaAoKZWNobyAiRW50cmV6IGRldXggbm9tYnJlcyBzw6lwYXLD
qXMgcGFyIHVuZSBlc3BhY2U6ICIKcmVhZCBhIGIKCmlmIGVjaG8gJGEgJGIg
fCBncmVwIC1xICdbXls6ZGlnaXQ6XVs6c3BhY2U6XV0nIDsgdGhlbgogIGVj
aG8gIlZldWlsbGV6IG4ndXRpbGlzZXIgcXVlIGRlcyBjaGlmZnJlcy4iID4m
MgplbHNlCiAgZWNobyAiTGUgcsOpc3VsdGF0IGVzdDogIgogIGVjaG8gJCgo
YSArIGIpKQpmaQo=
====
KCINCLUDE_EOF
chmod 0755 /root/plus.sh
# End of KCINCLUDE plus.sh

# KCINCLUDE animaux /root
uudecode << 'KCINCLUDE_EOF' > /root/animaux &&
begin-base64 644 -
esOpYnUKZGluZG9uCmJ1c2UKYmlzb24KY291bGV1dnJlCmJvZXVmCmhpcm9u
ZGVsbGUKc2FuZ2xpZXIKanVtZW50CnZpcMOocmUKcG91c3NpbgpsYW1hCmd1
w6lwYXJkCm9ybml0aG9yeW5xdWUKdGhvbgpkcm9tYWRhaXJlCnBpZXV2cmUK
w6ljdXJldWlsCm1vdWV0dGUKbXlnYWxlCm9pZQpwdWNlCm1vdWxlCnJvc3Np
Z25vbApoaWJvdQpsb3V0cmUKdmFjaGUKbGliZWxsdWxlCmx5bngKbcOpcm91
CnB5dGhvbgpkb2RvCmNhbmFyZApnaXJhZmUKY2VyZgpwb3Vzc2luCmjDqXJp
c3NvbiAKbXlnYWxlCmNvbmRvcgpncmVub3VpbGxlCmxpbWFjZQptb2luZWF1
Cm9ybml0aG9yeW5xdWUKc2VycGVudApiYWxlaW5lCmNyaXF1ZXQKYWxsaWdh
dG9yCm3DqXJvdQpob21hcmQKbXVyw6huZQppZ3VhbmUKY29jaG9uCnBob3F1
ZQpow6lyb24KbGlvbgpmbGFtYW50CmJpY2hlCmNvdWNvdQpow6lyaXNzb24g
CmNoaW1wYW56w6kKc2NhcmFiw6llCmZhdWNvbgpsw6l6YXJkCmd1w6lwYXJk
CmxpbWFjZQpnbm91CmJvdXJkb24KbXVyw6huZQpvcnF1ZQphbGxpZ2F0b3IK
aGFtc3Rlcgpjb2xpYnJpCnJoaW5vY8Opcm9zCmJhbGVpbmUKbHlueApjcmFw
YXVkCnRhbWFub2lyCmNoaW1wYW56w6kKdG91Y2FuCnNpbmdlCmthbmdvdXJv
dQpqdW1lbnQKY2Ftw6lsw6lvbgpjYW5hcmQKc2NhcmFiw6llCm1vdWV0dGUK
bG91cApjYWNoYWxvdApib3VjCm3DqWR1c2UKY29xCnBhbmRhCmRvZG8Kw6lw
ZXJ2aWVyCmNoaWVuCmhhbXN0ZXIKZGF1cGhpbgpodcOudHJlCnRhbWFub2ly
Cm1vdXRvbgphc3RpY290CmxpY29ybmUKcG91bGV0CnBob3F1ZQprYW5nb3Vy
b3UKY29uZG9yCm3DqXNhbmdlCnNvdXJpcwpzY29ycGlvbgpsb3VwCnBvbmV5
Cmp1bWVudAp0YXVyZWF1CnRhdXBlCm9ycXVlCmNoYW1lYXUKcMOpbGljYW4K
YW50aWxvcGUKZGF1cGhpbgpsw6lvcGFyZAphbG91ZXR0ZQpjaGV2YXV4CsOp
cGVydmllcgpiaXNvbgpjYWZhcmQKY29jY2luZWxsZQpzYXJkaW5lCmxpw6h2
cmUKdmVhdQpwaMOpbml4CnBvdWxldApseW54CmVzcGFkb24Kc3BoaW54CnRh
dXJlYXUKcG9uZXkKYm9ldWYKbMOpb3BhcmQKcMOpbGljYW4KdG91cnRlcmVs
bGUKYW50aWxvcGUKdGlncmUKecOpdGkKcm9zc2lnbm9sCmdlYWkKY2FsYW1h
cgphbGxpZ2F0b3IKbmFydmFsCnRvdWNhbgphaWdsZQpoaXBwb2NhbXBlCmhv
bWFyZApndcOpcGFyZApjcmV2ZXR0ZQplc3BhZG9uCm1vdWNoZQpsb3V0cmUK
cGFwaWxsb24KbG91dmUKY2hpZW4KY2hhdApjaGV2YWwKY29sb21iZQpzZXJw
ZW50CmphZ3VhcgrDom5lCmJvdXJkb24Kc2F1bW9uCnRvcnR1ZQptYWNhcXVl
CnnDqXRpCm9ycXVlCmNhbmFyZApnZWFpCmd1w6lwYXJkCm1lcmxlCmNyaXF1
ZXQKY2jDqHZyZQpsb3V0cmUKbXVsb3QKcGllCnBpZXV2cmUKZ3Vlbm9uCmd1
w6lwYXJkCsOpdGFsb24Kc2F1bW9uCmxvdXAKaGlyb25kZWxsZQpsYW1hCmNp
Z29nbmUKY29sb21iZQpib3VjCnBob3F1ZQpnb3JpbGxlCnRvdXJ0ZXJlbGxl
Cm3DqXNhbmdlCmdub3UKbXVsb3QKY3JpcXVldApiaXNvbgphbGJhdHJvcwpo
w6lyaXNzb24gCnBvdWxlCmNhbmFyZApwaWUKesOoYnJlCm3DqXNhbmdlCnZh
Y2hlCmRvZG8Kdmlww6hyZQpndWVub24Kc2NvcnBpb24Kcmhpbm9jw6lyb3MK
w6l0YWxvbgp0aG9uCnNhcmRpbmUKbW91ZXR0ZQphdXRydWNoZQpnbm91CnRl
cm1pdGUKZm91cm1pCnRvdWNhbgptb3JzZQpwaG9xdWUKb3VycwpzYXV0ZXJl
bGxlCnNhcmRpbmUKYWxsaWdhdG9yCmhvbWFyZAptw6lyb3UKcG91bGUKdmVh
dQpkb2RvCmxhbmdvdXN0ZQpjZXJmCm91aXN0aXRpCmNvbmRvcgpjaG91ZXR0
ZQptb3VldHRlCmN5Z25lCmxvbWJyaWMKdGFtYW5vaXIKw6lsw6lwaGFudApw
b3JjCmxhcGluCmVzY2FyZ290Cm91aXN0aXRpCm3DqWR1c2UKb3JxdWUKbXVy
w6huZQprb2FsYQp0b3VjYW4KcGFudGjDqHJlCm91cnMKbGlvbgphcmEKY29j
Y2luZWxsZQpjeWduZQpjb25kb3IKcG9yYwptdXNhcmFpZ25lCmRhdXBoaW4K
b3RhcmllCnBhb24KbG9tYnJpYwpiaWNoZQphcmEKbG91cApib3VjCnBpZ2Vv
bgrDqWzDqXBoYW50CnRvcnR1ZQpicmViaXMKbGFwaW4KbHlueAptb3VzdGlx
dWUKY2FsYW1hcgpyYXQKZ3XDqnBlCmxpb24KZ2lib24KcMOpbGljYW4KYnVm
ZmxlCnBhbnRow6hyZQp0cnVpZQrDqWxhbgptb3VzdGlxdWUKcGjDqW5peApz
Y29ycGlvbgpzb3VyaXMKY3JvY29kaWxlCmxhbWEKYWduZWF1CnJlcXVpbgpj
aGllbgptYXJtb3R0ZQrDom5lCmNhc3RvcgpjYWxhbWFyCnlhY2sKY2FuYXJp
CmxvdXZlCmJlbGV0dGUKbWFuY2hvdApnaWJvbgpib2EKY29yYmVhdQphaWds
ZQp2ZWF1CnBlcnJvcXVldApidWZmbGUKZG9kbwpwdWNlCnRydWllCm9ycXVl
CmNyb2NvZGlsZQpzYXVtb24KeWFjawrDom5lCnBpbmdvdWluCmhpcHBvcG90
YW1lCmxvdXRyZQpyZXF1aW4KYWduZWF1CmNhbmFyaQphaWdsZQp0YXBpcgpt
YWNhcXVlCnRvdWNhbgpmbGFtYW50CnZhdXRvdXIKY29jaG9uCmNvbGlicmkK
cmVuYXJkCnRhdXJlYXUKYWJlaWxsZQp6w6hicmUKYXJhaWduw6llCnRpZ3Jl
CnJhcGFjZQp6w6lidQpjcmlxdWV0CmJ1c2UKdG91cnRlcmVsbGUKaGlwcG9w
b3RhbWUKYm9ldWYKcGlnZW9uCmNpZ29nbmUKdG9ydHVlCmNyYXBhdWQKcG91
CsOpcGF1bGFyZApwYW5kYQpkcmFnb24KZXNwYWRvbgpkcm9tYWRhaXJlCnNh
dXRlcmVsbGUKY3JhYmUKesOoYnJlCm1hbmNob3QKYXJhaWduw6llCmdub3UK
bW91bGUK
====
KCINCLUDE_EOF
chmod 0644 /root/animaux
# End of KCINCLUDE animaux


# KCINCLUDE piping-check.sh /usr/local/bin
uudecode << 'KCINCLUDE_EOF' > /usr/local/bin/piping-check.sh &&
begin-base64 644 -
IyEgL2Jpbi9zaAoKIyBUSElTIFNDUklQVCBXQVMgR0VORVJBVEVELCBETyBO
T1QgRURJVAojIFJlYWwgc291cmNlOiBwaXBpbmctY2hlY2suc2hhcmluCgoo
YXB0IHVwZGF0ZTsgYXB0IC15IGluc3RhbGwgbG9jYWxlcyBtYW5wYWdlcy1m
cikgMj4vZGV2L251bGwgPi9kZXYvbnVsbApzZWQgLWkgLWUgJ3MvIyBmcl9G
Ui5VVEYtOCBVVEYtOC9mcl9GUi5VVEYtOCBVVEYtOC8nIC9ldGMvbG9jYWxl
LmdlbgpkcGtnLXJlY29uZmlndXJlIC0tZnJvbnRlbmQ9bm9uaW50ZXJhY3Rp
dmUgbG9jYWxlcwp1cGRhdGUtbG9jYWxlIExBTkc9ZnJfRlIuVVRGLTgKCgpp
ZiBbIC1lIGFuaW1hdXgub2sgXcKgOyB0aGVuCiAgIyBLQ0NPTU1BTkQgb3V0
IHNvcnQgLXUgYW5pbWF1eCB8IGRpZmYgLXUgYW5pbWF1eC5vayAtCmlmIHdo
aWNoIHV1ZW5jb2RlID4vZGV2L251bGwgMj4vZGV2L251bGwgOyB0aGVuIDo7
IGVsc2UgYXB0IGluc3RhbGwgc2hhcnV0aWxzIDI+L2Rldi9udWxsID4vZGV2
L251bGw7IGZpCnV1ZGVjb2RlIDw8ICdLQ0NPTU1BTkRfRU9GJyA+IC90bXAv
LmNtZCAmJgpiZWdpbi1iYXNlNjQgNjQ0IC0KYzI5eWRDQXRkU0JoYm1sdFlY
VjRJSHdnWkdsbVppQXRkU0JoYm1sdFlYVjRMbTlySUMwS0NnPT0KPT09PQpL
Q0NPTU1BTkRfRU9GCm91dD0kKHNoIC90bXAvLmNtZCkKIyBFbmQgb2YgS0ND
T01NQU5ECgoKICBpZiBbICQ/IC1lcSAwIF0gOyB0aGVuCiAgICBlY2hvICJG
w6lsaWNpdGF0aW9ucywgbGEgcXVlc3Rpb24gMSBlc3QgcsOpdXNzaWUuIgog
IGVsc2UKICAgIGVjaG8gIk91cHMsIHZvdHJlIGZpY2hpZXIgYW5pbWF1eC5v
ayBuJ2EgcGFzIGxlIGJvbiBjb250ZW51LiBEaWZmw6lyZW5jZSBjb25zdGF0
w6llOiIKICAgIGVjaG8gIiRvdXQiCiAgICBleGl0IDEgICAgCiAgZmkKZWxz
ZQogIGVjaG8gIk91cHMsIHZvdXMgbidhdmV6IHBhcyBmYWl0IGxhIHF1ZXN0
aW9uIDEgKGxlIGZpY2hpZXIgYW5pbWF1eC5vayBlc3QgaW50cm91dmFibGUp
LiIKICBleGl0IDEKZmkgCgppZiBbIC1lIGxpZ25lMzMgXcKgOyB0aGVuCiAg
IyBLQ0NPTU1BTkQgb3V0IHNvcnQgLXUgYW5pbWF1eCB8aGVhZCAtbiAzMyB8
dGFpbCAtbiAxIHwgZGlmZiAtdSBsaWduZTMzIC0KdXVkZWNvZGUgPDwgJ0tD
Q09NTUFORF9FT0YnID4gL3RtcC8uY21kICYmCmJlZ2luLWJhc2U2NCA2NDQg
LQpjMjl5ZENBdGRTQmhibWx0WVhWNElIeG9aV0ZrSUMxdUlETXpJSHgwWVds
c0lDMXVJREVnZkNCa2FXWm0KSUMxMUlHeHBaMjVsTXpNZ0xRb0sKPT09PQpL
Q0NPTU1BTkRfRU9GCm91dD0kKHNoIC90bXAvLmNtZCkKIyBFbmQgb2YgS0ND
T01NQU5ECgoKICBpZiBbICQ/IC1lcSAwIF0gOyB0aGVuCiAgICBlY2hvICJG
w6lsaWNpdGF0aW9ucywgbGEgcXVlc3Rpb24gMiBlc3QgcsOpdXNzaWUuIgog
IGVsc2UKICAgIGVjaG8gIk91cHMsIHZvdHJlIGZpY2hpZXIgbGlnbmUzMyBu
J2EgcGFzIGxlIGJvbiBjb250ZW51LiBEaWZmw6lyZW5jZSBjb25zdGF0w6ll
OiIKICAgIGVjaG8gIiRvdXQiCiAgICBleGl0IDEKICBmaQplbHNlCiAgZWNo
byAiT3Vwcywgdm91cyBuJ2F2ZXogcGFzIGZhaXQgbGEgcXVlc3Rpb24gMiAo
bGUgZmljaGllciBsaWduZTMzIGVzdCBpbnRyb3V2YWJsZSkuIgogIGV4aXQg
MQpmaSAKCmVjaG8gImRvbmUiCnJtIC1mIC90bXAvLmNtZAoKZWNobyBkb25l
ID4gL3RtcC8ua2F0YWNvZGEtZmluaXNoZWQK
====
KCINCLUDE_EOF
chmod 0755 /usr/local/bin/piping-check.sh
# End of KCINCLUDE piping-check.sh


rm -f /tmp/.cmd

echo done > /tmp/.katacoda-finished

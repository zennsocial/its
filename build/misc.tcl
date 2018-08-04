respond "*" ":kill\r"

# ngame
respond "*" ":midas games;ts game_ejs;ngame\r"
respond "Star Trek: " "ts,trek,games\r"
respond "Adventure (2): " "ts,adv448,games\r"
respond "Adventure (1.5): " "ts,adv350,games\r"
expect ":KILL"
respond "*" ":link sys3;ts game,games;ts game\r"
respond "*" ":link info;o.info,_info_;\r"

# guess
respond "*" ":midas games;ts guess_games;guess\r"
expect ":KILL"

# ten50
respond "*" ":midas sys3;ts ten50_mrc; ten50\r"
expect ":KILL"

# who%
respond "*" ":midas sys1;ts who%_sysen3;who%\r"
expect ":KILL"
respond "*" ":link sys1;ts %,sys1;ts who%\r"

# palx
respond "*" ":midas sys;ts palx_sysen1;palx\r"
expect ":KILL"

# Phil Budne's PALX Game of Life.
respond "*" ":cwd budd\r"
respond "*" ":palx live palx\r"

# Cookie Bear
respond "*" ":midas gls; ts check_gls; check\r"
respond "DEBUGP==" "0\r"
respond "ITEM:" "COOKIE\r"
respond "SUBJECT:" "COOKIE\r"
respond "NAME:" "BEAR\r"
expect ":KILL"

# itsdev
respond "*" ":link syseng;chsdef 999999,system;chsdef >\r"
respond "*" ":midas device;chaos itsdev_bawden;itsdev\r"
expect ":KILL"

# charfc/charfs
respond "*" ":midas sys1;ts charfc_sysen3;charfc\r"
expect ":KILL"
respond "*" ":link sys1;ts charfs,sys1;ts charfc\r"

# file
respond "*" ":midas device;chaos file_syseng;file\r"
expect ":KILL"

# filei, fileo
respond "*" ":midas device;chaos filei_eak;file\r"
expect ":KILL"
respond "*" ":link device;chaos fileo,device;chaos filei\r"

# ifile
respond "*" ":midas device;chaos ifile_syseng;ifile\r"
expect ":KILL"

# 11sim
respond "*" ":midas /t sys1;ts pdp11_syseng;11sim\r"
respond "end input with ^C" "45p==0\r"
respond "\n" "\003"
expect ":KILL"
respond "*" ":midas sys;ts pdp45_syseng;11sim\r"
expect ":KILL"

# times
respond "*" ":midas sysbin;times bin_sysnet;times\r"
expect ":KILL"
respond "*" ":link sys1;ts ctimes,sysbin;times bin\r"
respond "*" ":link sys1;ts times,sysbin;times bin\r"

# idle
respond "*" ":midas sys1;ts idle_gren;idle\r"
expect ":KILL"

# spell
respond "*" ":midas sys1;ts spell_syseng;spell\r"
expect ":KILL"
respond "*" ":link sys1;ts espell,sys1;ts spell\r"

# jobs
respond "*" ":midas sys2;ts jobs_sysen1;jobs\r"
expect ":KILL"

# hsndev
respond "*" ":midas device;jobdev hsname_sysen1;hsndev\r"
expect ":KILL"
respond "*" ":link device;jobdev hs,device;jobdev hsname\r"
respond "*" ":link device;jobdev hf,device;jobdev hsname\r"

# pr
respond "*" ":midas sys1;ts pr_sysen1;pr\r"
expect ":KILL"
respond "*" ":link sys1;ts call,sys1;ts pr\r"
respond "*" ":link sys1;ts .call,sys1;ts pr\r"
respond "*" ":link sys1;ts uuo,sys1;ts pr\r"
respond "*" ":link sys1;ts uset,sys1;ts pr\r"
respond "*" ":link sys1;ts suset,sys1;ts pr\r"
respond "*" ":link sys1;ts doc,sys1;ts pr\r"
respond "*" ":link sys1;ts intrup,sys1;ts pr\r"
respond "*" ":link sys1;ts ttyvar,sys1;ts pr\r"

respond "*" ":link .info.;its .calls,sysdoc;.calls >\r"
respond "*" ":link .info.;its uuos,sysdoc;uuos >\r"
respond "*" ":link .info.;its usets,sysdoc;usets >\r"
respond "*" ":link .info.;its %pi,sysdoc;%pi >\r"
respond "*" ":link .info.;its ttyvar,sysdoc;ttyvar >\r"

# inline
respond "*" ":midas sys2;ts inline_sysen1;inline\r"
expect ":KILL"

# init
respond "*" ":midas sys3;ts init_sysen2;init\r"
expect ":KILL"

# scandl
respond "*" ":midas sys3;ts scandl_sysen1;scandl\r"
expect ":KILL"

# os
respond "*" ":midas sys1;ts os_sysen2;os\r"
expect ":KILL"

# sn
respond "*" ":midas sys2;ts sn_sysen3;sn\r"
expect ":KILL"

# ttyswp
respond "*" ":midas sys;ts ttyswp_sysen3;ttyswp\r"
expect ":KILL"

# argus
respond "*" ":midas sys2;ts argus_sysen2;argus\r"
expect ":KILL"

# fretty
respond "*" ":midas sys3;ts fretty_sysen2;fretty\r"
expect ":KILL"

# bye
respond "*" ":midas sys1;ts bye_sysen1;bye\r"
expect ":KILL"
respond "*" ":link device;chaos bye,sys1;ts bye\r"

# @
respond "*" ":midas sys;ts @_sysen1;@\r"
expect ":KILL"

# PLAN/CREATE
respond "*" ":midas sys3;ts create_syseng;create\r"
expect ":KILL"
respond "*" ":link sys1;ts plan,sys3;ts create\r"

respond "*" ":midas /t dsk0:.;@ pt_syseng;pt\r"
respond "with ^C" "pi==4\r"
respond "\n" "tty==120\r"
respond "\n" "ptr==104\r"
respond "\n" "\003"
expect ":KILL"

# PTY
respond "*" ":midas sys1;ts pty_sysen1;pty\r"
expect ":KILL"

# PRUFD
respond "*" ":midas sysbin;prufd bin_sysen2;prufd\r"
expect ":KILL"

# patch PRUFD to use the TTY: device rather than the LPT: device
respond "*" ":job prufd\r"
respond "*" ":load sysbin;prufd bin\r"
respond "*" "nlinks+14/ A,,646471\r"
type ":pdump sys1;ts prufd\r"
respond "*" ":kill\r"

# udir
respond "*" ":midas sys3;ts nudir_sysen3; nudir\r"
expect ":KILL"

# STY
respond "*" ":midas sys1;ts sty_sysen2;sty\r"
expect ":KILL"

# luser
respond "*" ":midas sysbin;luser bin_syseng;luser\r"
expect ":KILL"
respond "*" ":link sys1;ts luser,sysbin;luser bin\r"

# ARCCPY
respond "*" ":midas sys2;ts arccpy_sysen2;arccpy\r"
expect ":KILL"

# CALPRT
respond "*" ":midas sys2;ts calprt_sysen2;calprt\r"
expect ":KILL"

# HOSTAB
respond "*" ":midas sys2;ts hostab_sysen1;hostab\r"
expect ":KILL"

# LSPEED
respond "*" ":midas sys1;ts lspeed_syseng;lspeed\r"
expect ":KILL"

# PROBE
respond "*" ":link syseng;its defs,sys;itsdfs >\r"
respond "*" ":midas sysbin;probe bin_bawden;probe\r"
expect ":KILL"
# note: setting debug to 0 and running causes it to pdump itself to
#  sys;ts probe
respond "*" ":job probe\r"
respond "*" ":load sysbin;probe bin\r"
respond "*" "debug/0\r"
type "\033g"
respond "*" ":link sys;ts pb,sys;ts probe\r"

# TTY
respond "*" ":midas sys1;ts tty_sysen1;tty\r"
expect ":KILL"

# RIPDEV
respond "*" ":midas device;atsign r.i.p._sysen2;ripdev\r"
expect ":KILL"

# GMSGS
respond "*" ":midas sys2;ts gmsgs_sysen1;gmsgs\r"
expect ":KILL"
respond "*" ":link sys2;ts expire, sys2;ts gmsgs\r"
respond "*" ":link dragon;daily expire,sys2;ts gmsgs\r"

# X, Y, Z
respond "*" ":midas sys1;ts x_sysen2;x\r"
expect ":KILL"
respond "*" ":link sys1;ts y,sys1;ts x\r"
respond "*" ":link sys1;ts z,sys1;ts x\r"

# LOADP
respond "*" ":midas sys2;ts loadp_sysen1;loadp\r"
expect ":KILL"

# ACCLNK
respond "*" ":midas sys2;ts acclnk_sysen2;acclnk\r"
expect ":KILL"

# MSPLIT
respond "*" ":midas sys2;ts msplit_sysen2;msplit\r"
expect ":KILL"

# CHATST
respond "*" ":midas sys2;ts chatst_sysen3;chatst\r"
expect ":KILL"

# STYLOG
respond "*" ":midas sys2;ts stylog_sysen1;stylog\r"
expect ":KILL"

# COMIFY
respond "*" ":midas sys2;ts comify_sysen3;comify\r"
expect ":KILL"

# CRC
respond "*" ":midas sys3;ts crc_gren; crc\r"
expect ":KILL"

# TMPKIL
respond "*" ":midas sys2;ts tmpkil_syseng;tmpkil\r"
expect ":KILL"
respond "*" ":link dragon;hourly tmpkil,sys2;ts tmpkil\r"

# WHAT
respond "*" ":midas sys2;ts what_syseng;what\r"
expect ":KILL"

# Build KCC support programs: EXECVT, GETSYM, and 20XCSV.
respond "*" ":midas sys2;ts execvt_sysen3;execvt\r" 
expect ":KILL"
respond "*" ":midas kcc;ts getsym_getsym\r"
expect ":KILL"
respond "*" ":midas kcc;ts 20xcsv_20xcsv\r"
expect ":KILL"

# Run GETSYM to get all monitor symbols.
respond "*" ":cwd kcc\r"
respond "*" ":getsym\r"
expect ":KILL"

# UP
respond "*" ":midas sys1;ts up_sysen1;up\r"
expect ":KILL"
respond "*" ":link sys1;ts down, sys1;ts up\r"

# UPTIME
respond "*" ":midas sysbin;uptime bin_sysen1;uptime\r"
expect ":KILL"
respond "*" ":link dragon;hourly uptime,sysbin;uptime bin\r"

# SHUTDN
respond "*" ":midas sys3;ts shutdn_bawden;shutdn\r"
expect ":KILL"

# HEXIFY
respond "*" ":midas sys2;ts hexify_sysen3;hexify\r"
expect ":KILL"

# PHOTO
respond "*" ":midas sys2;ts photo_sysen2;photo\r"
expect ":KILL"

# TYPE8
respond "*" ":midas sys;ts type8_sysen3;type8\r"
expect ":KILL"

# USQ
respond "*" ":midas sys2;ts usq_sysen3;usq\r"
expect ":KILL"
respond "*" ":link sys2;ts typesq,sys2;ts usq\r"

# SCRAM
respond "*" ":midas sys2;ts scram_rwk;scram\r"
expect ":KILL"

# HOST
respond "*" ":midas sys3;ts host_sysnet;host\r"
expect ":KILL"

# EXPN/VRFY
respond "*" ":midas sys3;ts expn_sysnet;expn\r"
expect ":KILL"
respond "*" ":link sys3;ts vrfy,sys3;ts expn\r"

# WHOLIN
respond "*" ":midas sys2;ts wholin_sysen2;wholin\r"
expect ":KILL"

# VTTIME
respond "*" ":midas sys1;ts vttime_rvb;vttime\r"
expect ":KILL"

# DEVICE; CHAOS TIME
respond "*" ":midas device;chaos time_syseng;ctimsr\r"
expect ":KILL"

# DEVICE; CHAOS SEND
respond "*" ":midas sysbin;_sysnet;senver\r"
expect ":KILL"
respond "*" ":link device;chaos send,sysbin;senver bin\r"

# Alternate DEVICE; CHAOS SEND
respond "*" ":midas sysbin;_sysnet;sends\r"
expect ":KILL"
#respond "*" ":link device;chaos send,sysbin;senver bin\r"

# OBS
respond "*" ":midas sys;ts obs_bawden;obs\r"
expect ":KILL"

# FED
respond "*" ":midas sys;ts fed_sysen2;fed\r"
expect ":KILL"

# XHOST
respond "*" ":midas sys2;ts xhost_sysen3;xhost\r"
expect ":KILL"

# FACTOR
respond "*" ":midas sys1;ts factor_rz;factor\r"
expect ":KILL"

# balanc
respond "*" ":midas sys3;ts balanc_alan;balanc\r"
expect ":KILL"
respond "*" ":link sys3;ts movdir,sys3;ts balanc\r"

# scrmbl and unscr
respond "*" ":midas sys3;ts scrmbl_ejs;scrmbl\r"
expect ":KILL"
respond "*" ":link sys3;ts unscr,sys3;ts scrmbl\r"

# KA10 maintenance
respond "*" ":midas /t sys;ts 10run_sysen2; 10run\r"
respond "with ^C" "TTY==120\r\003"
expect ":KILL"

# KL10 microcode assembler
respond "*" ":midas sysbin;_syseng;micro\r"
expect ":KILL"
respond "*" ":job micro\r"
respond "*" ":load sysbin; micro bin\r"
respond "*" ":start purify\r"
respond "TS MICRO" "sys; ts micro\r"
respond "*" ":kill\r"

# Microcode ASCIIzer and binarator converter.
respond "*" ":midas sysbin;_syseng;cnvrt\r"
expect ":KILL"
respond "*" ":link sys1;ts mcnvrt,sysbin;cnvrt bin\r"
respond "*" ":link sys1;ts pcnvrt,sysbin;cnvrt bin\r"
respond "*" ":link sys1;ts ucnvrt,sysbin;cnvrt bin\r"
respond "*" ":link sys1;ts acnvrt,sysbin;cnvrt bin\r"

# KS10 microcode assembler
respond "*" ":midas kshack;ts micro_micro\r"
expect ":KILL"

# KL10 microcode.
respond "*" ":micro ucode;u1=ucode;its,define,macro,basic,skpjmp,shift,arith,fp,byte,io,eis,blt\r"
expect ":KILL"
respond "*" ":ucnvrt ucode; u1\r"
expect ":KILL"
# Write the RAM file to the front end filesystem:
# :klfedr write ucode;u1 ram

# KS10 microcode.
# It doesn't seem to work very well when purified.
respond "*" ":kshack;micro kshack;mcr 262=kshack;its,ks10,simple,flt,extend,inout,itspag,pagef\r"
expect ":KILL"
respond "*" ":copy kshack; mcr ram, .; ram ram\r"

update_microcode

# XXFILE
respond "*" ":midas sysbin;xxfile bin_sysen1;xxfile\r"
expect ":KILL"
respond "*" ":job xxfile\r"
respond "*" ":load sysbin;xxfile bin\r"
respond "*" "ttyop1\033b\033g"
expect ":PDUMP SYS2;TS XXFILE"
expect ">>"
respond "   " ":kill\r"

# MSEND
respond "*" ":midas sysbin;_sysen2;msend\r"
expect ":KILL"
respond "*" ":job msend\r"
respond "*" ":load sysbin;msend bin\r"
respond "*" "ttyopn\033b\033g"
expect ">>"
respond "   " ":kill\r"

# IMLOAD and IMTRAN
respond "*" ":midas sys1; ts imload_syseng; imload\r"
expect ":KILL"
respond "*" ":link sys1; ts imtran, sys1; ts imload\r"

# IMPRNT
respond "*" ":midas sys1; ts imprnt_syseng; imprnt\r"
expect ":KILL"
respond "*" ":link sys1; ts imprin, sys1; ts imprnt\r"
respond "*" ":link sys1; ts ardprn, sys1; ts imprnt\r"
respond "*" ":link sys1; ts tekprn, sys1; ts imprnt\r"

# View bitmap file on TV.
respond "*" ":midas sys2; ts tvread_sysen2; tvread\r"
expect ":KILL"

# Save TV display as bitmap file.
respond "*" ":midas sys2; ts tvwrit_sysen2; tvwrit\r"
expect ":KILL"

# Save TV display as text file.
respond "*" ":midas sys2; ts record_sysen2; record\r"
expect ":KILL"

# Maze War
respond "*" ":midas /t sysbin;_imsrc; maze\r"
respond "with ^C" "MOUSE==1\r\003"
respond "with ^C" "MOUSE==1\r\003"
expect ":KILL"
respond "*" ":imtran\r"
respond "@" "imlac; m iml_sysbin; maze bin\r"
respond "@" "\032"
type ":kill\r"

respond "*" ":midas sysbin;_klh; mazser\r"
respond "NPTCL=" "1\r"
respond "DEBUG=" "1\r"
respond "STATS=" "1\r"
expect ":KILL"
respond "*" ":job maze\r"
respond "*" ":load sysbin; mazser bin\r"
respond "*" ":start init\r"
respond "M IML" "\r"
respond ":PDUMP" "games; ts maze\r"
respond "*" ":kill\r"

# TJ6
respond "*" ":midas sysbin;_tj6;tj6\r"
expect ":KILL"
respond "*" ":job tj6\r"
respond "*" ":load sysbin; tj6 bin\r"
respond "*" "purify\033g"
respond "DSK: SYS; TS NTJ6" "\r"
respond "*" ":kill\r"
respond "*" ":link sys; ts tj6, sys; ts ntj6\r"

# Versatec spooler
# This has some harmless unresolved symbols (FOO, XE4).
respond "*" ":midas sys3;ts versa_dcp; versa\r"
expect ":KILL"
# respond "*" ":link channa; rakash v80spl,sys3; ts versa\r"

# SCAN
respond "*" ":midas sysbin;_sysen1; scan\r"
expect ":KILL"
respond "*" ":job scan\r"
respond "*" ":load sysbin; scan bin\r"
respond "*" "purify\033g"
respond "*" ":pdump sys3; ts scan\r"
respond "*" ":kill\r"

# DDT subroutines
respond "*" ":midas sys3;ts cmd_dcp; cmd\r"
expect ":KILL"

# XGP spooler
respond "*" ":midas sys2;ts xgpspl_sysen2;xgpspl\r"
expect ":KILL"

# XGP and GLP
respond "*" ":midas sysbin;xgp bin_sysen2;xqueue\r"
expect ":KILL"
respond "*" ":job xgp\r"
respond "*" ":load sysbin;xgp bin\r"
respond "*" "debug/0\r"
type ":pdump sys;ts xgp\r"
respond "*" ":kill\r"
respond "*" ":midas /t sysbin;glp bin_sysen2;xqueue\r"
respond "with ^C" "GLP==1\r\003"
expect ":KILL"
respond "*" ":job glp\r"
respond "*" ":load sysbin;glp bin\r"
respond "*" "debug/0\r"
type ":pdump sys2;ts glp\r"
respond "*" ":kill\r"

# XGPDEV and GLPDEV
respond "*" ":midas device;jobdev xgp_sysen2;xgpdev\r"
expect ":KILL"
respond "*" ":midas /t device;jobdev glp_sysen2;xgpdev\r"
respond "with ^C" "GLP==1\r\003"
expect ":KILL"

# XD, view XGP files on TV.
respond "*" ":midas sys3;ts xd_sysen2;xd\r"
expect ":KILL"

# KL10 front end directory tool
respond "*" ":midas sys1;ts klfedr_syseng;klfedr\r"
expect ":KILL"

# KL10 front end dumper
respond "*" ":midas dsk0:.;@ fedump_kldcp; fedump\r"
expect ":KILL"

# PDP-11 linker.
respond "*" ":midas sys1;ts 11stnk_kldcp;11stnk\r"
expect ":KILL"

# CARPET, remote PDP-11 debugger through Rubin 10-11 interface.
respond "*" ":midas sys3;ts carpet_syseng;carpet\r"
expect ":KILL"

# URUG, GT40 debugger.
respond "*" ":palx sysbin;_sysen2;urug\r"
respond "=YES" "1\r"
respond "37000" "37000\r"
expect ":KILL"

# GT40 boot ROM.
respond "*" ":palx gt40;bootvt\r"
expect ":KILL"

# GT40 Lunar Lander.
respond "*" ":palx gt40;gtlem\r"
expect ":KILL"

# KL10 front end debugger.  Put it in the same directory as the
# "MX" IOELEV.
respond "*" ":palx sysbin;_syseng; klrug\r"
expect ":KILL"

# PDP-11 debugger.
respond "*" ":palx dsk0:.;11ddt 16k_kldcp; 11ddt\r"
respond "PDP11=" "45\r"
respond "FPPSW=" "1\r"
respond "MAPSW=" "1\r"
respond "HCOR=" "40000\r"
respond "TT10SW=" "0\r"
respond "VT05SW=" "0\r"
respond "DEBSW=" "0\r"
expect ":KILL"

respond "*" ":palx dsk0:.;11ddt 14k_kldcp; 11ddt\r"
respond "PDP11=" "45\r"
respond "FPPSW=" "1\r"
respond "MAPSW=" "1\r"
respond "HCOR=" "34000\r"
respond "TT10SW=" "0\r"
respond "VT05SW=" "0\r"
respond "DEBSW=" "0\r"
expect ":KILL"

# KL10 diagnostics console program.
respond "*" ":palx kldcp; kldcp\r"
expect ":KILL"

# KL10 NTSDDT.
respond "*" ":midas dsk0:.;@ ntsddt_system;ddt\r"
respond "cpusw=" "2\r"
respond "ndsk=" "1\r"
respond "dsksw=" "3\r"
expect ":KILL"

# IOELEV, PDP-11 doing I/O for the PDP-10 host.
# First, the "AI" IOELEV, also known as CHAOS-11.
# STUFF prefers to have it in the "." directory.
respond "*" ":palx dsk0:.;_system;ioelev\r"
respond "MACHINE NAME =" "AI\r"
expect ":KILL"

# The KL10 console "MX" IOELEV.  Put it in SYSBIN as to not conflict
# with the "AI" IOELEV.
respond "*" ":palx sysbin;_system;ioelev\r"
respond "MACHINE NAME =" "MX\r"
expect ":KILL"
respond "*" ":11stnk\r"
# Rumour has it 11DDT 14K should be used, but then 11STNK barfs on
# KLDCP.  KLRUG works better.
respond "*" "R"
respond "FILENAME" "\r"
respond "*" "L"
respond "FILENAME" "kldcp; kldcp bin\r"
respond "*" "L"
respond "FILENAME" "sysbin; ioelev bin\r"
respond "*" "A"
respond "FILENAME" ".temp.; ioelev bin\r"
expect ":KILL"
respond "*" ":pcnvrt .temp.; ioelev bin\r"
expect ":KILL"
# Write the file to the front end filesystem:
# :klfedr write .temp.; ioelev a11

# The KL10 "MX-DL" IOELEV won't assemble due to CHADD being undefined.
# Maybe roll back to IOELEV 431, or fix it in new version 433.  Maybe
# link with 11DDT 16K.

# TV-11.  STUFF prefers it to be in the "." directory.
respond "*" ":palx dsk0:.;_system;tv\r"
expect ":KILL"

# XGP-11.  STUFF prefers it to be SYSBIN; VXGP BIN.
respond "*" ":palx sysbin;vxgp bin_sysen2;xgp\r"
expect ":KILL"

# CCONS.  STUFF prefers it to be in the CONS directory.
respond "*" ":print cons;..new. (udir)\r"
type ":vk\r"
respond "*" ":palx cons;_lmcons;ccons\r"
expect ":KILL"

# 11BOOT
respond "*" ":midas /t sys3;ts 11boot_syseng;11boot\r"
respond "with ^C" "APR==0\r\003"
expect ":KILL"
# Note, must be run with symbols loaded.
# Takes IOELEV BIN and KLRUG BIN from the current directory.
respond "*" ":cwd sysbin\r"
respond "*" "11boot\033\013"
expect ":KILL"
respond "*" ":move sysbin;@ boot11, .;\r"

# STUFF
respond "*" ":midas sys1;ts stuff_sysen2;stuff\r"
expect ":KILL"

# GEORGE
respond "*" ":midas sys3;ts george_syseng;george\r"
expect ":KILL"

# MONIT
# The ERROR lines printed during assembly are locations of unlikely
# runtime errors (e.g. not being able to open TTY:).
respond "*" ":midas sys;ts monit_dmcg;monit\r"
expect ":KILL"

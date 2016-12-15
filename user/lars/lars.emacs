!* -*-TECO-*- !

!* Inverse mode line.!
1 FS Invmod

!* Do too want C-h as help char.!
 FS Help Char

!* Protection against disasters:
   By default, make all file buffers read-only,
   but undo it for home directory, HACK, and .TEMP.!
FS H Sname:f6[2 
 @:i*/ m.m ^R Set File Read-Only[0
      -1m0
      FS D Sname:f6[1
      f=12"e m0'
         "# F=1HACK"e m0'
	    "# F=1.TEMP."e m0'''
      ]1]0/ M.V Visit File Hook
]2

!* Make M-C-x eval defuns.!
@:I*/ M.M ^R LISPT Code U...X / M.V LISPT Setup Hook

!* Load the GNU Emacs goodness.!
MM Load LibraryBARE
MM Load LibraryLARS;GEMACS

!* Read the standard init.!
ER EMACS;* EMACS @Y :M(HFX*)

/* Assembler macros of the generated assembly (the export's sources carry their own copy). */
.macro glabel label
    .global \label
    \label:
.endm
.macro jlabel label
    \label:
.endm

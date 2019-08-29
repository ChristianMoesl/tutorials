(module
;; *********** Import Section ***********
(import "env" "printlnString" (func $printlnString (param i32)))
(import "env" "readFile" (func $readFile (param i32) (result i32)))
(import "env" "printData" (func $printData (param i32 i32)))
(import "env" "printString" (func $printString (param i32)))
(import "env" "printInt" (func $printInt (param i32)))
;; *********** Memory Section ***********
(memory (export "mem") 1)
;; *********** Code Section ***********
(func $_hash (param $str i32) (param $len i32) (result i64)
(local $t0 i32)
(local $t1 i64)
i64.const 5381
local.set $t1
local.get $str
i32.load8_u
local.set $t0
block $0
loop $1
local.get $t0
i32.eqz
br_if $0
local.get $len
i32.eqz
br_if $0
local.get $t1
i64.const 5
i64.shl
local.get $t1
i64.add
local.get $str
i32.load8_u
i64.extend_u/i32
i64.add
local.set $t1
local.get $str
i32.const 1
i32.add
local.tee $str
i32.load8_u
local.set $t0
local.get $len
i32.const 1
i32.sub
local.set $len
br $1
end
end
local.get $t1
)
(func $Snippet (export "Snippet") (param $x0 i32)
(local $x1 i32)
(local $x2 i32)
(local $x3 i32)
(local $x4 i32)
(local $x5 i32)
(local $x6 i32)
(local $x7 i32)
(local $x8 i32)
(local $x9 i32)
(local $x10 i32)
(local $x11 i32)
(local $x12 i32)
(local $x13 i32)
(local $x14 i32)
i32.const 20
call $printlnString
i32.const 46
call $readFile
local.set $x1
i32.const 0
local.set $x2
block $2
loop $3
local.get $x1
local.get $x2
i32.add
i32.load8_u
i32.const 44
i32.ne
i32.eqz
br_if $2
local.get $x2
i32.const 1
i32.add
local.set $x2
br $3
end
end
local.get $x2
i32.const 1
i32.add
local.set $x2
block $4
loop $5
local.get $x1
local.get $x2
i32.add
i32.load8_u
i32.const 44
i32.ne
i32.eqz
br_if $4
local.get $x2
i32.const 1
i32.add
local.set $x2
br $5
end
end
local.get $x2
i32.const 1
i32.add
local.set $x2
block $6
loop $7
local.get $x1
local.get $x2
i32.add
i32.load8_u
i32.const 10
i32.ne
i32.eqz
br_if $6
local.get $x2
i32.const 1
i32.add
local.set $x2
br $7
end
end
local.get $x2
i32.const 1
i32.add
local.set $x2
local.get $x1
i32.const 4
i32.sub
i32.load
local.set $x3
block $8
loop $9
local.get $x2
local.get $x3
i32.lt_s
i32.eqz
br_if $8
local.get $x2
local.set $x4
block $10
loop $11
local.get $x1
local.get $x2
i32.add
i32.load8_u
i32.const 44
i32.ne
i32.eqz
br_if $10
local.get $x2
i32.const 1
i32.add
local.set $x2
br $11
end
end
local.get $x2
local.get $x4
i32.sub
local.set $x5
local.get $x2
i32.const 1
i32.add
local.set $x2
;; unchecked: x76 = (unchecked[ ][ ](i32.add) x3 x61)
local.get $x1
local.get $x4
i32.add
;; unchecked end: x76 = (unchecked[ ][ ](i32.add) x3 x61)
local.set $x6
i32.const 0
local.set $x7
block $12
loop $13
local.get $x1
local.get $x2
i32.add
i32.load8_u
i32.const 44
i32.ne
i32.eqz
br_if $12
local.get $x7
i32.const 10
i32.mul
local.get $x1
local.get $x2
i32.add
i32.load8_u
i32.const 48
i32.sub
i32.add
local.set $x7
local.get $x2
i32.const 1
i32.add
local.set $x2
br $13
end
end
local.get $x2
i32.const 1
i32.add
local.set $x8
local.get $x8
local.set $x2
local.get $x7
local.set $x9
block $14
loop $15
local.get $x1
local.get $x2
i32.add
i32.load8_u
i32.const 10
i32.ne
i32.eqz
br_if $14
local.get $x2
i32.const 1
i32.add
local.set $x2
br $15
end
end
local.get $x2
local.get $x8
i32.sub
local.set $x10
local.get $x2
i32.const 1
i32.add
local.set $x2
;; unchecked: x113 = (unchecked[ ][ ](i32.add) x3 x96)
local.get $x1
local.get $x8
i32.add
;; unchecked end: x113 = (unchecked[ ][ ](i32.add) x3 x96)
local.set $x11
i32.const 0
local.set $x12
block $16
loop $17
local.get $x1
local.get $x12
i32.add
i32.load8_u
i32.const 44
i32.ne
i32.eqz
br_if $16
local.get $x12
i32.const 1
i32.add
local.set $x12
br $17
end
end
local.get $x12
i32.const 1
i32.add
local.set $x12
block $18
loop $19
local.get $x1
local.get $x12
i32.add
i32.load8_u
i32.const 44
i32.ne
i32.eqz
br_if $18
local.get $x12
i32.const 1
i32.add
local.set $x12
br $19
end
end
local.get $x12
i32.const 1
i32.add
local.set $x12
block $20
loop $21
local.get $x1
local.get $x12
i32.add
i32.load8_u
i32.const 10
i32.ne
i32.eqz
br_if $20
local.get $x12
i32.const 1
i32.add
local.set $x12
br $21
end
end
local.get $x12
i32.const 1
i32.add
local.set $x12
block $22
loop $23
local.get $x12
local.get $x3
i32.lt_s
i32.eqz
br_if $22
local.get $x12
local.set $x13
block $24
loop $25
local.get $x1
local.get $x12
i32.add
i32.load8_u
i32.const 44
i32.ne
i32.eqz
br_if $24
local.get $x12
i32.const 1
i32.add
local.set $x12
br $25
end
end
local.get $x12
local.set $x14
local.get $x12
i32.const 1
i32.add
local.set $x12
block $26
loop $27
local.get $x1
local.get $x12
i32.add
i32.load8_u
i32.const 44
i32.ne
i32.eqz
br_if $26
local.get $x12
i32.const 1
i32.add
local.set $x12
br $27
end
end
local.get $x12
i32.const 1
i32.add
local.set $x12
block $28
loop $29
local.get $x1
local.get $x12
i32.add
i32.load8_u
i32.const 10
i32.ne
i32.eqz
br_if $28
local.get $x12
i32.const 1
i32.add
local.set $x12
br $29
end
end
local.get $x12
i32.const 1
i32.add
local.set $x12
local.get $x6
local.get $x5
call $printData
i32.const 65
call $printString
local.get $x9
call $printInt
i32.const 65
call $printString
local.get $x11
local.get $x10
call $printData
i32.const 65
call $printString
;; unchecked: x184 = (unchecked[ ][ ](i32.add) x3 x169)
local.get $x1
local.get $x13
i32.add
;; unchecked end: x184 = (unchecked[ ][ ](i32.add) x3 x169)
local.get $x14
local.get $x13
i32.sub
call $printData
i32.const 71
call $printlnString
br $23
end
end
br $9
end
end
)
;; *********** Data Section ***********
(data (i32.const 0) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
(data (i32.const 20) "Name,Value,Flag,Name1\00")
(data (i32.const 46) "src/data/t.csv\00")
(data (i32.const 65) ",\00")
(data (i32.const 71) "\00")
)

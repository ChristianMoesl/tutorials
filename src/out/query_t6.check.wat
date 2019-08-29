(module
;; *********** Import Section ***********
(import "env" "printlnString" (func $printlnString (param i32)))
(import "env" "malloc" (func $malloc (param i32) (result i32)))
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
(local $t0 i32)
(local $t1 i32)
(local $x1 i32)
(local $t2 i32)
(local $t3 i32)
(local $x2 i32)
(local $x3 i32)
(local $t4 i32)
(local $t5 i32)
(local $x4 i32)
(local $x5 i32)
(local $t6 i32)
(local $t7 i32)
(local $x6 i32)
(local $x7 i32)
(local $x8 i32)
(local $x9 i32)
(local $x10 i32)
(local $x11 i32)
(local $x12 i32)
(local $x13 i32)
(local $x14 i32)
(local $x15 i32)
(local $x16 i32)
(local $x17 i32)
(local $x18 i32)
(local $x19 i32)
(local $x20 i32)
(local $x21 i32)
(local $x22 i32)
(local $x23 i32)
(local $x24 i32)
i32.const 20
call $printlnString
i32.const 256
local.tee $t0
i32.const 4
i32.mul
i32.const 4
i32.add
call $malloc
local.tee $t1
local.get $t0
i32.store
local.get $t1
i32.const 4
i32.add
local.set $x1
i32.const 256
local.tee $t2
i32.const 4
i32.mul
i32.const 4
i32.add
call $malloc
local.tee $t3
local.get $t2
i32.store
local.get $t3
i32.const 4
i32.add
local.set $x2
i32.const 0
local.set $x3
i32.const 256
local.tee $t4
i32.const 4
i32.mul
i32.const 4
i32.add
call $malloc
local.tee $t5
local.get $t4
i32.store
local.get $t5
i32.const 4
i32.add
local.set $x4
i32.const 0
local.set $x5
block $2
loop $3
local.get $x5
i32.const 256
i32.ne
i32.eqz
br_if $2
local.get $x4
local.get $x5
i32.const 4
i32.mul
i32.add
i32.const -1
i32.store
local.get $x5
i32.const 1
i32.add
local.set $x5
br $3
end
end
i32.const 256
local.tee $t6
i32.const 4
i32.mul
i32.const 4
i32.add
call $malloc
local.tee $t7
local.get $t6
i32.store
local.get $t7
i32.const 4
i32.add
local.set $x6
i32.const 35
call $readFile
local.set $x7
i32.const 0
local.set $x8
block $4
loop $5
local.get $x7
local.get $x8
i32.add
i32.load8_u
i32.const 44
i32.ne
i32.eqz
br_if $4
local.get $x8
i32.const 1
i32.add
local.set $x8
br $5
end
end
local.get $x8
i32.const 1
i32.add
local.set $x8
block $6
loop $7
local.get $x7
local.get $x8
i32.add
i32.load8_u
i32.const 44
i32.ne
i32.eqz
br_if $6
local.get $x8
i32.const 1
i32.add
local.set $x8
br $7
end
end
local.get $x8
i32.const 1
i32.add
local.set $x8
block $8
loop $9
local.get $x7
local.get $x8
i32.add
i32.load8_u
i32.const 10
i32.ne
i32.eqz
br_if $8
local.get $x8
i32.const 1
i32.add
local.set $x8
br $9
end
end
local.get $x8
i32.const 1
i32.add
local.set $x8
local.get $x7
i32.const 4
i32.sub
i32.load
local.set $x9
block $10
loop $11
local.get $x8
local.get $x9
i32.lt_s
i32.eqz
br_if $10
local.get $x8
local.set $x10
block $12
loop $13
local.get $x7
local.get $x8
i32.add
i32.load8_u
i32.const 44
i32.ne
i32.eqz
br_if $12
local.get $x8
i32.const 1
i32.add
local.set $x8
br $13
end
end
local.get $x8
local.get $x10
i32.sub
local.set $x11
local.get $x8
i32.const 1
i32.add
local.set $x8
;; unchecked: x95 = (unchecked[ ][ ](i32.add) x22 x80)
local.get $x7
local.get $x10
i32.add
;; unchecked end: x95 = (unchecked[ ][ ](i32.add) x22 x80)
local.set $x12
i32.const 0
local.set $x13
block $14
loop $15
local.get $x7
local.get $x8
i32.add
i32.load8_u
i32.const 44
i32.ne
i32.eqz
br_if $14
local.get $x13
i32.const 10
i32.mul
local.get $x7
local.get $x8
i32.add
i32.load8_u
i32.const 48
i32.sub
i32.add
local.set $x13
local.get $x8
i32.const 1
i32.add
local.set $x8
br $15
end
end
local.get $x8
i32.const 1
i32.add
local.set $x8
block $16
loop $17
local.get $x7
local.get $x8
i32.add
i32.load8_u
i32.const 10
i32.ne
i32.eqz
br_if $16
local.get $x8
i32.const 1
i32.add
local.set $x8
br $17
end
end
local.get $x8
i32.const 1
i32.add
local.set $x8
local.get $x12
local.get $x11
call $_hash
i32.wrap/i64
i32.const 255
i32.and
local.set $x14
;;# hash_lookup
;; generated code for hash lookup
local.get $x14
local.set $x16
block $18
loop $19
local.get $x4
local.get $x16
i32.const 4
i32.mul
i32.add
i32.load
i32.const -1
i32.ne
if (result i32)
local.get $x4
local.get $x16
i32.const 4
i32.mul
i32.add
i32.load
local.set $x17
local.get $x2
local.get $x17
i32.const 4
i32.mul
i32.add
i32.load
local.set $x18
local.get $x18
local.get $x11
i32.eq
if (result i32)
local.get $x1
local.get $x17
i32.const 4
i32.mul
i32.add
i32.load
local.set $x19
i32.const 0
local.set $x20
block $20
loop $21
local.get $x20
local.get $x18
i32.lt_s
if (result i32)
;; unchecked: x155 = (unchecked[ ][ ](i32.add)(i32.load8_u) x154 x145)
local.get $x20
local.get $x19
i32.add
i32.load8_u
;; unchecked end: x155 = (unchecked[ ][ ](i32.add)(i32.load8_u) x154 x145)
;; unchecked: x157 = (unchecked[ ][ ](i32.add)(i32.load8_u) x156 x95)
local.get $x20
local.get $x12
i32.add
i32.load8_u
;; unchecked end: x157 = (unchecked[ ][ ](i32.add)(i32.load8_u) x156 x95)
i32.eq
else
i32.const 0
end
i32.eqz
br_if $20
local.get $x20
i32.const 1
i32.add
local.set $x20
br $21
end
end
local.get $x20
local.get $x18
i32.eq
else
i32.const 0
end
i32.eqz
else
i32.const 0
end
i32.eqz
br_if $18
local.get $x16
i32.const 1
i32.add
i32.const 255
i32.and
local.set $x16
br $19
end
end
local.get $x4
local.get $x16
i32.const 4
i32.mul
i32.add
i32.load
i32.const -1
i32.eq
if (result i32)
local.get $x3
local.set $x21
local.get $x1
local.get $x21
i32.const 4
i32.mul
i32.add
local.get $x12
i32.store
local.get $x2
local.get $x21
i32.const 4
i32.mul
i32.add
local.get $x11
i32.store
local.get $x3
i32.const 1
i32.add
local.set $x3
local.get $x4
local.get $x16
i32.const 4
i32.mul
i32.add
local.get $x21
i32.store
local.get $x6
local.get $x21
i32.const 4
i32.mul
i32.add
i32.const 0
i32.store
local.get $x21
else
local.get $x4
local.get $x16
i32.const 4
i32.mul
i32.add
i32.load
end
local.set $x15
;;# hash_lookup
local.get $x6
local.get $x15
i32.const 4
i32.mul
i32.add
local.get $x6
local.get $x15
i32.const 4
i32.mul
i32.add
i32.load
local.get $x13
i32.add
i32.store
br $11
end
end
local.get $x3
local.set $x22
i32.const 0
local.set $x23
block $22
loop $23
local.get $x23
local.get $x22
i32.ne
i32.eqz
br_if $22
local.get $x23
local.set $x24
local.get $x1
local.get $x24
i32.const 4
i32.mul
i32.add
i32.load
local.get $x2
local.get $x24
i32.const 4
i32.mul
i32.add
i32.load
call $printData
i32.const 54
call $printString
local.get $x6
local.get $x24
i32.const 4
i32.mul
i32.add
i32.load
call $printInt
i32.const 60
call $printlnString
local.get $x23
i32.const 1
i32.add
local.set $x23
br $23
end
end
)
;; *********** Data Section ***********
(data (i32.const 0) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
(data (i32.const 20) "Name,Value\00")
(data (i32.const 35) "src/data/t.csv\00")
(data (i32.const 54) ",\00")
(data (i32.const 60) "\00")
)

(module
;; *********** Import Section ***********
(import "env" "println" (func $println (param i32)))
(import "env" "malloc" (func $malloc (param i32) (result i32)))
(import "env" "readFile" (func $readFile (param i32) (result i32)))
(import "env" "printData" (func $printData (param i32 i32)))
(import "env" "printf" (func $printf (param i32 i32)))
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
(local $t8 i32)
(local $t9 i32)
(local $x7 i32)
(local $t10 i32)
(local $t11 i32)
(local $x8 i32)
(local $t12 i32)
(local $t13 i32)
(local $x9 i32)
(local $t14 i32)
(local $t15 i32)
(local $x10 i32)
(local $x11 i32)
(local $t16 i32)
(local $t17 i32)
(local $x12 i32)
(local $t18 i32)
(local $t19 i32)
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
(local $x25 i32)
(local $x26 i32)
(local $x27 i32)
(local $x28 i32)
(local $x29 i32)
(local $x30 i32)
(local $x31 i32)
(local $x32 i32)
(local $x33 i32)
(local $x34 i32)
(local $x35 i32)
(local $x36 i32)
(local $x37 i32)
(local $x38 i32)
(local $x39 i32)
(local $x40 i32)
(local $x41 i32)
(local $x42 i32)
(local $x43 i32)
(local $x44 i32)
(local $x45 i32)
(local $x46 i32)
(local $x47 i32)
i32.const 3
i32.const 0
i32.const 32
i32.store8
call $println
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
block $0
loop $1
local.get $x5
i32.const 256
i32.ne
i32.eqz
br_if $0
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
br $1
end
end
i32.const 65536
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
i32.const 65536
local.tee $t8
i32.const 4
i32.mul
i32.const 4
i32.add
call $malloc
local.tee $t9
local.get $t8
i32.store
local.get $t9
i32.const 4
i32.add
local.set $x7
i32.const 65536
local.tee $t10
i32.const 4
i32.mul
i32.const 4
i32.add
call $malloc
local.tee $t11
local.get $t10
i32.store
local.get $t11
i32.const 4
i32.add
local.set $x8
i32.const 65536
local.tee $t12
i32.const 4
i32.mul
i32.const 4
i32.add
call $malloc
local.tee $t13
local.get $t12
i32.store
local.get $t13
i32.const 4
i32.add
local.set $x9
i32.const 65536
local.tee $t14
i32.const 4
i32.mul
i32.const 4
i32.add
call $malloc
local.tee $t15
local.get $t14
i32.store
local.get $t15
i32.const 4
i32.add
local.set $x10
i32.const 0
local.set $x11
i32.const 65536
local.tee $t16
i32.const 4
i32.mul
i32.const 4
i32.add
call $malloc
local.tee $t17
local.get $t16
i32.store
local.get $t17
i32.const 4
i32.add
local.set $x12
i32.const 256
local.tee $t18
i32.const 4
i32.mul
i32.const 4
i32.add
call $malloc
local.tee $t19
local.get $t18
i32.store
local.get $t19
i32.const 4
i32.add
local.set $x13
i32.const 64
call $readFile
local.set $x14
i32.const 0
local.set $x15
block $0
loop $1
local.get $x14
local.get $x15
i32.add
i32.load8_u
i32.const 44
i32.ne
i32.eqz
br_if $0
local.get $x15
i32.const 1
i32.add
local.set $x15
br $1
end
end
local.get $x15
i32.const 1
i32.add
local.set $x15
block $0
loop $1
local.get $x14
local.get $x15
i32.add
i32.load8_u
i32.const 44
i32.ne
i32.eqz
br_if $0
local.get $x15
i32.const 1
i32.add
local.set $x15
br $1
end
end
local.get $x15
i32.const 1
i32.add
local.set $x15
block $0
loop $1
local.get $x14
local.get $x15
i32.add
i32.load8_u
i32.const 10
i32.ne
i32.eqz
br_if $0
local.get $x15
i32.const 1
i32.add
local.set $x15
br $1
end
end
local.get $x15
i32.const 1
i32.add
local.set $x15
local.get $x14
i32.const 4
i32.sub
i32.load
local.set $x16
block $0
loop $1
local.get $x15
local.get $x16
i32.lt_s
i32.eqz
br_if $0
local.get $x15
local.set $x17
block $2
loop $3
local.get $x14
local.get $x15
i32.add
i32.load8_u
i32.const 44
i32.ne
i32.eqz
br_if $2
local.get $x15
i32.const 1
i32.add
local.set $x15
br $3
end
end
local.get $x15
local.get $x17
i32.sub
local.set $x18
local.get $x15
i32.const 1
i32.add
local.set $x15
local.get $x14
local.get $x17
i32.add
local.set $x19
i32.const 0
local.set $x20
block $2
loop $3
local.get $x14
local.get $x15
i32.add
i32.load8_u
i32.const 44
i32.ne
i32.eqz
br_if $2
local.get $x20
i32.const 10
i32.mul
local.get $x14
local.get $x15
i32.add
i32.load8_u
i32.const 48
i32.sub
i32.add
local.set $x20
local.get $x15
i32.const 1
i32.add
local.set $x15
br $3
end
end
local.get $x15
i32.const 1
i32.add
local.set $x21
local.get $x21
local.set $x15
block $2
loop $3
local.get $x14
local.get $x15
i32.add
i32.load8_u
i32.const 10
i32.ne
i32.eqz
br_if $2
local.get $x15
i32.const 1
i32.add
local.set $x15
br $3
end
end
local.get $x15
local.set $x22
local.get $x15
i32.const 1
i32.add
local.set $x15
local.get $x11
local.set $x23
local.get $x6
local.get $x23
i32.const 4
i32.mul
i32.add
local.get $x19
i32.store
local.get $x7
local.get $x23
i32.const 4
i32.mul
i32.add
local.get $x18
i32.store
local.get $x8
local.get $x23
i32.const 4
i32.mul
i32.add
local.get $x20
i32.store
local.get $x9
local.get $x23
i32.const 4
i32.mul
i32.add
local.get $x14
local.get $x21
i32.add
i32.store
local.get $x10
local.get $x23
i32.const 4
i32.mul
i32.add
local.get $x22
local.get $x21
i32.sub
i32.store
local.get $x11
i32.const 1
i32.add
local.set $x11
local.get $x19
local.get $x18
call $_hash
i32.wrap/i64
i32.const 255
i32.and
local.set $x24
;;# hash_lookup
;; generated code for hash lookup
local.get $x24
local.set $x26
block $2
loop $3
local.get $x4
local.get $x26
i32.const 4
i32.mul
i32.add
i32.load
i32.const -1
i32.ne
if (result i32)
local.get $x4
local.get $x26
i32.const 4
i32.mul
i32.add
i32.load
local.set $x27
local.get $x2
local.get $x27
i32.const 4
i32.mul
i32.add
i32.load
local.set $x28
local.get $x28
local.get $x18
i32.eq
if (result i32)
local.get $x1
local.get $x27
i32.const 4
i32.mul
i32.add
i32.load
local.set $x29
i32.const 0
local.set $x30
block $4
loop $5
local.get $x30
local.get $x28
i32.lt_s
if (result i32)
local.get $x30
local.get $x29
i32.add
i32.load8_u
local.get $x30
local.get $x19
i32.add
i32.load8_u
i32.eq
else
i32.const 0
end
i32.eqz
br_if $4
local.get $x30
i32.const 1
i32.add
local.set $x30
br $5
end
end
local.get $x30
local.get $x28
i32.eq
else
i32.const 0
end
i32.eqz
else
i32.const 0
end
i32.eqz
br_if $2
local.get $x26
i32.const 1
i32.add
i32.const 255
i32.and
local.set $x26
br $3
end
end
local.get $x4
local.get $x26
i32.const 4
i32.mul
i32.add
i32.load
i32.const -1
i32.eq
if (result i32)
local.get $x3
local.set $x31
local.get $x1
local.get $x31
i32.const 4
i32.mul
i32.add
local.get $x19
i32.store
local.get $x2
local.get $x31
i32.const 4
i32.mul
i32.add
local.get $x18
i32.store
local.get $x3
i32.const 1
i32.add
local.set $x3
local.get $x4
local.get $x26
i32.const 4
i32.mul
i32.add
local.get $x31
i32.store
local.get $x13
local.get $x31
i32.const 4
i32.mul
i32.add
i32.const 0
i32.store
local.get $x31
else
local.get $x4
local.get $x26
i32.const 4
i32.mul
i32.add
i32.load
end
local.set $x25
;;# hash_lookup
local.get $x13
local.get $x25
i32.const 4
i32.mul
i32.add
i32.load
local.set $x32
local.get $x12
local.get $x25
i32.const 256
i32.mul
local.get $x32
i32.add
i32.const 4
i32.mul
i32.add
local.get $x23
i32.store
local.get $x13
local.get $x25
i32.const 4
i32.mul
i32.add
local.get $x32
i32.const 1
i32.add
i32.store
br $1
end
end
i32.const 0
local.set $x33
block $0
loop $1
local.get $x14
local.get $x33
i32.add
i32.load8_u
i32.const 44
i32.ne
i32.eqz
br_if $0
local.get $x33
i32.const 1
i32.add
local.set $x33
br $1
end
end
local.get $x33
i32.const 1
i32.add
local.set $x33
block $0
loop $1
local.get $x14
local.get $x33
i32.add
i32.load8_u
i32.const 44
i32.ne
i32.eqz
br_if $0
local.get $x33
i32.const 1
i32.add
local.set $x33
br $1
end
end
local.get $x33
i32.const 1
i32.add
local.set $x33
block $0
loop $1
local.get $x14
local.get $x33
i32.add
i32.load8_u
i32.const 10
i32.ne
i32.eqz
br_if $0
local.get $x33
i32.const 1
i32.add
local.set $x33
br $1
end
end
local.get $x33
i32.const 1
i32.add
local.set $x33
block $0
loop $1
local.get $x33
local.get $x16
i32.lt_s
i32.eqz
br_if $0
local.get $x33
local.set $x34
block $2
loop $3
local.get $x14
local.get $x33
i32.add
i32.load8_u
i32.const 44
i32.ne
i32.eqz
br_if $2
local.get $x33
i32.const 1
i32.add
local.set $x33
br $3
end
end
local.get $x33
local.get $x34
i32.sub
local.set $x35
local.get $x33
i32.const 1
i32.add
local.set $x33
local.get $x14
local.get $x34
i32.add
local.set $x36
block $2
loop $3
local.get $x14
local.get $x33
i32.add
i32.load8_u
i32.const 44
i32.ne
i32.eqz
br_if $2
local.get $x33
i32.const 1
i32.add
local.set $x33
br $3
end
end
local.get $x33
i32.const 1
i32.add
local.set $x33
block $2
loop $3
local.get $x14
local.get $x33
i32.add
i32.load8_u
i32.const 10
i32.ne
i32.eqz
br_if $2
local.get $x33
i32.const 1
i32.add
local.set $x33
br $3
end
end
local.get $x33
i32.const 1
i32.add
local.set $x33
local.get $x36
local.get $x35
call $_hash
i32.wrap/i64
i32.const 255
i32.and
local.set $x37
;;# hash_lookup
;; generated code for hash lookup
local.get $x37
local.set $x39
block $2
loop $3
local.get $x4
local.get $x39
i32.const 4
i32.mul
i32.add
i32.load
i32.const -1
i32.ne
if (result i32)
local.get $x4
local.get $x39
i32.const 4
i32.mul
i32.add
i32.load
local.set $x40
local.get $x2
local.get $x40
i32.const 4
i32.mul
i32.add
i32.load
local.set $x41
local.get $x41
local.get $x35
i32.eq
if (result i32)
local.get $x1
local.get $x40
i32.const 4
i32.mul
i32.add
i32.load
local.set $x42
i32.const 0
local.set $x43
block $4
loop $5
local.get $x43
local.get $x41
i32.lt_s
if (result i32)
local.get $x43
local.get $x42
i32.add
i32.load8_u
local.get $x43
local.get $x36
i32.add
i32.load8_u
i32.eq
else
i32.const 0
end
i32.eqz
br_if $4
local.get $x43
i32.const 1
i32.add
local.set $x43
br $5
end
end
local.get $x43
local.get $x41
i32.eq
else
i32.const 0
end
i32.eqz
else
i32.const 0
end
i32.eqz
br_if $2
local.get $x39
i32.const 1
i32.add
i32.const 255
i32.and
local.set $x39
br $3
end
end
local.get $x4
local.get $x39
i32.const 4
i32.mul
i32.add
i32.load
local.set $x38
;;# hash_lookup
local.get $x38
i32.const -1
i32.ne
if
local.get $x38
i32.const 256
i32.mul
local.set $x44
local.get $x44
local.get $x13
local.get $x38
i32.const 4
i32.mul
i32.add
i32.load
i32.add
local.set $x45
local.get $x44
local.set $x46
block $2
loop $3
local.get $x46
local.get $x45
i32.ne
i32.eqz
br_if $2
local.get $x12
local.get $x46
i32.const 4
i32.mul
i32.add
i32.load
local.set $x47
local.get $x6
local.get $x47
i32.const 4
i32.mul
i32.add
i32.load
local.get $x7
local.get $x47
i32.const 4
i32.mul
i32.add
i32.load
call $printData
i32.const 88
i32.const 0
call $printf
i32.const 96
i32.const 4
i32.const 0
local.get $x8
local.get $x47
i32.const 4
i32.mul
i32.add
i32.load
i32.store
call $printf
i32.const 88
i32.const 0
call $printf
local.get $x9
local.get $x47
i32.const 4
i32.mul
i32.add
i32.load
local.get $x10
local.get $x47
i32.const 4
i32.mul
i32.add
i32.load
call $printData
i32.const 88
i32.const 0
call $printf
local.get $x36
local.get $x35
call $printData
i32.const 3
i32.const 0
i32.const 104
i32.store8
call $println
local.get $x46
i32.const 1
i32.add
local.set $x46
br $3
end
end
else
end
br $1
end
end
)
;; *********** Data Section ***********
(data (i32.const 0) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
(data (i32.const 32) "Name,Value,Flag,Name\00")
(data (i32.const 64) "src/data/t.csv\00")
(data (i32.const 88) ",\00")
(data (i32.const 96) "%d\00")
(data (i32.const 104) "\00")
)

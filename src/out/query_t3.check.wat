(module
;; *********** Import Section ***********
(import "env" "println1" (func $println1 (param i32)))
(import "env" "readFile" (func $readFile (param i32) (result i32)))
(import "env" "printData" (func $printData (param i32 i32)))
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
i32.const 3
i32.const 0
i32.const 32
i32.store8
call $println1
i32.const 48
call $readFile
local.set $x1
i32.const 0
local.set $x2
block $0
loop $1
local.get $x1
local.get $x2
i32.add
i32.load8_u
i32.const 44
i32.ne
i32.eqz
br_if $0
local.get $x2
i32.const 1
i32.add
local.set $x2
br $1
end
end
local.get $x2
i32.const 1
i32.add
local.set $x2
block $0
loop $1
local.get $x1
local.get $x2
i32.add
i32.load8_u
i32.const 44
i32.ne
i32.eqz
br_if $0
local.get $x2
i32.const 1
i32.add
local.set $x2
br $1
end
end
local.get $x2
i32.const 1
i32.add
local.set $x2
block $0
loop $1
local.get $x1
local.get $x2
i32.add
i32.load8_u
i32.const 10
i32.ne
i32.eqz
br_if $0
local.get $x2
i32.const 1
i32.add
local.set $x2
br $1
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
i32.const 72
local.set $x4
block $0
loop $1
local.get $x2
local.get $x3
i32.lt_s
i32.eqz
br_if $0
local.get $x2
local.set $x5
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
local.set $x6
local.get $x2
i32.const 1
i32.add
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
local.set $x7
local.get $x7
local.set $x2
block $2
loop $3
local.get $x1
local.get $x2
i32.add
i32.load8_u
i32.const 10
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
local.get $x7
i32.sub
local.set $x8
local.get $x2
i32.const 1
i32.add
local.set $x2
local.get $x8
i32.const 3
i32.eq
if (result i32)
local.get $x1
local.get $x7
i32.add
local.set $x9
i32.const 0
local.set $x10
block $2
loop $3
local.get $x10
local.get $x8
i32.lt_s
if (result i32)
local.get $x10
local.get $x9
i32.add
i32.load8_u
local.get $x10
local.get $x4
i32.add
i32.load8_u
i32.eq
else
i32.const 0
end
i32.eqz
br_if $2
local.get $x10
i32.const 1
i32.add
local.set $x10
br $3
end
end
local.get $x10
local.get $x8
i32.eq
else
i32.const 0
end
if
local.get $x1
local.get $x5
i32.add
local.get $x6
local.get $x5
i32.sub
call $printData
i32.const 3
i32.const 0
i32.const 80
i32.store8
call $println1
else
end
br $1
end
end
)
;; *********** Data Section ***********
(data (i32.const 0) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
(data (i32.const 32) "Name\00")
(data (i32.const 48) "src/data/t.csv\00")
(data (i32.const 72) "yes\00")
(data (i32.const 80) "\00")
)

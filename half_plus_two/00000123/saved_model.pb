ź2
	ë
:
Add
x"T
y"T
z"T"
Ttype:
2	
x
Assign
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
8
Const
output"dtype"
valuetensor"
dtypetype
.
Identity

input"T
output"T"	
Ttype
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
H
ShardedFilename
basename	
shard

num_shards
filename
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
s

VariableV2
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring "serve*1.13.12b'v1.13.1-0-g6612da8951'8"
[
Variable/initial_valueConst*
valueB
 *   ?*
dtype0*
_output_shapes
: 
H
Variable
VariableV2*
dtype0*
_output_shapes
: *
shape: 
y
Variable/AssignAssignVariableVariable/initial_value*
_class
loc:@Variable*
_output_shapes
: *
T0
a
Variable/readIdentityVariable*
T0*
_class
loc:@Variable*
_output_shapes
: 
]
Variable_1/initial_valueConst*
_output_shapes
: *
valueB
 *   @*
dtype0
J

Variable_1
VariableV2*
dtype0*
_output_shapes
: *
shape: 

Variable_1/AssignAssign
Variable_1Variable_1/initial_value*
T0*
_class
loc:@Variable_1*
_output_shapes
: 
g
Variable_1/readIdentity
Variable_1*
T0*
_class
loc:@Variable_1*
_output_shapes
: 
f
uidPlaceholder*
dtype0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shape:˙˙˙˙˙˙˙˙˙
n
user_genderPlaceholder*
dtype0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shape:˙˙˙˙˙˙˙˙˙
k
user_agePlaceholder*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shape:˙˙˙˙˙˙˙˙˙*
dtype0
k
user_jobPlaceholder*
dtype0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shape:˙˙˙˙˙˙˙˙˙
k
movie_idPlaceholder*
dtype0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shape:˙˙˙˙˙˙˙˙˙
s
movie_categoriesPlaceholder*
dtype0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shape:˙˙˙˙˙˙˙˙˙
o
movie_titlesPlaceholder*
dtype0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shape:˙˙˙˙˙˙˙˙˙
K
AddAdduiduser_age*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
2
initNoOp^Variable/Assign^Variable_1/Assign

init_all_tablesNoOp
Y
save/filename/inputConst*
_output_shapes
: *
valueB Bmodel*
dtype0
n
save/filenamePlaceholderWithDefaultsave/filename/input*
dtype0*
_output_shapes
: *
shape: 
e

save/ConstPlaceholderWithDefaultsave/filename*
dtype0*
_output_shapes
: *
shape: 

save/StringJoin/inputs_1Const*
_output_shapes
: *<
value3B1 B+_temp_f9e9fde539514621b0377c481850d32e/part*
dtype0
d
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
N*
_output_shapes
: 
Q
save/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
k
save/ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
value	B : *
dtype0

save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 

save/SaveV2/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*)
value BBVariableB
Variable_1
v
save/SaveV2/shape_and_slicesConst"/device:CPU:0*
valueBB B *
dtype0*
_output_shapes
:

save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesVariable
Variable_1"/device:CPU:0*
dtypes
2
 
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*
T0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: 
 
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency"/device:CPU:0*
T0*
N*
_output_shapes
:
u
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0

save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency"/device:CPU:0*
_output_shapes
: *
T0

save/RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*)
value BBVariableB
Variable_1*
dtype0
y
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueBB B 
¤
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*
_output_shapes

::*
dtypes
2
m
save/AssignAssignVariablesave/RestoreV2*
T0*
_class
loc:@Variable*
_output_shapes
: 
u
save/Assign_1Assign
Variable_1save/RestoreV2:1*
T0*
_class
loc:@Variable_1*
_output_shapes
: 
8
save/restore_shardNoOp^save/Assign^save/Assign_1
-
save/restore_allNoOp^save/restore_shard"<
save/Const:0save/Identity:0save/restore_all (5 @F8"ť
trainable_variablesŁ 
J

Variable:0Variable/AssignVariable/read:02Variable/initial_value:08
R
Variable_1:0Variable_1/AssignVariable_1/read:02Variable_1/initial_value:08"ą
	variablesŁ 
J

Variable:0Variable/AssignVariable/read:02Variable/initial_value:08
R
Variable_1:0Variable_1/AssignVariable_1/read:02Variable_1/initial_value:08"*
saved_model_main_op

init_all_tables*°
serving_default
5
movie_titles%
movie_titles:0˙˙˙˙˙˙˙˙˙
=
movie_categories)
movie_categories:0˙˙˙˙˙˙˙˙˙
-
user_age!

user_age:0˙˙˙˙˙˙˙˙˙
#
uid
uid:0˙˙˙˙˙˙˙˙˙
3
user_gender$
user_gender:0˙˙˙˙˙˙˙˙˙
-
movie_id!

movie_id:0˙˙˙˙˙˙˙˙˙
-
user_job!

user_job:0˙˙˙˙˙˙˙˙˙!
y
Add:0˙˙˙˙˙˙˙˙˙tensorflow/serving/predict
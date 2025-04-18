��
��
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
�
BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
�
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

$
DisableCopyOnRead
resource�
.
Identity

input"T
output"T"	
Ttype
�
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	"
grad_abool( "
grad_bbool( 
�
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �
?
Mul
x"T
y"T
z"T"
Ttype:
2	�
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
@
ReadVariableOp
resource
value"dtype"
dtypetype�
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
.
Rsqrt
x"T
y"T"
Ttype:

2
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
�
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
L

StringJoin
inputs*N

output"

Nint("
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	
�
VarHandleOp
resource"
	containerstring "
shared_namestring "

debug_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �
9
VarIsInitializedOp
resource
is_initialized
�"serve*2.19.02v2.19.0-rc0-6-ge36baa302928��
�
sequential/dense_1/biasVarHandleOp*
_output_shapes
: *(

debug_namesequential/dense_1/bias/*
dtype0*
shape:*(
shared_namesequential/dense_1/bias

+sequential/dense_1/bias/Read/ReadVariableOpReadVariableOpsequential/dense_1/bias*
_output_shapes
:*
dtype0
�
#Variable/Initializer/ReadVariableOpReadVariableOpsequential/dense_1/bias*
_class
loc:@Variable*
_output_shapes
:*
dtype0
�
VariableVarHandleOp*
_class
loc:@Variable*
_output_shapes
: *

debug_name	Variable/*
dtype0*
shape:*
shared_name
Variable
a
)Variable/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable*
_output_shapes
: 
_
Variable/AssignAssignVariableOpVariable#Variable/Initializer/ReadVariableOp*
dtype0
a
Variable/Read/ReadVariableOpReadVariableOpVariable*
_output_shapes
:*
dtype0
�
sequential/dense_1/kernelVarHandleOp*
_output_shapes
: **

debug_namesequential/dense_1/kernel/*
dtype0*
shape:	�**
shared_namesequential/dense_1/kernel
�
-sequential/dense_1/kernel/Read/ReadVariableOpReadVariableOpsequential/dense_1/kernel*
_output_shapes
:	�*
dtype0
�
%Variable_1/Initializer/ReadVariableOpReadVariableOpsequential/dense_1/kernel*
_class
loc:@Variable_1*
_output_shapes
:	�*
dtype0
�

Variable_1VarHandleOp*
_class
loc:@Variable_1*
_output_shapes
: *

debug_nameVariable_1/*
dtype0*
shape:	�*
shared_name
Variable_1
e
+Variable_1/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_1*
_output_shapes
: 
e
Variable_1/AssignAssignVariableOp
Variable_1%Variable_1/Initializer/ReadVariableOp*
dtype0
j
Variable_1/Read/ReadVariableOpReadVariableOp
Variable_1*
_output_shapes
:	�*
dtype0
�
sequential/dense/biasVarHandleOp*
_output_shapes
: *&

debug_namesequential/dense/bias/*
dtype0*
shape:�*&
shared_namesequential/dense/bias
|
)sequential/dense/bias/Read/ReadVariableOpReadVariableOpsequential/dense/bias*
_output_shapes	
:�*
dtype0
�
%Variable_2/Initializer/ReadVariableOpReadVariableOpsequential/dense/bias*
_class
loc:@Variable_2*
_output_shapes	
:�*
dtype0
�

Variable_2VarHandleOp*
_class
loc:@Variable_2*
_output_shapes
: *

debug_nameVariable_2/*
dtype0*
shape:�*
shared_name
Variable_2
e
+Variable_2/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_2*
_output_shapes
: 
e
Variable_2/AssignAssignVariableOp
Variable_2%Variable_2/Initializer/ReadVariableOp*
dtype0
f
Variable_2/Read/ReadVariableOpReadVariableOp
Variable_2*
_output_shapes	
:�*
dtype0
�
sequential/dense/kernelVarHandleOp*
_output_shapes
: *(

debug_namesequential/dense/kernel/*
dtype0*
shape:���*(
shared_namesequential/dense/kernel
�
+sequential/dense/kernel/Read/ReadVariableOpReadVariableOpsequential/dense/kernel*!
_output_shapes
:���*
dtype0
�
%Variable_3/Initializer/ReadVariableOpReadVariableOpsequential/dense/kernel*
_class
loc:@Variable_3*!
_output_shapes
:���*
dtype0
�

Variable_3VarHandleOp*
_class
loc:@Variable_3*
_output_shapes
: *

debug_nameVariable_3/*
dtype0*
shape:���*
shared_name
Variable_3
e
+Variable_3/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_3*
_output_shapes
: 
e
Variable_3/AssignAssignVariableOp
Variable_3%Variable_3/Initializer/ReadVariableOp*
dtype0
l
Variable_3/Read/ReadVariableOpReadVariableOp
Variable_3*!
_output_shapes
:���*
dtype0
�
0sequential/batch_normalization_2/moving_varianceVarHandleOp*
_output_shapes
: *A

debug_name31sequential/batch_normalization_2/moving_variance/*
dtype0*
shape:�*A
shared_name20sequential/batch_normalization_2/moving_variance
�
Dsequential/batch_normalization_2/moving_variance/Read/ReadVariableOpReadVariableOp0sequential/batch_normalization_2/moving_variance*
_output_shapes	
:�*
dtype0
�
%Variable_4/Initializer/ReadVariableOpReadVariableOp0sequential/batch_normalization_2/moving_variance*
_class
loc:@Variable_4*
_output_shapes	
:�*
dtype0
�

Variable_4VarHandleOp*
_class
loc:@Variable_4*
_output_shapes
: *

debug_nameVariable_4/*
dtype0*
shape:�*
shared_name
Variable_4
e
+Variable_4/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_4*
_output_shapes
: 
e
Variable_4/AssignAssignVariableOp
Variable_4%Variable_4/Initializer/ReadVariableOp*
dtype0
f
Variable_4/Read/ReadVariableOpReadVariableOp
Variable_4*
_output_shapes	
:�*
dtype0
�
,sequential/batch_normalization_2/moving_meanVarHandleOp*
_output_shapes
: *=

debug_name/-sequential/batch_normalization_2/moving_mean/*
dtype0*
shape:�*=
shared_name.,sequential/batch_normalization_2/moving_mean
�
@sequential/batch_normalization_2/moving_mean/Read/ReadVariableOpReadVariableOp,sequential/batch_normalization_2/moving_mean*
_output_shapes	
:�*
dtype0
�
%Variable_5/Initializer/ReadVariableOpReadVariableOp,sequential/batch_normalization_2/moving_mean*
_class
loc:@Variable_5*
_output_shapes	
:�*
dtype0
�

Variable_5VarHandleOp*
_class
loc:@Variable_5*
_output_shapes
: *

debug_nameVariable_5/*
dtype0*
shape:�*
shared_name
Variable_5
e
+Variable_5/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_5*
_output_shapes
: 
e
Variable_5/AssignAssignVariableOp
Variable_5%Variable_5/Initializer/ReadVariableOp*
dtype0
f
Variable_5/Read/ReadVariableOpReadVariableOp
Variable_5*
_output_shapes	
:�*
dtype0
�
%sequential/batch_normalization_2/betaVarHandleOp*
_output_shapes
: *6

debug_name(&sequential/batch_normalization_2/beta/*
dtype0*
shape:�*6
shared_name'%sequential/batch_normalization_2/beta
�
9sequential/batch_normalization_2/beta/Read/ReadVariableOpReadVariableOp%sequential/batch_normalization_2/beta*
_output_shapes	
:�*
dtype0
�
%Variable_6/Initializer/ReadVariableOpReadVariableOp%sequential/batch_normalization_2/beta*
_class
loc:@Variable_6*
_output_shapes	
:�*
dtype0
�

Variable_6VarHandleOp*
_class
loc:@Variable_6*
_output_shapes
: *

debug_nameVariable_6/*
dtype0*
shape:�*
shared_name
Variable_6
e
+Variable_6/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_6*
_output_shapes
: 
e
Variable_6/AssignAssignVariableOp
Variable_6%Variable_6/Initializer/ReadVariableOp*
dtype0
f
Variable_6/Read/ReadVariableOpReadVariableOp
Variable_6*
_output_shapes	
:�*
dtype0
�
&sequential/batch_normalization_2/gammaVarHandleOp*
_output_shapes
: *7

debug_name)'sequential/batch_normalization_2/gamma/*
dtype0*
shape:�*7
shared_name(&sequential/batch_normalization_2/gamma
�
:sequential/batch_normalization_2/gamma/Read/ReadVariableOpReadVariableOp&sequential/batch_normalization_2/gamma*
_output_shapes	
:�*
dtype0
�
%Variable_7/Initializer/ReadVariableOpReadVariableOp&sequential/batch_normalization_2/gamma*
_class
loc:@Variable_7*
_output_shapes	
:�*
dtype0
�

Variable_7VarHandleOp*
_class
loc:@Variable_7*
_output_shapes
: *

debug_nameVariable_7/*
dtype0*
shape:�*
shared_name
Variable_7
e
+Variable_7/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_7*
_output_shapes
: 
e
Variable_7/AssignAssignVariableOp
Variable_7%Variable_7/Initializer/ReadVariableOp*
dtype0
f
Variable_7/Read/ReadVariableOpReadVariableOp
Variable_7*
_output_shapes	
:�*
dtype0
�
sequential/conv2d_2/biasVarHandleOp*
_output_shapes
: *)

debug_namesequential/conv2d_2/bias/*
dtype0*
shape:�*)
shared_namesequential/conv2d_2/bias
�
,sequential/conv2d_2/bias/Read/ReadVariableOpReadVariableOpsequential/conv2d_2/bias*
_output_shapes	
:�*
dtype0
�
%Variable_8/Initializer/ReadVariableOpReadVariableOpsequential/conv2d_2/bias*
_class
loc:@Variable_8*
_output_shapes	
:�*
dtype0
�

Variable_8VarHandleOp*
_class
loc:@Variable_8*
_output_shapes
: *

debug_nameVariable_8/*
dtype0*
shape:�*
shared_name
Variable_8
e
+Variable_8/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_8*
_output_shapes
: 
e
Variable_8/AssignAssignVariableOp
Variable_8%Variable_8/Initializer/ReadVariableOp*
dtype0
f
Variable_8/Read/ReadVariableOpReadVariableOp
Variable_8*
_output_shapes	
:�*
dtype0
�
sequential/conv2d_2/kernelVarHandleOp*
_output_shapes
: *+

debug_namesequential/conv2d_2/kernel/*
dtype0*
shape:@�*+
shared_namesequential/conv2d_2/kernel
�
.sequential/conv2d_2/kernel/Read/ReadVariableOpReadVariableOpsequential/conv2d_2/kernel*'
_output_shapes
:@�*
dtype0
�
%Variable_9/Initializer/ReadVariableOpReadVariableOpsequential/conv2d_2/kernel*
_class
loc:@Variable_9*'
_output_shapes
:@�*
dtype0
�

Variable_9VarHandleOp*
_class
loc:@Variable_9*
_output_shapes
: *

debug_nameVariable_9/*
dtype0*
shape:@�*
shared_name
Variable_9
e
+Variable_9/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_9*
_output_shapes
: 
e
Variable_9/AssignAssignVariableOp
Variable_9%Variable_9/Initializer/ReadVariableOp*
dtype0
r
Variable_9/Read/ReadVariableOpReadVariableOp
Variable_9*'
_output_shapes
:@�*
dtype0
�
0sequential/batch_normalization_1/moving_varianceVarHandleOp*
_output_shapes
: *A

debug_name31sequential/batch_normalization_1/moving_variance/*
dtype0*
shape:@*A
shared_name20sequential/batch_normalization_1/moving_variance
�
Dsequential/batch_normalization_1/moving_variance/Read/ReadVariableOpReadVariableOp0sequential/batch_normalization_1/moving_variance*
_output_shapes
:@*
dtype0
�
&Variable_10/Initializer/ReadVariableOpReadVariableOp0sequential/batch_normalization_1/moving_variance*
_class
loc:@Variable_10*
_output_shapes
:@*
dtype0
�
Variable_10VarHandleOp*
_class
loc:@Variable_10*
_output_shapes
: *

debug_nameVariable_10/*
dtype0*
shape:@*
shared_nameVariable_10
g
,Variable_10/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_10*
_output_shapes
: 
h
Variable_10/AssignAssignVariableOpVariable_10&Variable_10/Initializer/ReadVariableOp*
dtype0
g
Variable_10/Read/ReadVariableOpReadVariableOpVariable_10*
_output_shapes
:@*
dtype0
�
,sequential/batch_normalization_1/moving_meanVarHandleOp*
_output_shapes
: *=

debug_name/-sequential/batch_normalization_1/moving_mean/*
dtype0*
shape:@*=
shared_name.,sequential/batch_normalization_1/moving_mean
�
@sequential/batch_normalization_1/moving_mean/Read/ReadVariableOpReadVariableOp,sequential/batch_normalization_1/moving_mean*
_output_shapes
:@*
dtype0
�
&Variable_11/Initializer/ReadVariableOpReadVariableOp,sequential/batch_normalization_1/moving_mean*
_class
loc:@Variable_11*
_output_shapes
:@*
dtype0
�
Variable_11VarHandleOp*
_class
loc:@Variable_11*
_output_shapes
: *

debug_nameVariable_11/*
dtype0*
shape:@*
shared_nameVariable_11
g
,Variable_11/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_11*
_output_shapes
: 
h
Variable_11/AssignAssignVariableOpVariable_11&Variable_11/Initializer/ReadVariableOp*
dtype0
g
Variable_11/Read/ReadVariableOpReadVariableOpVariable_11*
_output_shapes
:@*
dtype0
�
%sequential/batch_normalization_1/betaVarHandleOp*
_output_shapes
: *6

debug_name(&sequential/batch_normalization_1/beta/*
dtype0*
shape:@*6
shared_name'%sequential/batch_normalization_1/beta
�
9sequential/batch_normalization_1/beta/Read/ReadVariableOpReadVariableOp%sequential/batch_normalization_1/beta*
_output_shapes
:@*
dtype0
�
&Variable_12/Initializer/ReadVariableOpReadVariableOp%sequential/batch_normalization_1/beta*
_class
loc:@Variable_12*
_output_shapes
:@*
dtype0
�
Variable_12VarHandleOp*
_class
loc:@Variable_12*
_output_shapes
: *

debug_nameVariable_12/*
dtype0*
shape:@*
shared_nameVariable_12
g
,Variable_12/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_12*
_output_shapes
: 
h
Variable_12/AssignAssignVariableOpVariable_12&Variable_12/Initializer/ReadVariableOp*
dtype0
g
Variable_12/Read/ReadVariableOpReadVariableOpVariable_12*
_output_shapes
:@*
dtype0
�
&sequential/batch_normalization_1/gammaVarHandleOp*
_output_shapes
: *7

debug_name)'sequential/batch_normalization_1/gamma/*
dtype0*
shape:@*7
shared_name(&sequential/batch_normalization_1/gamma
�
:sequential/batch_normalization_1/gamma/Read/ReadVariableOpReadVariableOp&sequential/batch_normalization_1/gamma*
_output_shapes
:@*
dtype0
�
&Variable_13/Initializer/ReadVariableOpReadVariableOp&sequential/batch_normalization_1/gamma*
_class
loc:@Variable_13*
_output_shapes
:@*
dtype0
�
Variable_13VarHandleOp*
_class
loc:@Variable_13*
_output_shapes
: *

debug_nameVariable_13/*
dtype0*
shape:@*
shared_nameVariable_13
g
,Variable_13/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_13*
_output_shapes
: 
h
Variable_13/AssignAssignVariableOpVariable_13&Variable_13/Initializer/ReadVariableOp*
dtype0
g
Variable_13/Read/ReadVariableOpReadVariableOpVariable_13*
_output_shapes
:@*
dtype0
�
sequential/conv2d_1/biasVarHandleOp*
_output_shapes
: *)

debug_namesequential/conv2d_1/bias/*
dtype0*
shape:@*)
shared_namesequential/conv2d_1/bias
�
,sequential/conv2d_1/bias/Read/ReadVariableOpReadVariableOpsequential/conv2d_1/bias*
_output_shapes
:@*
dtype0
�
&Variable_14/Initializer/ReadVariableOpReadVariableOpsequential/conv2d_1/bias*
_class
loc:@Variable_14*
_output_shapes
:@*
dtype0
�
Variable_14VarHandleOp*
_class
loc:@Variable_14*
_output_shapes
: *

debug_nameVariable_14/*
dtype0*
shape:@*
shared_nameVariable_14
g
,Variable_14/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_14*
_output_shapes
: 
h
Variable_14/AssignAssignVariableOpVariable_14&Variable_14/Initializer/ReadVariableOp*
dtype0
g
Variable_14/Read/ReadVariableOpReadVariableOpVariable_14*
_output_shapes
:@*
dtype0
�
sequential/conv2d_1/kernelVarHandleOp*
_output_shapes
: *+

debug_namesequential/conv2d_1/kernel/*
dtype0*
shape: @*+
shared_namesequential/conv2d_1/kernel
�
.sequential/conv2d_1/kernel/Read/ReadVariableOpReadVariableOpsequential/conv2d_1/kernel*&
_output_shapes
: @*
dtype0
�
&Variable_15/Initializer/ReadVariableOpReadVariableOpsequential/conv2d_1/kernel*
_class
loc:@Variable_15*&
_output_shapes
: @*
dtype0
�
Variable_15VarHandleOp*
_class
loc:@Variable_15*
_output_shapes
: *

debug_nameVariable_15/*
dtype0*
shape: @*
shared_nameVariable_15
g
,Variable_15/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_15*
_output_shapes
: 
h
Variable_15/AssignAssignVariableOpVariable_15&Variable_15/Initializer/ReadVariableOp*
dtype0
s
Variable_15/Read/ReadVariableOpReadVariableOpVariable_15*&
_output_shapes
: @*
dtype0
�
.sequential/batch_normalization/moving_varianceVarHandleOp*
_output_shapes
: *?

debug_name1/sequential/batch_normalization/moving_variance/*
dtype0*
shape: *?
shared_name0.sequential/batch_normalization/moving_variance
�
Bsequential/batch_normalization/moving_variance/Read/ReadVariableOpReadVariableOp.sequential/batch_normalization/moving_variance*
_output_shapes
: *
dtype0
�
&Variable_16/Initializer/ReadVariableOpReadVariableOp.sequential/batch_normalization/moving_variance*
_class
loc:@Variable_16*
_output_shapes
: *
dtype0
�
Variable_16VarHandleOp*
_class
loc:@Variable_16*
_output_shapes
: *

debug_nameVariable_16/*
dtype0*
shape: *
shared_nameVariable_16
g
,Variable_16/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_16*
_output_shapes
: 
h
Variable_16/AssignAssignVariableOpVariable_16&Variable_16/Initializer/ReadVariableOp*
dtype0
g
Variable_16/Read/ReadVariableOpReadVariableOpVariable_16*
_output_shapes
: *
dtype0
�
*sequential/batch_normalization/moving_meanVarHandleOp*
_output_shapes
: *;

debug_name-+sequential/batch_normalization/moving_mean/*
dtype0*
shape: *;
shared_name,*sequential/batch_normalization/moving_mean
�
>sequential/batch_normalization/moving_mean/Read/ReadVariableOpReadVariableOp*sequential/batch_normalization/moving_mean*
_output_shapes
: *
dtype0
�
&Variable_17/Initializer/ReadVariableOpReadVariableOp*sequential/batch_normalization/moving_mean*
_class
loc:@Variable_17*
_output_shapes
: *
dtype0
�
Variable_17VarHandleOp*
_class
loc:@Variable_17*
_output_shapes
: *

debug_nameVariable_17/*
dtype0*
shape: *
shared_nameVariable_17
g
,Variable_17/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_17*
_output_shapes
: 
h
Variable_17/AssignAssignVariableOpVariable_17&Variable_17/Initializer/ReadVariableOp*
dtype0
g
Variable_17/Read/ReadVariableOpReadVariableOpVariable_17*
_output_shapes
: *
dtype0
�
#sequential/batch_normalization/betaVarHandleOp*
_output_shapes
: *4

debug_name&$sequential/batch_normalization/beta/*
dtype0*
shape: *4
shared_name%#sequential/batch_normalization/beta
�
7sequential/batch_normalization/beta/Read/ReadVariableOpReadVariableOp#sequential/batch_normalization/beta*
_output_shapes
: *
dtype0
�
&Variable_18/Initializer/ReadVariableOpReadVariableOp#sequential/batch_normalization/beta*
_class
loc:@Variable_18*
_output_shapes
: *
dtype0
�
Variable_18VarHandleOp*
_class
loc:@Variable_18*
_output_shapes
: *

debug_nameVariable_18/*
dtype0*
shape: *
shared_nameVariable_18
g
,Variable_18/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_18*
_output_shapes
: 
h
Variable_18/AssignAssignVariableOpVariable_18&Variable_18/Initializer/ReadVariableOp*
dtype0
g
Variable_18/Read/ReadVariableOpReadVariableOpVariable_18*
_output_shapes
: *
dtype0
�
$sequential/batch_normalization/gammaVarHandleOp*
_output_shapes
: *5

debug_name'%sequential/batch_normalization/gamma/*
dtype0*
shape: *5
shared_name&$sequential/batch_normalization/gamma
�
8sequential/batch_normalization/gamma/Read/ReadVariableOpReadVariableOp$sequential/batch_normalization/gamma*
_output_shapes
: *
dtype0
�
&Variable_19/Initializer/ReadVariableOpReadVariableOp$sequential/batch_normalization/gamma*
_class
loc:@Variable_19*
_output_shapes
: *
dtype0
�
Variable_19VarHandleOp*
_class
loc:@Variable_19*
_output_shapes
: *

debug_nameVariable_19/*
dtype0*
shape: *
shared_nameVariable_19
g
,Variable_19/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_19*
_output_shapes
: 
h
Variable_19/AssignAssignVariableOpVariable_19&Variable_19/Initializer/ReadVariableOp*
dtype0
g
Variable_19/Read/ReadVariableOpReadVariableOpVariable_19*
_output_shapes
: *
dtype0
�
sequential/conv2d/biasVarHandleOp*
_output_shapes
: *'

debug_namesequential/conv2d/bias/*
dtype0*
shape: *'
shared_namesequential/conv2d/bias
}
*sequential/conv2d/bias/Read/ReadVariableOpReadVariableOpsequential/conv2d/bias*
_output_shapes
: *
dtype0
�
&Variable_20/Initializer/ReadVariableOpReadVariableOpsequential/conv2d/bias*
_class
loc:@Variable_20*
_output_shapes
: *
dtype0
�
Variable_20VarHandleOp*
_class
loc:@Variable_20*
_output_shapes
: *

debug_nameVariable_20/*
dtype0*
shape: *
shared_nameVariable_20
g
,Variable_20/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_20*
_output_shapes
: 
h
Variable_20/AssignAssignVariableOpVariable_20&Variable_20/Initializer/ReadVariableOp*
dtype0
g
Variable_20/Read/ReadVariableOpReadVariableOpVariable_20*
_output_shapes
: *
dtype0
�
sequential/conv2d/kernelVarHandleOp*
_output_shapes
: *)

debug_namesequential/conv2d/kernel/*
dtype0*
shape: *)
shared_namesequential/conv2d/kernel
�
,sequential/conv2d/kernel/Read/ReadVariableOpReadVariableOpsequential/conv2d/kernel*&
_output_shapes
: *
dtype0
�
&Variable_21/Initializer/ReadVariableOpReadVariableOpsequential/conv2d/kernel*
_class
loc:@Variable_21*&
_output_shapes
: *
dtype0
�
Variable_21VarHandleOp*
_class
loc:@Variable_21*
_output_shapes
: *

debug_nameVariable_21/*
dtype0*
shape: *
shared_nameVariable_21
g
,Variable_21/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_21*
_output_shapes
: 
h
Variable_21/AssignAssignVariableOpVariable_21&Variable_21/Initializer/ReadVariableOp*
dtype0
s
Variable_21/Read/ReadVariableOpReadVariableOpVariable_21*&
_output_shapes
: *
dtype0
�
rmsprop/learning_rateVarHandleOp*
_output_shapes
: *&

debug_namermsprop/learning_rate/*
dtype0*
shape: *&
shared_namermsprop/learning_rate
w
)rmsprop/learning_rate/Read/ReadVariableOpReadVariableOprmsprop/learning_rate*
_output_shapes
: *
dtype0
�
&Variable_22/Initializer/ReadVariableOpReadVariableOprmsprop/learning_rate*
_class
loc:@Variable_22*
_output_shapes
: *
dtype0
�
Variable_22VarHandleOp*
_class
loc:@Variable_22*
_output_shapes
: *

debug_nameVariable_22/*
dtype0*
shape: *
shared_nameVariable_22
g
,Variable_22/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_22*
_output_shapes
: 
h
Variable_22/AssignAssignVariableOpVariable_22&Variable_22/Initializer/ReadVariableOp*
dtype0
c
Variable_22/Read/ReadVariableOpReadVariableOpVariable_22*
_output_shapes
: *
dtype0
�
rmsprop/iterationVarHandleOp*
_output_shapes
: *"

debug_namermsprop/iteration/*
dtype0	*
shape: *"
shared_namermsprop/iteration
o
%rmsprop/iteration/Read/ReadVariableOpReadVariableOprmsprop/iteration*
_output_shapes
: *
dtype0	
�
&Variable_23/Initializer/ReadVariableOpReadVariableOprmsprop/iteration*
_class
loc:@Variable_23*
_output_shapes
: *
dtype0	
�
Variable_23VarHandleOp*
_class
loc:@Variable_23*
_output_shapes
: *

debug_nameVariable_23/*
dtype0	*
shape: *
shared_nameVariable_23
g
,Variable_23/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_23*
_output_shapes
: 
h
Variable_23/AssignAssignVariableOpVariable_23&Variable_23/Initializer/ReadVariableOp*
dtype0	
c
Variable_23/Read/ReadVariableOpReadVariableOpVariable_23*
_output_shapes
: *
dtype0	
�
serving_default_inputsPlaceholder*1
_output_shapes
:�����������*
dtype0*&
shape:�����������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_inputssequential/conv2d/kernelsequential/conv2d/bias*sequential/batch_normalization/moving_mean.sequential/batch_normalization/moving_variance$sequential/batch_normalization/gamma#sequential/batch_normalization/betasequential/conv2d_1/kernelsequential/conv2d_1/bias,sequential/batch_normalization_1/moving_mean0sequential/batch_normalization_1/moving_variance&sequential/batch_normalization_1/gamma%sequential/batch_normalization_1/betasequential/conv2d_2/kernelsequential/conv2d_2/bias,sequential/batch_normalization_2/moving_mean0sequential/batch_normalization_2/moving_variance&sequential/batch_normalization_2/gamma%sequential/batch_normalization_2/betasequential/dense/kernelsequential/dense/biassequential/dense_1/kernelsequential/dense_1/bias*"
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*8
_read_only_resource_inputs
	
*5
config_proto%#

CPU

GPU2*0J 8� �J *:
f5R3
1__inference_signature_wrapper_serving_default_342

NoOpNoOp
�)
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�)
value�)B�) B�)
�
_functional
	optimizer
_default_save_signature
_inbound_nodes
_outbound_nodes
_losses
	_loss_ids
_losses_override
	_layers

_build_shapes_dict

signatures*
�
_tracked
_inbound_nodes
_outbound_nodes
_losses
_losses_override
_operations
_layers
_build_shapes_dict
output_names
_default_save_signature*
u

_variables
_trainable_variables
 _trainable_variables_indices
_iterations
_learning_rate*

trace_0* 
* 
* 
* 
* 
* 
j
0
1
2
3
 4
!5
"6
#7
$8
%9
&10
'11
(12
)13*
* 

*serving_default* 
* 
* 
* 
* 
* 
j
0
1
2
3
 4
!5
"6
#7
$8
%9
&10
'11
(12
)13*
j
0
1
2
3
 4
!5
"6
#7
$8
%9
&10
'11
(12
)13*
* 
* 

+trace_0* 

0
1*
* 
* 
UO
VARIABLE_VALUEVariable_230optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUEVariable_223optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
]
,_inbound_nodes
-_outbound_nodes
._losses
/	_loss_ids
0_losses_override* 
�
1_kernel
2bias
3_inbound_nodes
4_outbound_nodes
5_losses
6	_loss_ids
7_losses_override
8_build_shapes_dict*
�
	9gamma
:beta
;moving_mean
<moving_variance
=_inbound_nodes
>_outbound_nodes
?_losses
@	_loss_ids
A_losses_override
B_reduction_axes
C_build_shapes_dict*
]
D_inbound_nodes
E_outbound_nodes
F_losses
G	_loss_ids
H_losses_override* 
�
I_kernel
Jbias
K_inbound_nodes
L_outbound_nodes
M_losses
N	_loss_ids
O_losses_override
P_build_shapes_dict*
�
	Qgamma
Rbeta
Smoving_mean
Tmoving_variance
U_inbound_nodes
V_outbound_nodes
W_losses
X	_loss_ids
Y_losses_override
Z_reduction_axes
[_build_shapes_dict*
]
\_inbound_nodes
]_outbound_nodes
^_losses
_	_loss_ids
`_losses_override* 
�
a_kernel
bbias
c_inbound_nodes
d_outbound_nodes
e_losses
f	_loss_ids
g_losses_override
h_build_shapes_dict*
�
	igamma
jbeta
kmoving_mean
lmoving_variance
m_inbound_nodes
n_outbound_nodes
o_losses
p	_loss_ids
q_losses_override
r_reduction_axes
s_build_shapes_dict*
]
t_inbound_nodes
u_outbound_nodes
v_losses
w	_loss_ids
x_losses_override* 
u
y_inbound_nodes
z_outbound_nodes
{_losses
|	_loss_ids
}_losses_override
~_build_shapes_dict* 
�
_kernel
	�bias
�_inbound_nodes
�_outbound_nodes
�_losses
�	_loss_ids
�_losses_override
�_build_shapes_dict*
b
�_inbound_nodes
�_outbound_nodes
�_losses
�	_loss_ids
�_losses_override* 
�
�_kernel
	�bias
�_inbound_nodes
�_outbound_nodes
�_losses
�	_loss_ids
�_losses_override
�_build_shapes_dict*
* 
* 
* 
* 
* 
* 
* 
QK
VARIABLE_VALUEVariable_21,_layers/1/_kernel/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEVariable_20)_layers/1/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
OI
VARIABLE_VALUEVariable_19*_layers/2/gamma/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEVariable_18)_layers/2/beta/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEVariable_170_layers/2/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEVariable_164_layers/2/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
QK
VARIABLE_VALUEVariable_15,_layers/4/_kernel/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEVariable_14)_layers/4/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
OI
VARIABLE_VALUEVariable_13*_layers/5/gamma/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEVariable_12)_layers/5/beta/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEVariable_110_layers/5/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEVariable_104_layers/5/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
PJ
VARIABLE_VALUE
Variable_9,_layers/7/_kernel/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUE
Variable_8)_layers/7/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
NH
VARIABLE_VALUE
Variable_7*_layers/8/gamma/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUE
Variable_6)_layers/8/beta/.ATTRIBUTES/VARIABLE_VALUE*
TN
VARIABLE_VALUE
Variable_50_layers/8/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE
Variable_44_layers/8/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
QK
VARIABLE_VALUE
Variable_3-_layers/11/_kernel/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Variable_2*_layers/11/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
QK
VARIABLE_VALUE
Variable_1-_layers/13/_kernel/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEVariable*_layers/13/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameVariable_23Variable_22Variable_21Variable_20Variable_19Variable_18Variable_17Variable_16Variable_15Variable_14Variable_13Variable_12Variable_11Variable_10
Variable_9
Variable_8
Variable_7
Variable_6
Variable_5
Variable_4
Variable_3
Variable_2
Variable_1VariableConst*%
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *5
config_proto%#

CPU

GPU2*0J 8� �J *%
f R
__inference__traced_save_705
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameVariable_23Variable_22Variable_21Variable_20Variable_19Variable_18Variable_17Variable_16Variable_15Variable_14Variable_13Variable_12Variable_11Variable_10
Variable_9
Variable_8
Variable_7
Variable_6
Variable_5
Variable_4
Variable_3
Variable_2
Variable_1Variable*$
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *5
config_proto%#

CPU

GPU2*0J 8� �J *(
f#R!
__inference__traced_restore_786��
��
�
__inference_serving_default_292

inputsS
9sequential_1_conv2d_1_convolution_readvariableop_resource: C
5sequential_1_conv2d_1_reshape_readvariableop_resource: M
?sequential_1_batch_normalization_1_cast_readvariableop_resource: O
Asequential_1_batch_normalization_1_cast_1_readvariableop_resource: O
Asequential_1_batch_normalization_1_cast_2_readvariableop_resource: O
Asequential_1_batch_normalization_1_cast_3_readvariableop_resource: U
;sequential_1_conv2d_1_2_convolution_readvariableop_resource: @E
7sequential_1_conv2d_1_2_reshape_readvariableop_resource:@O
Asequential_1_batch_normalization_1_2_cast_readvariableop_resource:@Q
Csequential_1_batch_normalization_1_2_cast_1_readvariableop_resource:@Q
Csequential_1_batch_normalization_1_2_cast_2_readvariableop_resource:@Q
Csequential_1_batch_normalization_1_2_cast_3_readvariableop_resource:@V
;sequential_1_conv2d_2_1_convolution_readvariableop_resource:@�F
7sequential_1_conv2d_2_1_reshape_readvariableop_resource:	�P
Asequential_1_batch_normalization_2_1_cast_readvariableop_resource:	�R
Csequential_1_batch_normalization_2_1_cast_1_readvariableop_resource:	�R
Csequential_1_batch_normalization_2_1_cast_2_readvariableop_resource:	�R
Csequential_1_batch_normalization_2_1_cast_3_readvariableop_resource:	�F
1sequential_1_dense_1_cast_readvariableop_resource:���C
4sequential_1_dense_1_biasadd_readvariableop_resource:	�F
3sequential_1_dense_1_2_cast_readvariableop_resource:	�D
6sequential_1_dense_1_2_biasadd_readvariableop_resource:
identity��6sequential_1/batch_normalization_1/Cast/ReadVariableOp�8sequential_1/batch_normalization_1/Cast_1/ReadVariableOp�8sequential_1/batch_normalization_1/Cast_2/ReadVariableOp�8sequential_1/batch_normalization_1/Cast_3/ReadVariableOp�8sequential_1/batch_normalization_1_2/Cast/ReadVariableOp�:sequential_1/batch_normalization_1_2/Cast_1/ReadVariableOp�:sequential_1/batch_normalization_1_2/Cast_2/ReadVariableOp�:sequential_1/batch_normalization_1_2/Cast_3/ReadVariableOp�8sequential_1/batch_normalization_2_1/Cast/ReadVariableOp�:sequential_1/batch_normalization_2_1/Cast_1/ReadVariableOp�:sequential_1/batch_normalization_2_1/Cast_2/ReadVariableOp�:sequential_1/batch_normalization_2_1/Cast_3/ReadVariableOp�,sequential_1/conv2d_1/Reshape/ReadVariableOp�0sequential_1/conv2d_1/convolution/ReadVariableOp�.sequential_1/conv2d_1_2/Reshape/ReadVariableOp�2sequential_1/conv2d_1_2/convolution/ReadVariableOp�.sequential_1/conv2d_2_1/Reshape/ReadVariableOp�2sequential_1/conv2d_2_1/convolution/ReadVariableOp�+sequential_1/dense_1/BiasAdd/ReadVariableOp�(sequential_1/dense_1/Cast/ReadVariableOp�-sequential_1/dense_1_2/BiasAdd/ReadVariableOp�*sequential_1/dense_1_2/Cast/ReadVariableOp�
0sequential_1/conv2d_1/convolution/ReadVariableOpReadVariableOp9sequential_1_conv2d_1_convolution_readvariableop_resource*&
_output_shapes
: *
dtype0�
!sequential_1/conv2d_1/convolutionConv2Dinputs8sequential_1/conv2d_1/convolution/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� *
paddingSAME*
strides
�
,sequential_1/conv2d_1/Reshape/ReadVariableOpReadVariableOp5sequential_1_conv2d_1_reshape_readvariableop_resource*
_output_shapes
: *
dtype0|
#sequential_1/conv2d_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"             �
sequential_1/conv2d_1/ReshapeReshape4sequential_1/conv2d_1/Reshape/ReadVariableOp:value:0,sequential_1/conv2d_1/Reshape/shape:output:0*
T0*&
_output_shapes
: u
sequential_1/conv2d_1/SqueezeSqueeze&sequential_1/conv2d_1/Reshape:output:0*
T0*
_output_shapes
: �
sequential_1/conv2d_1/BiasAddBiasAdd*sequential_1/conv2d_1/convolution:output:0&sequential_1/conv2d_1/Squeeze:output:0*
T0*1
_output_shapes
:����������� �
sequential_1/conv2d_1/ReluRelu&sequential_1/conv2d_1/BiasAdd:output:0*
T0*1
_output_shapes
:����������� �
6sequential_1/batch_normalization_1/Cast/ReadVariableOpReadVariableOp?sequential_1_batch_normalization_1_cast_readvariableop_resource*
_output_shapes
: *
dtype0�
8sequential_1/batch_normalization_1/Cast_1/ReadVariableOpReadVariableOpAsequential_1_batch_normalization_1_cast_1_readvariableop_resource*
_output_shapes
: *
dtype0�
8sequential_1/batch_normalization_1/Cast_2/ReadVariableOpReadVariableOpAsequential_1_batch_normalization_1_cast_2_readvariableop_resource*
_output_shapes
: *
dtype0�
8sequential_1/batch_normalization_1/Cast_3/ReadVariableOpReadVariableOpAsequential_1_batch_normalization_1_cast_3_readvariableop_resource*
_output_shapes
: *
dtype0w
2sequential_1/batch_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
0sequential_1/batch_normalization_1/batchnorm/addAddV2@sequential_1/batch_normalization_1/Cast_1/ReadVariableOp:value:0;sequential_1/batch_normalization_1/batchnorm/add/y:output:0*
T0*
_output_shapes
: �
2sequential_1/batch_normalization_1/batchnorm/RsqrtRsqrt4sequential_1/batch_normalization_1/batchnorm/add:z:0*
T0*
_output_shapes
: �
0sequential_1/batch_normalization_1/batchnorm/mulMul6sequential_1/batch_normalization_1/batchnorm/Rsqrt:y:0@sequential_1/batch_normalization_1/Cast_2/ReadVariableOp:value:0*
T0*
_output_shapes
: �
2sequential_1/batch_normalization_1/batchnorm/mul_1Mul(sequential_1/conv2d_1/Relu:activations:04sequential_1/batch_normalization_1/batchnorm/mul:z:0*
T0*1
_output_shapes
:����������� �
2sequential_1/batch_normalization_1/batchnorm/mul_2Mul>sequential_1/batch_normalization_1/Cast/ReadVariableOp:value:04sequential_1/batch_normalization_1/batchnorm/mul:z:0*
T0*
_output_shapes
: �
0sequential_1/batch_normalization_1/batchnorm/subSub@sequential_1/batch_normalization_1/Cast_3/ReadVariableOp:value:06sequential_1/batch_normalization_1/batchnorm/mul_2:z:0*
T0*
_output_shapes
: �
2sequential_1/batch_normalization_1/batchnorm/add_1AddV26sequential_1/batch_normalization_1/batchnorm/mul_1:z:04sequential_1/batch_normalization_1/batchnorm/sub:z:0*
T0*1
_output_shapes
:����������� �
&sequential_1/max_pooling2d_1/MaxPool2dMaxPool6sequential_1/batch_normalization_1/batchnorm/add_1:z:0*/
_output_shapes
:���������KK *
ksize
*
paddingVALID*
strides
�
2sequential_1/conv2d_1_2/convolution/ReadVariableOpReadVariableOp;sequential_1_conv2d_1_2_convolution_readvariableop_resource*&
_output_shapes
: @*
dtype0�
#sequential_1/conv2d_1_2/convolutionConv2D/sequential_1/max_pooling2d_1/MaxPool2d:output:0:sequential_1/conv2d_1_2/convolution/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������KK@*
paddingSAME*
strides
�
.sequential_1/conv2d_1_2/Reshape/ReadVariableOpReadVariableOp7sequential_1_conv2d_1_2_reshape_readvariableop_resource*
_output_shapes
:@*
dtype0~
%sequential_1/conv2d_1_2/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"         @   �
sequential_1/conv2d_1_2/ReshapeReshape6sequential_1/conv2d_1_2/Reshape/ReadVariableOp:value:0.sequential_1/conv2d_1_2/Reshape/shape:output:0*
T0*&
_output_shapes
:@y
sequential_1/conv2d_1_2/SqueezeSqueeze(sequential_1/conv2d_1_2/Reshape:output:0*
T0*
_output_shapes
:@�
sequential_1/conv2d_1_2/BiasAddBiasAdd,sequential_1/conv2d_1_2/convolution:output:0(sequential_1/conv2d_1_2/Squeeze:output:0*
T0*/
_output_shapes
:���������KK@�
sequential_1/conv2d_1_2/ReluRelu(sequential_1/conv2d_1_2/BiasAdd:output:0*
T0*/
_output_shapes
:���������KK@�
8sequential_1/batch_normalization_1_2/Cast/ReadVariableOpReadVariableOpAsequential_1_batch_normalization_1_2_cast_readvariableop_resource*
_output_shapes
:@*
dtype0�
:sequential_1/batch_normalization_1_2/Cast_1/ReadVariableOpReadVariableOpCsequential_1_batch_normalization_1_2_cast_1_readvariableop_resource*
_output_shapes
:@*
dtype0�
:sequential_1/batch_normalization_1_2/Cast_2/ReadVariableOpReadVariableOpCsequential_1_batch_normalization_1_2_cast_2_readvariableop_resource*
_output_shapes
:@*
dtype0�
:sequential_1/batch_normalization_1_2/Cast_3/ReadVariableOpReadVariableOpCsequential_1_batch_normalization_1_2_cast_3_readvariableop_resource*
_output_shapes
:@*
dtype0y
4sequential_1/batch_normalization_1_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
2sequential_1/batch_normalization_1_2/batchnorm/addAddV2Bsequential_1/batch_normalization_1_2/Cast_1/ReadVariableOp:value:0=sequential_1/batch_normalization_1_2/batchnorm/add/y:output:0*
T0*
_output_shapes
:@�
4sequential_1/batch_normalization_1_2/batchnorm/RsqrtRsqrt6sequential_1/batch_normalization_1_2/batchnorm/add:z:0*
T0*
_output_shapes
:@�
2sequential_1/batch_normalization_1_2/batchnorm/mulMul8sequential_1/batch_normalization_1_2/batchnorm/Rsqrt:y:0Bsequential_1/batch_normalization_1_2/Cast_2/ReadVariableOp:value:0*
T0*
_output_shapes
:@�
4sequential_1/batch_normalization_1_2/batchnorm/mul_1Mul*sequential_1/conv2d_1_2/Relu:activations:06sequential_1/batch_normalization_1_2/batchnorm/mul:z:0*
T0*/
_output_shapes
:���������KK@�
4sequential_1/batch_normalization_1_2/batchnorm/mul_2Mul@sequential_1/batch_normalization_1_2/Cast/ReadVariableOp:value:06sequential_1/batch_normalization_1_2/batchnorm/mul:z:0*
T0*
_output_shapes
:@�
2sequential_1/batch_normalization_1_2/batchnorm/subSubBsequential_1/batch_normalization_1_2/Cast_3/ReadVariableOp:value:08sequential_1/batch_normalization_1_2/batchnorm/mul_2:z:0*
T0*
_output_shapes
:@�
4sequential_1/batch_normalization_1_2/batchnorm/add_1AddV28sequential_1/batch_normalization_1_2/batchnorm/mul_1:z:06sequential_1/batch_normalization_1_2/batchnorm/sub:z:0*
T0*/
_output_shapes
:���������KK@�
(sequential_1/max_pooling2d_1_2/MaxPool2dMaxPool8sequential_1/batch_normalization_1_2/batchnorm/add_1:z:0*/
_output_shapes
:���������%%@*
ksize
*
paddingVALID*
strides
�
2sequential_1/conv2d_2_1/convolution/ReadVariableOpReadVariableOp;sequential_1_conv2d_2_1_convolution_readvariableop_resource*'
_output_shapes
:@�*
dtype0�
#sequential_1/conv2d_2_1/convolutionConv2D1sequential_1/max_pooling2d_1_2/MaxPool2d:output:0:sequential_1/conv2d_2_1/convolution/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������%%�*
paddingSAME*
strides
�
.sequential_1/conv2d_2_1/Reshape/ReadVariableOpReadVariableOp7sequential_1_conv2d_2_1_reshape_readvariableop_resource*
_output_shapes	
:�*
dtype0~
%sequential_1/conv2d_2_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"         �   �
sequential_1/conv2d_2_1/ReshapeReshape6sequential_1/conv2d_2_1/Reshape/ReadVariableOp:value:0.sequential_1/conv2d_2_1/Reshape/shape:output:0*
T0*'
_output_shapes
:�z
sequential_1/conv2d_2_1/SqueezeSqueeze(sequential_1/conv2d_2_1/Reshape:output:0*
T0*
_output_shapes	
:��
sequential_1/conv2d_2_1/BiasAddBiasAdd,sequential_1/conv2d_2_1/convolution:output:0(sequential_1/conv2d_2_1/Squeeze:output:0*
T0*0
_output_shapes
:���������%%��
sequential_1/conv2d_2_1/ReluRelu(sequential_1/conv2d_2_1/BiasAdd:output:0*
T0*0
_output_shapes
:���������%%��
8sequential_1/batch_normalization_2_1/Cast/ReadVariableOpReadVariableOpAsequential_1_batch_normalization_2_1_cast_readvariableop_resource*
_output_shapes	
:�*
dtype0�
:sequential_1/batch_normalization_2_1/Cast_1/ReadVariableOpReadVariableOpCsequential_1_batch_normalization_2_1_cast_1_readvariableop_resource*
_output_shapes	
:�*
dtype0�
:sequential_1/batch_normalization_2_1/Cast_2/ReadVariableOpReadVariableOpCsequential_1_batch_normalization_2_1_cast_2_readvariableop_resource*
_output_shapes	
:�*
dtype0�
:sequential_1/batch_normalization_2_1/Cast_3/ReadVariableOpReadVariableOpCsequential_1_batch_normalization_2_1_cast_3_readvariableop_resource*
_output_shapes	
:�*
dtype0y
4sequential_1/batch_normalization_2_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
2sequential_1/batch_normalization_2_1/batchnorm/addAddV2Bsequential_1/batch_normalization_2_1/Cast_1/ReadVariableOp:value:0=sequential_1/batch_normalization_2_1/batchnorm/add/y:output:0*
T0*
_output_shapes	
:��
4sequential_1/batch_normalization_2_1/batchnorm/RsqrtRsqrt6sequential_1/batch_normalization_2_1/batchnorm/add:z:0*
T0*
_output_shapes	
:��
2sequential_1/batch_normalization_2_1/batchnorm/mulMul8sequential_1/batch_normalization_2_1/batchnorm/Rsqrt:y:0Bsequential_1/batch_normalization_2_1/Cast_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:��
4sequential_1/batch_normalization_2_1/batchnorm/mul_1Mul*sequential_1/conv2d_2_1/Relu:activations:06sequential_1/batch_normalization_2_1/batchnorm/mul:z:0*
T0*0
_output_shapes
:���������%%��
4sequential_1/batch_normalization_2_1/batchnorm/mul_2Mul@sequential_1/batch_normalization_2_1/Cast/ReadVariableOp:value:06sequential_1/batch_normalization_2_1/batchnorm/mul:z:0*
T0*
_output_shapes	
:��
2sequential_1/batch_normalization_2_1/batchnorm/subSubBsequential_1/batch_normalization_2_1/Cast_3/ReadVariableOp:value:08sequential_1/batch_normalization_2_1/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:��
4sequential_1/batch_normalization_2_1/batchnorm/add_1AddV28sequential_1/batch_normalization_2_1/batchnorm/mul_1:z:06sequential_1/batch_normalization_2_1/batchnorm/sub:z:0*
T0*0
_output_shapes
:���������%%��
(sequential_1/max_pooling2d_2_1/MaxPool2dMaxPool8sequential_1/batch_normalization_2_1/batchnorm/add_1:z:0*0
_output_shapes
:����������*
ksize
*
paddingVALID*
strides
u
$sequential_1/flatten_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"���� �  �
sequential_1/flatten_1/ReshapeReshape1sequential_1/max_pooling2d_2_1/MaxPool2d:output:0-sequential_1/flatten_1/Reshape/shape:output:0*
T0*)
_output_shapes
:������������
(sequential_1/dense_1/Cast/ReadVariableOpReadVariableOp1sequential_1_dense_1_cast_readvariableop_resource*!
_output_shapes
:���*
dtype0�
sequential_1/dense_1/MatMulMatMul'sequential_1/flatten_1/Reshape:output:00sequential_1/dense_1/Cast/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+sequential_1/dense_1/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
sequential_1/dense_1/BiasAddBiasAdd%sequential_1/dense_1/MatMul:product:03sequential_1/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������{
sequential_1/dense_1/ReluRelu%sequential_1/dense_1/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
*sequential_1/dense_1_2/Cast/ReadVariableOpReadVariableOp3sequential_1_dense_1_2_cast_readvariableop_resource*
_output_shapes
:	�*
dtype0�
sequential_1/dense_1_2/MatMulMatMul'sequential_1/dense_1/Relu:activations:02sequential_1/dense_1_2/Cast/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
-sequential_1/dense_1_2/BiasAdd/ReadVariableOpReadVariableOp6sequential_1_dense_1_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential_1/dense_1_2/BiasAddBiasAdd'sequential_1/dense_1_2/MatMul:product:05sequential_1/dense_1_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
sequential_1/dense_1_2/SoftmaxSoftmax'sequential_1/dense_1_2/BiasAdd:output:0*
T0*'
_output_shapes
:���������w
IdentityIdentity(sequential_1/dense_1_2/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������	
NoOpNoOp7^sequential_1/batch_normalization_1/Cast/ReadVariableOp9^sequential_1/batch_normalization_1/Cast_1/ReadVariableOp9^sequential_1/batch_normalization_1/Cast_2/ReadVariableOp9^sequential_1/batch_normalization_1/Cast_3/ReadVariableOp9^sequential_1/batch_normalization_1_2/Cast/ReadVariableOp;^sequential_1/batch_normalization_1_2/Cast_1/ReadVariableOp;^sequential_1/batch_normalization_1_2/Cast_2/ReadVariableOp;^sequential_1/batch_normalization_1_2/Cast_3/ReadVariableOp9^sequential_1/batch_normalization_2_1/Cast/ReadVariableOp;^sequential_1/batch_normalization_2_1/Cast_1/ReadVariableOp;^sequential_1/batch_normalization_2_1/Cast_2/ReadVariableOp;^sequential_1/batch_normalization_2_1/Cast_3/ReadVariableOp-^sequential_1/conv2d_1/Reshape/ReadVariableOp1^sequential_1/conv2d_1/convolution/ReadVariableOp/^sequential_1/conv2d_1_2/Reshape/ReadVariableOp3^sequential_1/conv2d_1_2/convolution/ReadVariableOp/^sequential_1/conv2d_2_1/Reshape/ReadVariableOp3^sequential_1/conv2d_2_1/convolution/ReadVariableOp,^sequential_1/dense_1/BiasAdd/ReadVariableOp)^sequential_1/dense_1/Cast/ReadVariableOp.^sequential_1/dense_1_2/BiasAdd/ReadVariableOp+^sequential_1/dense_1_2/Cast/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:�����������: : : : : : : : : : : : : : : : : : : : : : 2p
6sequential_1/batch_normalization_1/Cast/ReadVariableOp6sequential_1/batch_normalization_1/Cast/ReadVariableOp2t
8sequential_1/batch_normalization_1/Cast_1/ReadVariableOp8sequential_1/batch_normalization_1/Cast_1/ReadVariableOp2t
8sequential_1/batch_normalization_1/Cast_2/ReadVariableOp8sequential_1/batch_normalization_1/Cast_2/ReadVariableOp2t
8sequential_1/batch_normalization_1/Cast_3/ReadVariableOp8sequential_1/batch_normalization_1/Cast_3/ReadVariableOp2t
8sequential_1/batch_normalization_1_2/Cast/ReadVariableOp8sequential_1/batch_normalization_1_2/Cast/ReadVariableOp2x
:sequential_1/batch_normalization_1_2/Cast_1/ReadVariableOp:sequential_1/batch_normalization_1_2/Cast_1/ReadVariableOp2x
:sequential_1/batch_normalization_1_2/Cast_2/ReadVariableOp:sequential_1/batch_normalization_1_2/Cast_2/ReadVariableOp2x
:sequential_1/batch_normalization_1_2/Cast_3/ReadVariableOp:sequential_1/batch_normalization_1_2/Cast_3/ReadVariableOp2t
8sequential_1/batch_normalization_2_1/Cast/ReadVariableOp8sequential_1/batch_normalization_2_1/Cast/ReadVariableOp2x
:sequential_1/batch_normalization_2_1/Cast_1/ReadVariableOp:sequential_1/batch_normalization_2_1/Cast_1/ReadVariableOp2x
:sequential_1/batch_normalization_2_1/Cast_2/ReadVariableOp:sequential_1/batch_normalization_2_1/Cast_2/ReadVariableOp2x
:sequential_1/batch_normalization_2_1/Cast_3/ReadVariableOp:sequential_1/batch_normalization_2_1/Cast_3/ReadVariableOp2\
,sequential_1/conv2d_1/Reshape/ReadVariableOp,sequential_1/conv2d_1/Reshape/ReadVariableOp2d
0sequential_1/conv2d_1/convolution/ReadVariableOp0sequential_1/conv2d_1/convolution/ReadVariableOp2`
.sequential_1/conv2d_1_2/Reshape/ReadVariableOp.sequential_1/conv2d_1_2/Reshape/ReadVariableOp2h
2sequential_1/conv2d_1_2/convolution/ReadVariableOp2sequential_1/conv2d_1_2/convolution/ReadVariableOp2`
.sequential_1/conv2d_2_1/Reshape/ReadVariableOp.sequential_1/conv2d_2_1/Reshape/ReadVariableOp2h
2sequential_1/conv2d_2_1/convolution/ReadVariableOp2sequential_1/conv2d_2_1/convolution/ReadVariableOp2Z
+sequential_1/dense_1/BiasAdd/ReadVariableOp+sequential_1/dense_1/BiasAdd/ReadVariableOp2T
(sequential_1/dense_1/Cast/ReadVariableOp(sequential_1/dense_1/Cast/ReadVariableOp2^
-sequential_1/dense_1_2/BiasAdd/ReadVariableOp-sequential_1/dense_1_2/BiasAdd/ReadVariableOp2X
*sequential_1/dense_1_2/Cast/ReadVariableOp*sequential_1/dense_1_2/Cast/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
��
�
__inference_serving_default_443

inputsV
<functional_12_1_conv2d_1_convolution_readvariableop_resource: F
8functional_12_1_conv2d_1_reshape_readvariableop_resource: P
Bfunctional_12_1_batch_normalization_1_cast_readvariableop_resource: R
Dfunctional_12_1_batch_normalization_1_cast_1_readvariableop_resource: R
Dfunctional_12_1_batch_normalization_1_cast_2_readvariableop_resource: R
Dfunctional_12_1_batch_normalization_1_cast_3_readvariableop_resource: X
>functional_12_1_conv2d_1_2_convolution_readvariableop_resource: @H
:functional_12_1_conv2d_1_2_reshape_readvariableop_resource:@R
Dfunctional_12_1_batch_normalization_1_2_cast_readvariableop_resource:@T
Ffunctional_12_1_batch_normalization_1_2_cast_1_readvariableop_resource:@T
Ffunctional_12_1_batch_normalization_1_2_cast_2_readvariableop_resource:@T
Ffunctional_12_1_batch_normalization_1_2_cast_3_readvariableop_resource:@Y
>functional_12_1_conv2d_2_1_convolution_readvariableop_resource:@�I
:functional_12_1_conv2d_2_1_reshape_readvariableop_resource:	�S
Dfunctional_12_1_batch_normalization_2_1_cast_readvariableop_resource:	�U
Ffunctional_12_1_batch_normalization_2_1_cast_1_readvariableop_resource:	�U
Ffunctional_12_1_batch_normalization_2_1_cast_2_readvariableop_resource:	�U
Ffunctional_12_1_batch_normalization_2_1_cast_3_readvariableop_resource:	�I
4functional_12_1_dense_1_cast_readvariableop_resource:���F
7functional_12_1_dense_1_biasadd_readvariableop_resource:	�I
6functional_12_1_dense_1_2_cast_readvariableop_resource:	�G
9functional_12_1_dense_1_2_biasadd_readvariableop_resource:
identity��9functional_12_1/batch_normalization_1/Cast/ReadVariableOp�;functional_12_1/batch_normalization_1/Cast_1/ReadVariableOp�;functional_12_1/batch_normalization_1/Cast_2/ReadVariableOp�;functional_12_1/batch_normalization_1/Cast_3/ReadVariableOp�;functional_12_1/batch_normalization_1_2/Cast/ReadVariableOp�=functional_12_1/batch_normalization_1_2/Cast_1/ReadVariableOp�=functional_12_1/batch_normalization_1_2/Cast_2/ReadVariableOp�=functional_12_1/batch_normalization_1_2/Cast_3/ReadVariableOp�;functional_12_1/batch_normalization_2_1/Cast/ReadVariableOp�=functional_12_1/batch_normalization_2_1/Cast_1/ReadVariableOp�=functional_12_1/batch_normalization_2_1/Cast_2/ReadVariableOp�=functional_12_1/batch_normalization_2_1/Cast_3/ReadVariableOp�/functional_12_1/conv2d_1/Reshape/ReadVariableOp�3functional_12_1/conv2d_1/convolution/ReadVariableOp�1functional_12_1/conv2d_1_2/Reshape/ReadVariableOp�5functional_12_1/conv2d_1_2/convolution/ReadVariableOp�1functional_12_1/conv2d_2_1/Reshape/ReadVariableOp�5functional_12_1/conv2d_2_1/convolution/ReadVariableOp�.functional_12_1/dense_1/BiasAdd/ReadVariableOp�+functional_12_1/dense_1/Cast/ReadVariableOp�0functional_12_1/dense_1_2/BiasAdd/ReadVariableOp�-functional_12_1/dense_1_2/Cast/ReadVariableOp�
3functional_12_1/conv2d_1/convolution/ReadVariableOpReadVariableOp<functional_12_1_conv2d_1_convolution_readvariableop_resource*&
_output_shapes
: *
dtype0�
$functional_12_1/conv2d_1/convolutionConv2Dinputs;functional_12_1/conv2d_1/convolution/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� *
paddingSAME*
strides
�
/functional_12_1/conv2d_1/Reshape/ReadVariableOpReadVariableOp8functional_12_1_conv2d_1_reshape_readvariableop_resource*
_output_shapes
: *
dtype0
&functional_12_1/conv2d_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"             �
 functional_12_1/conv2d_1/ReshapeReshape7functional_12_1/conv2d_1/Reshape/ReadVariableOp:value:0/functional_12_1/conv2d_1/Reshape/shape:output:0*
T0*&
_output_shapes
: {
 functional_12_1/conv2d_1/SqueezeSqueeze)functional_12_1/conv2d_1/Reshape:output:0*
T0*
_output_shapes
: �
 functional_12_1/conv2d_1/BiasAddBiasAdd-functional_12_1/conv2d_1/convolution:output:0)functional_12_1/conv2d_1/Squeeze:output:0*
T0*1
_output_shapes
:����������� �
functional_12_1/conv2d_1/ReluRelu)functional_12_1/conv2d_1/BiasAdd:output:0*
T0*1
_output_shapes
:����������� �
9functional_12_1/batch_normalization_1/Cast/ReadVariableOpReadVariableOpBfunctional_12_1_batch_normalization_1_cast_readvariableop_resource*
_output_shapes
: *
dtype0�
;functional_12_1/batch_normalization_1/Cast_1/ReadVariableOpReadVariableOpDfunctional_12_1_batch_normalization_1_cast_1_readvariableop_resource*
_output_shapes
: *
dtype0�
;functional_12_1/batch_normalization_1/Cast_2/ReadVariableOpReadVariableOpDfunctional_12_1_batch_normalization_1_cast_2_readvariableop_resource*
_output_shapes
: *
dtype0�
;functional_12_1/batch_normalization_1/Cast_3/ReadVariableOpReadVariableOpDfunctional_12_1_batch_normalization_1_cast_3_readvariableop_resource*
_output_shapes
: *
dtype0z
5functional_12_1/batch_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
3functional_12_1/batch_normalization_1/batchnorm/addAddV2Cfunctional_12_1/batch_normalization_1/Cast_1/ReadVariableOp:value:0>functional_12_1/batch_normalization_1/batchnorm/add/y:output:0*
T0*
_output_shapes
: �
5functional_12_1/batch_normalization_1/batchnorm/RsqrtRsqrt7functional_12_1/batch_normalization_1/batchnorm/add:z:0*
T0*
_output_shapes
: �
3functional_12_1/batch_normalization_1/batchnorm/mulMul9functional_12_1/batch_normalization_1/batchnorm/Rsqrt:y:0Cfunctional_12_1/batch_normalization_1/Cast_2/ReadVariableOp:value:0*
T0*
_output_shapes
: �
5functional_12_1/batch_normalization_1/batchnorm/mul_1Mul+functional_12_1/conv2d_1/Relu:activations:07functional_12_1/batch_normalization_1/batchnorm/mul:z:0*
T0*1
_output_shapes
:����������� �
5functional_12_1/batch_normalization_1/batchnorm/mul_2MulAfunctional_12_1/batch_normalization_1/Cast/ReadVariableOp:value:07functional_12_1/batch_normalization_1/batchnorm/mul:z:0*
T0*
_output_shapes
: �
3functional_12_1/batch_normalization_1/batchnorm/subSubCfunctional_12_1/batch_normalization_1/Cast_3/ReadVariableOp:value:09functional_12_1/batch_normalization_1/batchnorm/mul_2:z:0*
T0*
_output_shapes
: �
5functional_12_1/batch_normalization_1/batchnorm/add_1AddV29functional_12_1/batch_normalization_1/batchnorm/mul_1:z:07functional_12_1/batch_normalization_1/batchnorm/sub:z:0*
T0*1
_output_shapes
:����������� �
)functional_12_1/max_pooling2d_1/MaxPool2dMaxPool9functional_12_1/batch_normalization_1/batchnorm/add_1:z:0*/
_output_shapes
:���������KK *
ksize
*
paddingVALID*
strides
�
5functional_12_1/conv2d_1_2/convolution/ReadVariableOpReadVariableOp>functional_12_1_conv2d_1_2_convolution_readvariableop_resource*&
_output_shapes
: @*
dtype0�
&functional_12_1/conv2d_1_2/convolutionConv2D2functional_12_1/max_pooling2d_1/MaxPool2d:output:0=functional_12_1/conv2d_1_2/convolution/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������KK@*
paddingSAME*
strides
�
1functional_12_1/conv2d_1_2/Reshape/ReadVariableOpReadVariableOp:functional_12_1_conv2d_1_2_reshape_readvariableop_resource*
_output_shapes
:@*
dtype0�
(functional_12_1/conv2d_1_2/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"         @   �
"functional_12_1/conv2d_1_2/ReshapeReshape9functional_12_1/conv2d_1_2/Reshape/ReadVariableOp:value:01functional_12_1/conv2d_1_2/Reshape/shape:output:0*
T0*&
_output_shapes
:@
"functional_12_1/conv2d_1_2/SqueezeSqueeze+functional_12_1/conv2d_1_2/Reshape:output:0*
T0*
_output_shapes
:@�
"functional_12_1/conv2d_1_2/BiasAddBiasAdd/functional_12_1/conv2d_1_2/convolution:output:0+functional_12_1/conv2d_1_2/Squeeze:output:0*
T0*/
_output_shapes
:���������KK@�
functional_12_1/conv2d_1_2/ReluRelu+functional_12_1/conv2d_1_2/BiasAdd:output:0*
T0*/
_output_shapes
:���������KK@�
;functional_12_1/batch_normalization_1_2/Cast/ReadVariableOpReadVariableOpDfunctional_12_1_batch_normalization_1_2_cast_readvariableop_resource*
_output_shapes
:@*
dtype0�
=functional_12_1/batch_normalization_1_2/Cast_1/ReadVariableOpReadVariableOpFfunctional_12_1_batch_normalization_1_2_cast_1_readvariableop_resource*
_output_shapes
:@*
dtype0�
=functional_12_1/batch_normalization_1_2/Cast_2/ReadVariableOpReadVariableOpFfunctional_12_1_batch_normalization_1_2_cast_2_readvariableop_resource*
_output_shapes
:@*
dtype0�
=functional_12_1/batch_normalization_1_2/Cast_3/ReadVariableOpReadVariableOpFfunctional_12_1_batch_normalization_1_2_cast_3_readvariableop_resource*
_output_shapes
:@*
dtype0|
7functional_12_1/batch_normalization_1_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
5functional_12_1/batch_normalization_1_2/batchnorm/addAddV2Efunctional_12_1/batch_normalization_1_2/Cast_1/ReadVariableOp:value:0@functional_12_1/batch_normalization_1_2/batchnorm/add/y:output:0*
T0*
_output_shapes
:@�
7functional_12_1/batch_normalization_1_2/batchnorm/RsqrtRsqrt9functional_12_1/batch_normalization_1_2/batchnorm/add:z:0*
T0*
_output_shapes
:@�
5functional_12_1/batch_normalization_1_2/batchnorm/mulMul;functional_12_1/batch_normalization_1_2/batchnorm/Rsqrt:y:0Efunctional_12_1/batch_normalization_1_2/Cast_2/ReadVariableOp:value:0*
T0*
_output_shapes
:@�
7functional_12_1/batch_normalization_1_2/batchnorm/mul_1Mul-functional_12_1/conv2d_1_2/Relu:activations:09functional_12_1/batch_normalization_1_2/batchnorm/mul:z:0*
T0*/
_output_shapes
:���������KK@�
7functional_12_1/batch_normalization_1_2/batchnorm/mul_2MulCfunctional_12_1/batch_normalization_1_2/Cast/ReadVariableOp:value:09functional_12_1/batch_normalization_1_2/batchnorm/mul:z:0*
T0*
_output_shapes
:@�
5functional_12_1/batch_normalization_1_2/batchnorm/subSubEfunctional_12_1/batch_normalization_1_2/Cast_3/ReadVariableOp:value:0;functional_12_1/batch_normalization_1_2/batchnorm/mul_2:z:0*
T0*
_output_shapes
:@�
7functional_12_1/batch_normalization_1_2/batchnorm/add_1AddV2;functional_12_1/batch_normalization_1_2/batchnorm/mul_1:z:09functional_12_1/batch_normalization_1_2/batchnorm/sub:z:0*
T0*/
_output_shapes
:���������KK@�
+functional_12_1/max_pooling2d_1_2/MaxPool2dMaxPool;functional_12_1/batch_normalization_1_2/batchnorm/add_1:z:0*/
_output_shapes
:���������%%@*
ksize
*
paddingVALID*
strides
�
5functional_12_1/conv2d_2_1/convolution/ReadVariableOpReadVariableOp>functional_12_1_conv2d_2_1_convolution_readvariableop_resource*'
_output_shapes
:@�*
dtype0�
&functional_12_1/conv2d_2_1/convolutionConv2D4functional_12_1/max_pooling2d_1_2/MaxPool2d:output:0=functional_12_1/conv2d_2_1/convolution/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������%%�*
paddingSAME*
strides
�
1functional_12_1/conv2d_2_1/Reshape/ReadVariableOpReadVariableOp:functional_12_1_conv2d_2_1_reshape_readvariableop_resource*
_output_shapes	
:�*
dtype0�
(functional_12_1/conv2d_2_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"         �   �
"functional_12_1/conv2d_2_1/ReshapeReshape9functional_12_1/conv2d_2_1/Reshape/ReadVariableOp:value:01functional_12_1/conv2d_2_1/Reshape/shape:output:0*
T0*'
_output_shapes
:��
"functional_12_1/conv2d_2_1/SqueezeSqueeze+functional_12_1/conv2d_2_1/Reshape:output:0*
T0*
_output_shapes	
:��
"functional_12_1/conv2d_2_1/BiasAddBiasAdd/functional_12_1/conv2d_2_1/convolution:output:0+functional_12_1/conv2d_2_1/Squeeze:output:0*
T0*0
_output_shapes
:���������%%��
functional_12_1/conv2d_2_1/ReluRelu+functional_12_1/conv2d_2_1/BiasAdd:output:0*
T0*0
_output_shapes
:���������%%��
;functional_12_1/batch_normalization_2_1/Cast/ReadVariableOpReadVariableOpDfunctional_12_1_batch_normalization_2_1_cast_readvariableop_resource*
_output_shapes	
:�*
dtype0�
=functional_12_1/batch_normalization_2_1/Cast_1/ReadVariableOpReadVariableOpFfunctional_12_1_batch_normalization_2_1_cast_1_readvariableop_resource*
_output_shapes	
:�*
dtype0�
=functional_12_1/batch_normalization_2_1/Cast_2/ReadVariableOpReadVariableOpFfunctional_12_1_batch_normalization_2_1_cast_2_readvariableop_resource*
_output_shapes	
:�*
dtype0�
=functional_12_1/batch_normalization_2_1/Cast_3/ReadVariableOpReadVariableOpFfunctional_12_1_batch_normalization_2_1_cast_3_readvariableop_resource*
_output_shapes	
:�*
dtype0|
7functional_12_1/batch_normalization_2_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
5functional_12_1/batch_normalization_2_1/batchnorm/addAddV2Efunctional_12_1/batch_normalization_2_1/Cast_1/ReadVariableOp:value:0@functional_12_1/batch_normalization_2_1/batchnorm/add/y:output:0*
T0*
_output_shapes	
:��
7functional_12_1/batch_normalization_2_1/batchnorm/RsqrtRsqrt9functional_12_1/batch_normalization_2_1/batchnorm/add:z:0*
T0*
_output_shapes	
:��
5functional_12_1/batch_normalization_2_1/batchnorm/mulMul;functional_12_1/batch_normalization_2_1/batchnorm/Rsqrt:y:0Efunctional_12_1/batch_normalization_2_1/Cast_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:��
7functional_12_1/batch_normalization_2_1/batchnorm/mul_1Mul-functional_12_1/conv2d_2_1/Relu:activations:09functional_12_1/batch_normalization_2_1/batchnorm/mul:z:0*
T0*0
_output_shapes
:���������%%��
7functional_12_1/batch_normalization_2_1/batchnorm/mul_2MulCfunctional_12_1/batch_normalization_2_1/Cast/ReadVariableOp:value:09functional_12_1/batch_normalization_2_1/batchnorm/mul:z:0*
T0*
_output_shapes	
:��
5functional_12_1/batch_normalization_2_1/batchnorm/subSubEfunctional_12_1/batch_normalization_2_1/Cast_3/ReadVariableOp:value:0;functional_12_1/batch_normalization_2_1/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:��
7functional_12_1/batch_normalization_2_1/batchnorm/add_1AddV2;functional_12_1/batch_normalization_2_1/batchnorm/mul_1:z:09functional_12_1/batch_normalization_2_1/batchnorm/sub:z:0*
T0*0
_output_shapes
:���������%%��
+functional_12_1/max_pooling2d_2_1/MaxPool2dMaxPool;functional_12_1/batch_normalization_2_1/batchnorm/add_1:z:0*0
_output_shapes
:����������*
ksize
*
paddingVALID*
strides
x
'functional_12_1/flatten_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"���� �  �
!functional_12_1/flatten_1/ReshapeReshape4functional_12_1/max_pooling2d_2_1/MaxPool2d:output:00functional_12_1/flatten_1/Reshape/shape:output:0*
T0*)
_output_shapes
:������������
+functional_12_1/dense_1/Cast/ReadVariableOpReadVariableOp4functional_12_1_dense_1_cast_readvariableop_resource*!
_output_shapes
:���*
dtype0�
functional_12_1/dense_1/MatMulMatMul*functional_12_1/flatten_1/Reshape:output:03functional_12_1/dense_1/Cast/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
.functional_12_1/dense_1/BiasAdd/ReadVariableOpReadVariableOp7functional_12_1_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
functional_12_1/dense_1/BiasAddBiasAdd(functional_12_1/dense_1/MatMul:product:06functional_12_1/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
functional_12_1/dense_1/ReluRelu(functional_12_1/dense_1/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
-functional_12_1/dense_1_2/Cast/ReadVariableOpReadVariableOp6functional_12_1_dense_1_2_cast_readvariableop_resource*
_output_shapes
:	�*
dtype0�
 functional_12_1/dense_1_2/MatMulMatMul*functional_12_1/dense_1/Relu:activations:05functional_12_1/dense_1_2/Cast/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
0functional_12_1/dense_1_2/BiasAdd/ReadVariableOpReadVariableOp9functional_12_1_dense_1_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
!functional_12_1/dense_1_2/BiasAddBiasAdd*functional_12_1/dense_1_2/MatMul:product:08functional_12_1/dense_1_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
!functional_12_1/dense_1_2/SoftmaxSoftmax*functional_12_1/dense_1_2/BiasAdd:output:0*
T0*'
_output_shapes
:���������z
IdentityIdentity+functional_12_1/dense_1_2/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������

NoOpNoOp:^functional_12_1/batch_normalization_1/Cast/ReadVariableOp<^functional_12_1/batch_normalization_1/Cast_1/ReadVariableOp<^functional_12_1/batch_normalization_1/Cast_2/ReadVariableOp<^functional_12_1/batch_normalization_1/Cast_3/ReadVariableOp<^functional_12_1/batch_normalization_1_2/Cast/ReadVariableOp>^functional_12_1/batch_normalization_1_2/Cast_1/ReadVariableOp>^functional_12_1/batch_normalization_1_2/Cast_2/ReadVariableOp>^functional_12_1/batch_normalization_1_2/Cast_3/ReadVariableOp<^functional_12_1/batch_normalization_2_1/Cast/ReadVariableOp>^functional_12_1/batch_normalization_2_1/Cast_1/ReadVariableOp>^functional_12_1/batch_normalization_2_1/Cast_2/ReadVariableOp>^functional_12_1/batch_normalization_2_1/Cast_3/ReadVariableOp0^functional_12_1/conv2d_1/Reshape/ReadVariableOp4^functional_12_1/conv2d_1/convolution/ReadVariableOp2^functional_12_1/conv2d_1_2/Reshape/ReadVariableOp6^functional_12_1/conv2d_1_2/convolution/ReadVariableOp2^functional_12_1/conv2d_2_1/Reshape/ReadVariableOp6^functional_12_1/conv2d_2_1/convolution/ReadVariableOp/^functional_12_1/dense_1/BiasAdd/ReadVariableOp,^functional_12_1/dense_1/Cast/ReadVariableOp1^functional_12_1/dense_1_2/BiasAdd/ReadVariableOp.^functional_12_1/dense_1_2/Cast/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:�����������: : : : : : : : : : : : : : : : : : : : : : 2v
9functional_12_1/batch_normalization_1/Cast/ReadVariableOp9functional_12_1/batch_normalization_1/Cast/ReadVariableOp2z
;functional_12_1/batch_normalization_1/Cast_1/ReadVariableOp;functional_12_1/batch_normalization_1/Cast_1/ReadVariableOp2z
;functional_12_1/batch_normalization_1/Cast_2/ReadVariableOp;functional_12_1/batch_normalization_1/Cast_2/ReadVariableOp2z
;functional_12_1/batch_normalization_1/Cast_3/ReadVariableOp;functional_12_1/batch_normalization_1/Cast_3/ReadVariableOp2z
;functional_12_1/batch_normalization_1_2/Cast/ReadVariableOp;functional_12_1/batch_normalization_1_2/Cast/ReadVariableOp2~
=functional_12_1/batch_normalization_1_2/Cast_1/ReadVariableOp=functional_12_1/batch_normalization_1_2/Cast_1/ReadVariableOp2~
=functional_12_1/batch_normalization_1_2/Cast_2/ReadVariableOp=functional_12_1/batch_normalization_1_2/Cast_2/ReadVariableOp2~
=functional_12_1/batch_normalization_1_2/Cast_3/ReadVariableOp=functional_12_1/batch_normalization_1_2/Cast_3/ReadVariableOp2z
;functional_12_1/batch_normalization_2_1/Cast/ReadVariableOp;functional_12_1/batch_normalization_2_1/Cast/ReadVariableOp2~
=functional_12_1/batch_normalization_2_1/Cast_1/ReadVariableOp=functional_12_1/batch_normalization_2_1/Cast_1/ReadVariableOp2~
=functional_12_1/batch_normalization_2_1/Cast_2/ReadVariableOp=functional_12_1/batch_normalization_2_1/Cast_2/ReadVariableOp2~
=functional_12_1/batch_normalization_2_1/Cast_3/ReadVariableOp=functional_12_1/batch_normalization_2_1/Cast_3/ReadVariableOp2b
/functional_12_1/conv2d_1/Reshape/ReadVariableOp/functional_12_1/conv2d_1/Reshape/ReadVariableOp2j
3functional_12_1/conv2d_1/convolution/ReadVariableOp3functional_12_1/conv2d_1/convolution/ReadVariableOp2f
1functional_12_1/conv2d_1_2/Reshape/ReadVariableOp1functional_12_1/conv2d_1_2/Reshape/ReadVariableOp2n
5functional_12_1/conv2d_1_2/convolution/ReadVariableOp5functional_12_1/conv2d_1_2/convolution/ReadVariableOp2f
1functional_12_1/conv2d_2_1/Reshape/ReadVariableOp1functional_12_1/conv2d_2_1/Reshape/ReadVariableOp2n
5functional_12_1/conv2d_2_1/convolution/ReadVariableOp5functional_12_1/conv2d_2_1/convolution/ReadVariableOp2`
.functional_12_1/dense_1/BiasAdd/ReadVariableOp.functional_12_1/dense_1/BiasAdd/ReadVariableOp2Z
+functional_12_1/dense_1/Cast/ReadVariableOp+functional_12_1/dense_1/Cast/ReadVariableOp2d
0functional_12_1/dense_1_2/BiasAdd/ReadVariableOp0functional_12_1/dense_1_2/BiasAdd/ReadVariableOp2^
-functional_12_1/dense_1_2/Cast/ReadVariableOp-functional_12_1/dense_1_2/Cast/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
1__inference_signature_wrapper_serving_default_342

inputs!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5: @
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@%

unknown_11:@�

unknown_12:	�

unknown_13:	�

unknown_14:	�

unknown_15:	�

unknown_16:	�

unknown_17:���

unknown_18:	�

unknown_19:	�

unknown_20:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*8
_read_only_resource_inputs
	
*5
config_proto%#

CPU

GPU2*0J 8� �J *(
f#R!
__inference_serving_default_292o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:�����������: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:#

_user_specified_name338:#

_user_specified_name336:#

_user_specified_name334:#

_user_specified_name332:#

_user_specified_name330:#

_user_specified_name328:#

_user_specified_name326:#

_user_specified_name324:#

_user_specified_name322:#

_user_specified_name320:#

_user_specified_name318:#

_user_specified_name316:#


_user_specified_name314:#	

_user_specified_name312:#

_user_specified_name310:#

_user_specified_name308:#

_user_specified_name306:#

_user_specified_name304:#

_user_specified_name302:#

_user_specified_name300:#

_user_specified_name298:#

_user_specified_name296:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�l
�
__inference__traced_restore_786
file_prefix&
assignvariableop_variable_23:	 (
assignvariableop_1_variable_22: 8
assignvariableop_2_variable_21: ,
assignvariableop_3_variable_20: ,
assignvariableop_4_variable_19: ,
assignvariableop_5_variable_18: ,
assignvariableop_6_variable_17: ,
assignvariableop_7_variable_16: 8
assignvariableop_8_variable_15: @,
assignvariableop_9_variable_14:@-
assignvariableop_10_variable_13:@-
assignvariableop_11_variable_12:@-
assignvariableop_12_variable_11:@-
assignvariableop_13_variable_10:@9
assignvariableop_14_variable_9:@�-
assignvariableop_15_variable_8:	�-
assignvariableop_16_variable_7:	�-
assignvariableop_17_variable_6:	�-
assignvariableop_18_variable_5:	�-
assignvariableop_19_variable_4:	�3
assignvariableop_20_variable_3:���-
assignvariableop_21_variable_2:	�1
assignvariableop_22_variable_1:	�*
assignvariableop_23_variable:
identity_25��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_3�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�	
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�	
value�	B�	B0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB,_layers/1/_kernel/.ATTRIBUTES/VARIABLE_VALUEB)_layers/1/bias/.ATTRIBUTES/VARIABLE_VALUEB*_layers/2/gamma/.ATTRIBUTES/VARIABLE_VALUEB)_layers/2/beta/.ATTRIBUTES/VARIABLE_VALUEB0_layers/2/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB4_layers/2/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB,_layers/4/_kernel/.ATTRIBUTES/VARIABLE_VALUEB)_layers/4/bias/.ATTRIBUTES/VARIABLE_VALUEB*_layers/5/gamma/.ATTRIBUTES/VARIABLE_VALUEB)_layers/5/beta/.ATTRIBUTES/VARIABLE_VALUEB0_layers/5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB4_layers/5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB,_layers/7/_kernel/.ATTRIBUTES/VARIABLE_VALUEB)_layers/7/bias/.ATTRIBUTES/VARIABLE_VALUEB*_layers/8/gamma/.ATTRIBUTES/VARIABLE_VALUEB)_layers/8/beta/.ATTRIBUTES/VARIABLE_VALUEB0_layers/8/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB4_layers/8/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB-_layers/11/_kernel/.ATTRIBUTES/VARIABLE_VALUEB*_layers/11/bias/.ATTRIBUTES/VARIABLE_VALUEB-_layers/13/_kernel/.ATTRIBUTES/VARIABLE_VALUEB*_layers/13/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*E
value<B:B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*x
_output_shapesf
d:::::::::::::::::::::::::*'
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOpAssignVariableOpassignvariableop_variable_23Identity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOpassignvariableop_1_variable_22Identity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOpassignvariableop_2_variable_21Identity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOpassignvariableop_3_variable_20Identity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOpassignvariableop_4_variable_19Identity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOpassignvariableop_5_variable_18Identity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOpassignvariableop_6_variable_17Identity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOpassignvariableop_7_variable_16Identity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOpassignvariableop_8_variable_15Identity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOpassignvariableop_9_variable_14Identity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOpassignvariableop_10_variable_13Identity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOpassignvariableop_11_variable_12Identity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOpassignvariableop_12_variable_11Identity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOpassignvariableop_13_variable_10Identity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOpassignvariableop_14_variable_9Identity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOpassignvariableop_15_variable_8Identity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOpassignvariableop_16_variable_7Identity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOpassignvariableop_17_variable_6Identity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOpassignvariableop_18_variable_5Identity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOpassignvariableop_19_variable_4Identity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOpassignvariableop_20_variable_3Identity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOpassignvariableop_21_variable_2Identity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOpassignvariableop_22_variable_1Identity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOpassignvariableop_23_variableIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �
Identity_24Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_25IdentityIdentity_24:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
_output_shapes
 "#
identity_25Identity_25:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2: : : : : : : : : : : : : : : : : : : : : : : : : 2*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92$
AssignVariableOpAssignVariableOp:($
"
_user_specified_name
Variable:*&
$
_user_specified_name
Variable_1:*&
$
_user_specified_name
Variable_2:*&
$
_user_specified_name
Variable_3:*&
$
_user_specified_name
Variable_4:*&
$
_user_specified_name
Variable_5:*&
$
_user_specified_name
Variable_6:*&
$
_user_specified_name
Variable_7:*&
$
_user_specified_name
Variable_8:*&
$
_user_specified_name
Variable_9:+'
%
_user_specified_nameVariable_10:+'
%
_user_specified_nameVariable_11:+'
%
_user_specified_nameVariable_12:+'
%
_user_specified_nameVariable_13:+
'
%
_user_specified_nameVariable_14:+	'
%
_user_specified_nameVariable_15:+'
%
_user_specified_nameVariable_16:+'
%
_user_specified_nameVariable_17:+'
%
_user_specified_nameVariable_18:+'
%
_user_specified_nameVariable_19:+'
%
_user_specified_nameVariable_20:+'
%
_user_specified_nameVariable_21:+'
%
_user_specified_nameVariable_22:+'
%
_user_specified_nameVariable_23:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
Ǯ
�
__inference__traced_save_705
file_prefix,
"read_disablecopyonread_variable_23:	 .
$read_1_disablecopyonread_variable_22: >
$read_2_disablecopyonread_variable_21: 2
$read_3_disablecopyonread_variable_20: 2
$read_4_disablecopyonread_variable_19: 2
$read_5_disablecopyonread_variable_18: 2
$read_6_disablecopyonread_variable_17: 2
$read_7_disablecopyonread_variable_16: >
$read_8_disablecopyonread_variable_15: @2
$read_9_disablecopyonread_variable_14:@3
%read_10_disablecopyonread_variable_13:@3
%read_11_disablecopyonread_variable_12:@3
%read_12_disablecopyonread_variable_11:@3
%read_13_disablecopyonread_variable_10:@?
$read_14_disablecopyonread_variable_9:@�3
$read_15_disablecopyonread_variable_8:	�3
$read_16_disablecopyonread_variable_7:	�3
$read_17_disablecopyonread_variable_6:	�3
$read_18_disablecopyonread_variable_5:	�3
$read_19_disablecopyonread_variable_4:	�9
$read_20_disablecopyonread_variable_3:���3
$read_21_disablecopyonread_variable_2:	�7
$read_22_disablecopyonread_variable_1:	�0
"read_23_disablecopyonread_variable:
savev2_const
identity_49��MergeV2Checkpoints�Read/DisableCopyOnRead�Read/ReadVariableOp�Read_1/DisableCopyOnRead�Read_1/ReadVariableOp�Read_10/DisableCopyOnRead�Read_10/ReadVariableOp�Read_11/DisableCopyOnRead�Read_11/ReadVariableOp�Read_12/DisableCopyOnRead�Read_12/ReadVariableOp�Read_13/DisableCopyOnRead�Read_13/ReadVariableOp�Read_14/DisableCopyOnRead�Read_14/ReadVariableOp�Read_15/DisableCopyOnRead�Read_15/ReadVariableOp�Read_16/DisableCopyOnRead�Read_16/ReadVariableOp�Read_17/DisableCopyOnRead�Read_17/ReadVariableOp�Read_18/DisableCopyOnRead�Read_18/ReadVariableOp�Read_19/DisableCopyOnRead�Read_19/ReadVariableOp�Read_2/DisableCopyOnRead�Read_2/ReadVariableOp�Read_20/DisableCopyOnRead�Read_20/ReadVariableOp�Read_21/DisableCopyOnRead�Read_21/ReadVariableOp�Read_22/DisableCopyOnRead�Read_22/ReadVariableOp�Read_23/DisableCopyOnRead�Read_23/ReadVariableOp�Read_3/DisableCopyOnRead�Read_3/ReadVariableOp�Read_4/DisableCopyOnRead�Read_4/ReadVariableOp�Read_5/DisableCopyOnRead�Read_5/ReadVariableOp�Read_6/DisableCopyOnRead�Read_6/ReadVariableOp�Read_7/DisableCopyOnRead�Read_7/ReadVariableOp�Read_8/DisableCopyOnRead�Read_8/ReadVariableOp�Read_9/DisableCopyOnRead�Read_9/ReadVariableOpw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: e
Read/DisableCopyOnReadDisableCopyOnRead"read_disablecopyonread_variable_23*
_output_shapes
 �
Read/ReadVariableOpReadVariableOp"read_disablecopyonread_variable_23^Read/DisableCopyOnRead*
_output_shapes
: *
dtype0	R
IdentityIdentityRead/ReadVariableOp:value:0*
T0	*
_output_shapes
: Y

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0	*
_output_shapes
: i
Read_1/DisableCopyOnReadDisableCopyOnRead$read_1_disablecopyonread_variable_22*
_output_shapes
 �
Read_1/ReadVariableOpReadVariableOp$read_1_disablecopyonread_variable_22^Read_1/DisableCopyOnRead*
_output_shapes
: *
dtype0V

Identity_2IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
: [

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
: i
Read_2/DisableCopyOnReadDisableCopyOnRead$read_2_disablecopyonread_variable_21*
_output_shapes
 �
Read_2/ReadVariableOpReadVariableOp$read_2_disablecopyonread_variable_21^Read_2/DisableCopyOnRead*&
_output_shapes
: *
dtype0f

Identity_4IdentityRead_2/ReadVariableOp:value:0*
T0*&
_output_shapes
: k

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*&
_output_shapes
: i
Read_3/DisableCopyOnReadDisableCopyOnRead$read_3_disablecopyonread_variable_20*
_output_shapes
 �
Read_3/ReadVariableOpReadVariableOp$read_3_disablecopyonread_variable_20^Read_3/DisableCopyOnRead*
_output_shapes
: *
dtype0Z

Identity_6IdentityRead_3/ReadVariableOp:value:0*
T0*
_output_shapes
: _

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes
: i
Read_4/DisableCopyOnReadDisableCopyOnRead$read_4_disablecopyonread_variable_19*
_output_shapes
 �
Read_4/ReadVariableOpReadVariableOp$read_4_disablecopyonread_variable_19^Read_4/DisableCopyOnRead*
_output_shapes
: *
dtype0Z

Identity_8IdentityRead_4/ReadVariableOp:value:0*
T0*
_output_shapes
: _

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*
_output_shapes
: i
Read_5/DisableCopyOnReadDisableCopyOnRead$read_5_disablecopyonread_variable_18*
_output_shapes
 �
Read_5/ReadVariableOpReadVariableOp$read_5_disablecopyonread_variable_18^Read_5/DisableCopyOnRead*
_output_shapes
: *
dtype0[
Identity_10IdentityRead_5/ReadVariableOp:value:0*
T0*
_output_shapes
: a
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes
: i
Read_6/DisableCopyOnReadDisableCopyOnRead$read_6_disablecopyonread_variable_17*
_output_shapes
 �
Read_6/ReadVariableOpReadVariableOp$read_6_disablecopyonread_variable_17^Read_6/DisableCopyOnRead*
_output_shapes
: *
dtype0[
Identity_12IdentityRead_6/ReadVariableOp:value:0*
T0*
_output_shapes
: a
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*
_output_shapes
: i
Read_7/DisableCopyOnReadDisableCopyOnRead$read_7_disablecopyonread_variable_16*
_output_shapes
 �
Read_7/ReadVariableOpReadVariableOp$read_7_disablecopyonread_variable_16^Read_7/DisableCopyOnRead*
_output_shapes
: *
dtype0[
Identity_14IdentityRead_7/ReadVariableOp:value:0*
T0*
_output_shapes
: a
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes
: i
Read_8/DisableCopyOnReadDisableCopyOnRead$read_8_disablecopyonread_variable_15*
_output_shapes
 �
Read_8/ReadVariableOpReadVariableOp$read_8_disablecopyonread_variable_15^Read_8/DisableCopyOnRead*&
_output_shapes
: @*
dtype0g
Identity_16IdentityRead_8/ReadVariableOp:value:0*
T0*&
_output_shapes
: @m
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*&
_output_shapes
: @i
Read_9/DisableCopyOnReadDisableCopyOnRead$read_9_disablecopyonread_variable_14*
_output_shapes
 �
Read_9/ReadVariableOpReadVariableOp$read_9_disablecopyonread_variable_14^Read_9/DisableCopyOnRead*
_output_shapes
:@*
dtype0[
Identity_18IdentityRead_9/ReadVariableOp:value:0*
T0*
_output_shapes
:@a
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes
:@k
Read_10/DisableCopyOnReadDisableCopyOnRead%read_10_disablecopyonread_variable_13*
_output_shapes
 �
Read_10/ReadVariableOpReadVariableOp%read_10_disablecopyonread_variable_13^Read_10/DisableCopyOnRead*
_output_shapes
:@*
dtype0\
Identity_20IdentityRead_10/ReadVariableOp:value:0*
T0*
_output_shapes
:@a
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*
_output_shapes
:@k
Read_11/DisableCopyOnReadDisableCopyOnRead%read_11_disablecopyonread_variable_12*
_output_shapes
 �
Read_11/ReadVariableOpReadVariableOp%read_11_disablecopyonread_variable_12^Read_11/DisableCopyOnRead*
_output_shapes
:@*
dtype0\
Identity_22IdentityRead_11/ReadVariableOp:value:0*
T0*
_output_shapes
:@a
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes
:@k
Read_12/DisableCopyOnReadDisableCopyOnRead%read_12_disablecopyonread_variable_11*
_output_shapes
 �
Read_12/ReadVariableOpReadVariableOp%read_12_disablecopyonread_variable_11^Read_12/DisableCopyOnRead*
_output_shapes
:@*
dtype0\
Identity_24IdentityRead_12/ReadVariableOp:value:0*
T0*
_output_shapes
:@a
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*
_output_shapes
:@k
Read_13/DisableCopyOnReadDisableCopyOnRead%read_13_disablecopyonread_variable_10*
_output_shapes
 �
Read_13/ReadVariableOpReadVariableOp%read_13_disablecopyonread_variable_10^Read_13/DisableCopyOnRead*
_output_shapes
:@*
dtype0\
Identity_26IdentityRead_13/ReadVariableOp:value:0*
T0*
_output_shapes
:@a
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes
:@j
Read_14/DisableCopyOnReadDisableCopyOnRead$read_14_disablecopyonread_variable_9*
_output_shapes
 �
Read_14/ReadVariableOpReadVariableOp$read_14_disablecopyonread_variable_9^Read_14/DisableCopyOnRead*'
_output_shapes
:@�*
dtype0i
Identity_28IdentityRead_14/ReadVariableOp:value:0*
T0*'
_output_shapes
:@�n
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*'
_output_shapes
:@�j
Read_15/DisableCopyOnReadDisableCopyOnRead$read_15_disablecopyonread_variable_8*
_output_shapes
 �
Read_15/ReadVariableOpReadVariableOp$read_15_disablecopyonread_variable_8^Read_15/DisableCopyOnRead*
_output_shapes	
:�*
dtype0]
Identity_30IdentityRead_15/ReadVariableOp:value:0*
T0*
_output_shapes	
:�b
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*
_output_shapes	
:�j
Read_16/DisableCopyOnReadDisableCopyOnRead$read_16_disablecopyonread_variable_7*
_output_shapes
 �
Read_16/ReadVariableOpReadVariableOp$read_16_disablecopyonread_variable_7^Read_16/DisableCopyOnRead*
_output_shapes	
:�*
dtype0]
Identity_32IdentityRead_16/ReadVariableOp:value:0*
T0*
_output_shapes	
:�b
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*
_output_shapes	
:�j
Read_17/DisableCopyOnReadDisableCopyOnRead$read_17_disablecopyonread_variable_6*
_output_shapes
 �
Read_17/ReadVariableOpReadVariableOp$read_17_disablecopyonread_variable_6^Read_17/DisableCopyOnRead*
_output_shapes	
:�*
dtype0]
Identity_34IdentityRead_17/ReadVariableOp:value:0*
T0*
_output_shapes	
:�b
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes	
:�j
Read_18/DisableCopyOnReadDisableCopyOnRead$read_18_disablecopyonread_variable_5*
_output_shapes
 �
Read_18/ReadVariableOpReadVariableOp$read_18_disablecopyonread_variable_5^Read_18/DisableCopyOnRead*
_output_shapes	
:�*
dtype0]
Identity_36IdentityRead_18/ReadVariableOp:value:0*
T0*
_output_shapes	
:�b
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*
_output_shapes	
:�j
Read_19/DisableCopyOnReadDisableCopyOnRead$read_19_disablecopyonread_variable_4*
_output_shapes
 �
Read_19/ReadVariableOpReadVariableOp$read_19_disablecopyonread_variable_4^Read_19/DisableCopyOnRead*
_output_shapes	
:�*
dtype0]
Identity_38IdentityRead_19/ReadVariableOp:value:0*
T0*
_output_shapes	
:�b
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*
_output_shapes	
:�j
Read_20/DisableCopyOnReadDisableCopyOnRead$read_20_disablecopyonread_variable_3*
_output_shapes
 �
Read_20/ReadVariableOpReadVariableOp$read_20_disablecopyonread_variable_3^Read_20/DisableCopyOnRead*!
_output_shapes
:���*
dtype0c
Identity_40IdentityRead_20/ReadVariableOp:value:0*
T0*!
_output_shapes
:���h
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*!
_output_shapes
:���j
Read_21/DisableCopyOnReadDisableCopyOnRead$read_21_disablecopyonread_variable_2*
_output_shapes
 �
Read_21/ReadVariableOpReadVariableOp$read_21_disablecopyonread_variable_2^Read_21/DisableCopyOnRead*
_output_shapes	
:�*
dtype0]
Identity_42IdentityRead_21/ReadVariableOp:value:0*
T0*
_output_shapes	
:�b
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*
_output_shapes	
:�j
Read_22/DisableCopyOnReadDisableCopyOnRead$read_22_disablecopyonread_variable_1*
_output_shapes
 �
Read_22/ReadVariableOpReadVariableOp$read_22_disablecopyonread_variable_1^Read_22/DisableCopyOnRead*
_output_shapes
:	�*
dtype0a
Identity_44IdentityRead_22/ReadVariableOp:value:0*
T0*
_output_shapes
:	�f
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0*
_output_shapes
:	�h
Read_23/DisableCopyOnReadDisableCopyOnRead"read_23_disablecopyonread_variable*
_output_shapes
 �
Read_23/ReadVariableOpReadVariableOp"read_23_disablecopyonread_variable^Read_23/DisableCopyOnRead*
_output_shapes
:*
dtype0\
Identity_46IdentityRead_23/ReadVariableOp:value:0*
T0*
_output_shapes
:a
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0*
_output_shapes
:L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: �	
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�	
value�	B�	B0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB,_layers/1/_kernel/.ATTRIBUTES/VARIABLE_VALUEB)_layers/1/bias/.ATTRIBUTES/VARIABLE_VALUEB*_layers/2/gamma/.ATTRIBUTES/VARIABLE_VALUEB)_layers/2/beta/.ATTRIBUTES/VARIABLE_VALUEB0_layers/2/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB4_layers/2/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB,_layers/4/_kernel/.ATTRIBUTES/VARIABLE_VALUEB)_layers/4/bias/.ATTRIBUTES/VARIABLE_VALUEB*_layers/5/gamma/.ATTRIBUTES/VARIABLE_VALUEB)_layers/5/beta/.ATTRIBUTES/VARIABLE_VALUEB0_layers/5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB4_layers/5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB,_layers/7/_kernel/.ATTRIBUTES/VARIABLE_VALUEB)_layers/7/bias/.ATTRIBUTES/VARIABLE_VALUEB*_layers/8/gamma/.ATTRIBUTES/VARIABLE_VALUEB)_layers/8/beta/.ATTRIBUTES/VARIABLE_VALUEB0_layers/8/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB4_layers/8/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB-_layers/11/_kernel/.ATTRIBUTES/VARIABLE_VALUEB*_layers/11/bias/.ATTRIBUTES/VARIABLE_VALUEB-_layers/13/_kernel/.ATTRIBUTES/VARIABLE_VALUEB*_layers/13/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*E
value<B:B B B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *'
dtypes
2	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_48Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_49IdentityIdentity_48:output:0^NoOp*
T0*
_output_shapes
: �

NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*
_output_shapes
 "#
identity_49Identity_49:output:0*(
_construction_contextkEagerRuntime*G
_input_shapes6
4: : : : : : : : : : : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp26
Read_14/DisableCopyOnReadRead_14/DisableCopyOnRead20
Read_14/ReadVariableOpRead_14/ReadVariableOp26
Read_15/DisableCopyOnReadRead_15/DisableCopyOnRead20
Read_15/ReadVariableOpRead_15/ReadVariableOp26
Read_16/DisableCopyOnReadRead_16/DisableCopyOnRead20
Read_16/ReadVariableOpRead_16/ReadVariableOp26
Read_17/DisableCopyOnReadRead_17/DisableCopyOnRead20
Read_17/ReadVariableOpRead_17/ReadVariableOp26
Read_18/DisableCopyOnReadRead_18/DisableCopyOnRead20
Read_18/ReadVariableOpRead_18/ReadVariableOp26
Read_19/DisableCopyOnReadRead_19/DisableCopyOnRead20
Read_19/ReadVariableOpRead_19/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp26
Read_20/DisableCopyOnReadRead_20/DisableCopyOnRead20
Read_20/ReadVariableOpRead_20/ReadVariableOp26
Read_21/DisableCopyOnReadRead_21/DisableCopyOnRead20
Read_21/ReadVariableOpRead_21/ReadVariableOp26
Read_22/DisableCopyOnReadRead_22/DisableCopyOnRead20
Read_22/ReadVariableOpRead_22/ReadVariableOp26
Read_23/DisableCopyOnReadRead_23/DisableCopyOnRead20
Read_23/ReadVariableOpRead_23/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:=9

_output_shapes
: 

_user_specified_nameConst:($
"
_user_specified_name
Variable:*&
$
_user_specified_name
Variable_1:*&
$
_user_specified_name
Variable_2:*&
$
_user_specified_name
Variable_3:*&
$
_user_specified_name
Variable_4:*&
$
_user_specified_name
Variable_5:*&
$
_user_specified_name
Variable_6:*&
$
_user_specified_name
Variable_7:*&
$
_user_specified_name
Variable_8:*&
$
_user_specified_name
Variable_9:+'
%
_user_specified_nameVariable_10:+'
%
_user_specified_nameVariable_11:+'
%
_user_specified_nameVariable_12:+'
%
_user_specified_nameVariable_13:+
'
%
_user_specified_nameVariable_14:+	'
%
_user_specified_nameVariable_15:+'
%
_user_specified_nameVariable_16:+'
%
_user_specified_nameVariable_17:+'
%
_user_specified_nameVariable_18:+'
%
_user_specified_nameVariable_19:+'
%
_user_specified_nameVariable_20:+'
%
_user_specified_nameVariable_21:+'
%
_user_specified_nameVariable_22:+'
%
_user_specified_nameVariable_23:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
C
inputs9
serving_default_inputs:0�����������<
output_00
StatefulPartitionedCall:0���������tensorflow/serving/predict:�J
�
_functional
	optimizer
_default_save_signature
_inbound_nodes
_outbound_nodes
_losses
	_loss_ids
_losses_override
	_layers

_build_shapes_dict

signatures"
_generic_user_object
�
_tracked
_inbound_nodes
_outbound_nodes
_losses
_losses_override
_operations
_layers
_build_shapes_dict
output_names
_default_save_signature"
_generic_user_object
�

_variables
_trainable_variables
 _trainable_variables_indices
_iterations
_learning_rate"
_generic_user_object
�
trace_02�
__inference_serving_default_292�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *'�$
"������������ztrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
0
1
2
3
 4
!5
"6
#7
$8
%9
&10
'11
(12
)13"
trackable_list_wrapper
 "
trackable_dict_wrapper
,
*serving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
0
1
2
3
 4
!5
"6
#7
$8
%9
&10
'11
(12
)13"
trackable_list_wrapper
�
0
1
2
3
 4
!5
"6
#7
$8
%9
&10
'11
(12
)13"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
�
+trace_02�
__inference_serving_default_443�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *'�$
"������������z+trace_0
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
:	 (2rmsprop/iteration
: (2rmsprop/learning_rate
�B�
__inference_serving_default_292inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
y
,_inbound_nodes
-_outbound_nodes
._losses
/	_loss_ids
0_losses_override"
_generic_user_object
�
1_kernel
2bias
3_inbound_nodes
4_outbound_nodes
5_losses
6	_loss_ids
7_losses_override
8_build_shapes_dict"
_generic_user_object
�
	9gamma
:beta
;moving_mean
<moving_variance
=_inbound_nodes
>_outbound_nodes
?_losses
@	_loss_ids
A_losses_override
B_reduction_axes
C_build_shapes_dict"
_generic_user_object
y
D_inbound_nodes
E_outbound_nodes
F_losses
G	_loss_ids
H_losses_override"
_generic_user_object
�
I_kernel
Jbias
K_inbound_nodes
L_outbound_nodes
M_losses
N	_loss_ids
O_losses_override
P_build_shapes_dict"
_generic_user_object
�
	Qgamma
Rbeta
Smoving_mean
Tmoving_variance
U_inbound_nodes
V_outbound_nodes
W_losses
X	_loss_ids
Y_losses_override
Z_reduction_axes
[_build_shapes_dict"
_generic_user_object
y
\_inbound_nodes
]_outbound_nodes
^_losses
_	_loss_ids
`_losses_override"
_generic_user_object
�
a_kernel
bbias
c_inbound_nodes
d_outbound_nodes
e_losses
f	_loss_ids
g_losses_override
h_build_shapes_dict"
_generic_user_object
�
	igamma
jbeta
kmoving_mean
lmoving_variance
m_inbound_nodes
n_outbound_nodes
o_losses
p	_loss_ids
q_losses_override
r_reduction_axes
s_build_shapes_dict"
_generic_user_object
y
t_inbound_nodes
u_outbound_nodes
v_losses
w	_loss_ids
x_losses_override"
_generic_user_object
�
y_inbound_nodes
z_outbound_nodes
{_losses
|	_loss_ids
}_losses_override
~_build_shapes_dict"
_generic_user_object
�
_kernel
	�bias
�_inbound_nodes
�_outbound_nodes
�_losses
�	_loss_ids
�_losses_override
�_build_shapes_dict"
_generic_user_object
~
�_inbound_nodes
�_outbound_nodes
�_losses
�	_loss_ids
�_losses_override"
_generic_user_object
�
�_kernel
	�bias
�_inbound_nodes
�_outbound_nodes
�_losses
�	_loss_ids
�_losses_override
�_build_shapes_dict"
_generic_user_object
�B�
1__inference_signature_wrapper_serving_default_342inputs"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs�

jinputs
kwonlydefaults
 
annotations� *
 
�B�
__inference_serving_default_443inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
2:0 2sequential/conv2d/kernel
$:" 2sequential/conv2d/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
2:0 2$sequential/batch_normalization/gamma
1:/ 2#sequential/batch_normalization/beta
6:4 2*sequential/batch_normalization/moving_mean
::8 2.sequential/batch_normalization/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
4:2 @2sequential/conv2d_1/kernel
&:$@2sequential/conv2d_1/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
4:2@2&sequential/batch_normalization_1/gamma
3:1@2%sequential/batch_normalization_1/beta
8:6@2,sequential/batch_normalization_1/moving_mean
<::@20sequential/batch_normalization_1/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
5:3@�2sequential/conv2d_2/kernel
':%�2sequential/conv2d_2/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
5:3�2&sequential/batch_normalization_2/gamma
4:2�2%sequential/batch_normalization_2/beta
9:7�2,sequential/batch_normalization_2/moving_mean
=:;�20sequential/batch_normalization_2/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
,:*���2sequential/dense/kernel
$:"�2sequential/dense/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
,:*	�2sequential/dense_1/kernel
%:#2sequential/dense_1/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper�
__inference_serving_default_292y12;<9:IJSTQRabklij���9�6
/�,
*�'
inputs�����������
� "!�
unknown����������
__inference_serving_default_443y12;<9:IJSTQRabklij���9�6
/�,
*�'
inputs�����������
� "!�
unknown����������
1__inference_signature_wrapper_serving_default_342�12;<9:IJSTQRabklij���C�@
� 
9�6
4
inputs*�'
inputs�����������"3�0
.
output_0"�
output_0���������
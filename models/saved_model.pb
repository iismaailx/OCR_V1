УЉ
“°
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( И
А
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
Ы
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
resourceИ
.
Identity

input"T
output"T"	
Ttype
u
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	
В
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
Ж
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( И
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
dtypetypeИ
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
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
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
0
Sigmoid
x"T
y"T"
Ttype:

2
Ѕ
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
executor_typestring И®
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
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.14.02v2.14.0-rc1-21-g4dacf3f368e8аЃ	
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
t
v/dense_9/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namev/dense_9/bias
m
"v/dense_9/bias/Read/ReadVariableOpReadVariableOpv/dense_9/bias*
_output_shapes
:*
dtype0
t
m/dense_9/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namem/dense_9/bias
m
"m/dense_9/bias/Read/ReadVariableOpReadVariableOpm/dense_9/bias*
_output_shapes
:*
dtype0
}
v/dense_9/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*!
shared_namev/dense_9/kernel
v
$v/dense_9/kernel/Read/ReadVariableOpReadVariableOpv/dense_9/kernel*
_output_shapes
:	А*
dtype0
}
m/dense_9/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*!
shared_namem/dense_9/kernel
v
$m/dense_9/kernel/Read/ReadVariableOpReadVariableOpm/dense_9/kernel*
_output_shapes
:	А*
dtype0
u
v/dense_8/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_namev/dense_8/bias
n
"v/dense_8/bias/Read/ReadVariableOpReadVariableOpv/dense_8/bias*
_output_shapes	
:А*
dtype0
u
m/dense_8/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_namem/dense_8/bias
n
"m/dense_8/bias/Read/ReadVariableOpReadVariableOpm/dense_8/bias*
_output_shapes	
:А*
dtype0
~
v/dense_8/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
јА*!
shared_namev/dense_8/kernel
w
$v/dense_8/kernel/Read/ReadVariableOpReadVariableOpv/dense_8/kernel* 
_output_shapes
:
јА*
dtype0
~
m/dense_8/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
јА*!
shared_namem/dense_8/kernel
w
$m/dense_8/kernel/Read/ReadVariableOpReadVariableOpm/dense_8/kernel* 
_output_shapes
:
јА*
dtype0
x
v/conv2d_21/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*!
shared_namev/conv2d_21/bias
q
$v/conv2d_21/bias/Read/ReadVariableOpReadVariableOpv/conv2d_21/bias*
_output_shapes
:@*
dtype0
x
m/conv2d_21/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*!
shared_namem/conv2d_21/bias
q
$m/conv2d_21/bias/Read/ReadVariableOpReadVariableOpm/conv2d_21/bias*
_output_shapes
:@*
dtype0
И
v/conv2d_21/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*#
shared_namev/conv2d_21/kernel
Б
&v/conv2d_21/kernel/Read/ReadVariableOpReadVariableOpv/conv2d_21/kernel*&
_output_shapes
: @*
dtype0
И
m/conv2d_21/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*#
shared_namem/conv2d_21/kernel
Б
&m/conv2d_21/kernel/Read/ReadVariableOpReadVariableOpm/conv2d_21/kernel*&
_output_shapes
: @*
dtype0
x
v/conv2d_20/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_namev/conv2d_20/bias
q
$v/conv2d_20/bias/Read/ReadVariableOpReadVariableOpv/conv2d_20/bias*
_output_shapes
: *
dtype0
x
m/conv2d_20/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_namem/conv2d_20/bias
q
$m/conv2d_20/bias/Read/ReadVariableOpReadVariableOpm/conv2d_20/bias*
_output_shapes
: *
dtype0
И
v/conv2d_20/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *#
shared_namev/conv2d_20/kernel
Б
&v/conv2d_20/kernel/Read/ReadVariableOpReadVariableOpv/conv2d_20/kernel*&
_output_shapes
:  *
dtype0
И
m/conv2d_20/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *#
shared_namem/conv2d_20/kernel
Б
&m/conv2d_20/kernel/Read/ReadVariableOpReadVariableOpm/conv2d_20/kernel*&
_output_shapes
:  *
dtype0
x
v/conv2d_19/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_namev/conv2d_19/bias
q
$v/conv2d_19/bias/Read/ReadVariableOpReadVariableOpv/conv2d_19/bias*
_output_shapes
: *
dtype0
x
m/conv2d_19/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_namem/conv2d_19/bias
q
$m/conv2d_19/bias/Read/ReadVariableOpReadVariableOpm/conv2d_19/bias*
_output_shapes
: *
dtype0
И
v/conv2d_19/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_namev/conv2d_19/kernel
Б
&v/conv2d_19/kernel/Read/ReadVariableOpReadVariableOpv/conv2d_19/kernel*&
_output_shapes
: *
dtype0
И
m/conv2d_19/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_namem/conv2d_19/kernel
Б
&m/conv2d_19/kernel/Read/ReadVariableOpReadVariableOpm/conv2d_19/kernel*&
_output_shapes
: *
dtype0
x
v/conv2d_18/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_namev/conv2d_18/bias
q
$v/conv2d_18/bias/Read/ReadVariableOpReadVariableOpv/conv2d_18/bias*
_output_shapes
:*
dtype0
x
m/conv2d_18/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_namem/conv2d_18/bias
q
$m/conv2d_18/bias/Read/ReadVariableOpReadVariableOpm/conv2d_18/bias*
_output_shapes
:*
dtype0
И
v/conv2d_18/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_namev/conv2d_18/kernel
Б
&v/conv2d_18/kernel/Read/ReadVariableOpReadVariableOpv/conv2d_18/kernel*&
_output_shapes
:*
dtype0
И
m/conv2d_18/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_namem/conv2d_18/kernel
Б
&m/conv2d_18/kernel/Read/ReadVariableOpReadVariableOpm/conv2d_18/kernel*&
_output_shapes
:*
dtype0
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
f
	iterationVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	
p
dense_9/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_9/bias
i
 dense_9/bias/Read/ReadVariableOpReadVariableOpdense_9/bias*
_output_shapes
:*
dtype0
y
dense_9/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*
shared_namedense_9/kernel
r
"dense_9/kernel/Read/ReadVariableOpReadVariableOpdense_9/kernel*
_output_shapes
:	А*
dtype0
q
dense_8/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_namedense_8/bias
j
 dense_8/bias/Read/ReadVariableOpReadVariableOpdense_8/bias*
_output_shapes	
:А*
dtype0
z
dense_8/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
јА*
shared_namedense_8/kernel
s
"dense_8/kernel/Read/ReadVariableOpReadVariableOpdense_8/kernel* 
_output_shapes
:
јА*
dtype0
t
conv2d_21/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_21/bias
m
"conv2d_21/bias/Read/ReadVariableOpReadVariableOpconv2d_21/bias*
_output_shapes
:@*
dtype0
Д
conv2d_21/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*!
shared_nameconv2d_21/kernel
}
$conv2d_21/kernel/Read/ReadVariableOpReadVariableOpconv2d_21/kernel*&
_output_shapes
: @*
dtype0
t
conv2d_20/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_20/bias
m
"conv2d_20/bias/Read/ReadVariableOpReadVariableOpconv2d_20/bias*
_output_shapes
: *
dtype0
Д
conv2d_20/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *!
shared_nameconv2d_20/kernel
}
$conv2d_20/kernel/Read/ReadVariableOpReadVariableOpconv2d_20/kernel*&
_output_shapes
:  *
dtype0
t
conv2d_19/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_19/bias
m
"conv2d_19/bias/Read/ReadVariableOpReadVariableOpconv2d_19/bias*
_output_shapes
: *
dtype0
Д
conv2d_19/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameconv2d_19/kernel
}
$conv2d_19/kernel/Read/ReadVariableOpReadVariableOpconv2d_19/kernel*&
_output_shapes
: *
dtype0
t
conv2d_18/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_18/bias
m
"conv2d_18/bias/Read/ReadVariableOpReadVariableOpconv2d_18/bias*
_output_shapes
:*
dtype0
Д
conv2d_18/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_18/kernel
}
$conv2d_18/kernel/Read/ReadVariableOpReadVariableOpconv2d_18/kernel*&
_output_shapes
:*
dtype0
Ц
serving_default_conv2d_18_inputPlaceholder*1
_output_shapes
:€€€€€€€€€ЦЦ*
dtype0*&
shape:€€€€€€€€€ЦЦ
Щ
StatefulPartitionedCallStatefulPartitionedCallserving_default_conv2d_18_inputconv2d_18/kernelconv2d_18/biasconv2d_19/kernelconv2d_19/biasconv2d_20/kernelconv2d_20/biasconv2d_21/kernelconv2d_21/biasdense_8/kerneldense_8/biasdense_9/kerneldense_9/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *-
f(R&
$__inference_signature_wrapper_215343

NoOpNoOp
Ц^
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*—]
value«]Bƒ] Bљ]
ш
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer-5
layer_with_weights-3
layer-6
layer-7
	layer-8

layer_with_weights-4

layer-9
layer_with_weights-5
layer-10
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
»
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias
 _jit_compiled_convolution_op*
О
	variables
trainable_variables
 regularization_losses
!	keras_api
"__call__
*#&call_and_return_all_conditional_losses* 
»
$	variables
%trainable_variables
&regularization_losses
'	keras_api
(__call__
*)&call_and_return_all_conditional_losses

*kernel
+bias
 ,_jit_compiled_convolution_op*
О
-	variables
.trainable_variables
/regularization_losses
0	keras_api
1__call__
*2&call_and_return_all_conditional_losses* 
»
3	variables
4trainable_variables
5regularization_losses
6	keras_api
7__call__
*8&call_and_return_all_conditional_losses

9kernel
:bias
 ;_jit_compiled_convolution_op*
О
<	variables
=trainable_variables
>regularization_losses
?	keras_api
@__call__
*A&call_and_return_all_conditional_losses* 
»
B	variables
Ctrainable_variables
Dregularization_losses
E	keras_api
F__call__
*G&call_and_return_all_conditional_losses

Hkernel
Ibias
 J_jit_compiled_convolution_op*
О
K	variables
Ltrainable_variables
Mregularization_losses
N	keras_api
O__call__
*P&call_and_return_all_conditional_losses* 
О
Q	variables
Rtrainable_variables
Sregularization_losses
T	keras_api
U__call__
*V&call_and_return_all_conditional_losses* 
¶
W	variables
Xtrainable_variables
Yregularization_losses
Z	keras_api
[__call__
*\&call_and_return_all_conditional_losses

]kernel
^bias*
¶
_	variables
`trainable_variables
aregularization_losses
b	keras_api
c__call__
*d&call_and_return_all_conditional_losses

ekernel
fbias*
Z
0
1
*2
+3
94
:5
H6
I7
]8
^9
e10
f11*
Z
0
1
*2
+3
94
:5
H6
I7
]8
^9
e10
f11*
* 
∞
gnon_trainable_variables

hlayers
imetrics
jlayer_regularization_losses
klayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

ltrace_0
mtrace_1* 

ntrace_0
otrace_1* 
* 
Б
p
_variables
q_iterations
r_learning_rate
s_index_dict
t
_momentums
u_velocities
v_update_step_xla*

wserving_default* 

0
1*

0
1*
* 
У
xnon_trainable_variables

ylayers
zmetrics
{layer_regularization_losses
|layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

}trace_0* 

~trace_0* 
`Z
VARIABLE_VALUEconv2d_18/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_18/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
Х
non_trainable_variables
Аlayers
Бmetrics
 Вlayer_regularization_losses
Гlayer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses* 

Дtrace_0* 

Еtrace_0* 

*0
+1*

*0
+1*
* 
Ш
Жnon_trainable_variables
Зlayers
Иmetrics
 Йlayer_regularization_losses
Кlayer_metrics
$	variables
%trainable_variables
&regularization_losses
(__call__
*)&call_and_return_all_conditional_losses
&)"call_and_return_conditional_losses*

Лtrace_0* 

Мtrace_0* 
`Z
VARIABLE_VALUEconv2d_19/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_19/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
Ц
Нnon_trainable_variables
Оlayers
Пmetrics
 Рlayer_regularization_losses
Сlayer_metrics
-	variables
.trainable_variables
/regularization_losses
1__call__
*2&call_and_return_all_conditional_losses
&2"call_and_return_conditional_losses* 

Тtrace_0* 

Уtrace_0* 

90
:1*

90
:1*
* 
Ш
Фnon_trainable_variables
Хlayers
Цmetrics
 Чlayer_regularization_losses
Шlayer_metrics
3	variables
4trainable_variables
5regularization_losses
7__call__
*8&call_and_return_all_conditional_losses
&8"call_and_return_conditional_losses*

Щtrace_0* 

Ъtrace_0* 
`Z
VARIABLE_VALUEconv2d_20/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_20/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
Ц
Ыnon_trainable_variables
Ьlayers
Эmetrics
 Юlayer_regularization_losses
Яlayer_metrics
<	variables
=trainable_variables
>regularization_losses
@__call__
*A&call_and_return_all_conditional_losses
&A"call_and_return_conditional_losses* 

†trace_0* 

°trace_0* 

H0
I1*

H0
I1*
* 
Ш
Ґnon_trainable_variables
£layers
§metrics
 •layer_regularization_losses
¶layer_metrics
B	variables
Ctrainable_variables
Dregularization_losses
F__call__
*G&call_and_return_all_conditional_losses
&G"call_and_return_conditional_losses*

Іtrace_0* 

®trace_0* 
`Z
VARIABLE_VALUEconv2d_21/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_21/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
Ц
©non_trainable_variables
™layers
Ђmetrics
 ђlayer_regularization_losses
≠layer_metrics
K	variables
Ltrainable_variables
Mregularization_losses
O__call__
*P&call_and_return_all_conditional_losses
&P"call_and_return_conditional_losses* 

Ѓtrace_0* 

ѓtrace_0* 
* 
* 
* 
Ц
∞non_trainable_variables
±layers
≤metrics
 ≥layer_regularization_losses
іlayer_metrics
Q	variables
Rtrainable_variables
Sregularization_losses
U__call__
*V&call_and_return_all_conditional_losses
&V"call_and_return_conditional_losses* 

µtrace_0* 

ґtrace_0* 

]0
^1*

]0
^1*
* 
Ш
Јnon_trainable_variables
Єlayers
єmetrics
 Їlayer_regularization_losses
їlayer_metrics
W	variables
Xtrainable_variables
Yregularization_losses
[__call__
*\&call_and_return_all_conditional_losses
&\"call_and_return_conditional_losses*

Љtrace_0* 

љtrace_0* 
^X
VARIABLE_VALUEdense_8/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_8/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*

e0
f1*

e0
f1*
* 
Ш
Њnon_trainable_variables
њlayers
јmetrics
 Ѕlayer_regularization_losses
¬layer_metrics
_	variables
`trainable_variables
aregularization_losses
c__call__
*d&call_and_return_all_conditional_losses
&d"call_and_return_conditional_losses*

√trace_0* 

ƒtrace_0* 
^X
VARIABLE_VALUEdense_9/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_9/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
R
0
1
2
3
4
5
6
7
	8

9
10*

≈0
∆1*
* 
* 
* 
* 
* 
* 
Џ
q0
«1
»2
…3
 4
Ћ5
ћ6
Ќ7
ќ8
ѕ9
–10
—11
“12
”13
‘14
’15
÷16
„17
Ў18
ў19
Џ20
џ21
№22
Ё23
ё24*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
f
«0
…1
Ћ2
Ќ3
ѕ4
—5
”6
’7
„8
ў9
џ10
Ё11*
f
»0
 1
ћ2
ќ3
–4
“5
‘6
÷7
Ў8
Џ9
№10
ё11*
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
* 
* 
* 
* 
* 
* 
* 
<
я	variables
а	keras_api

бtotal

вcount*
M
г	variables
д	keras_api

еtotal

жcount
з
_fn_kwargs*
]W
VARIABLE_VALUEm/conv2d_18/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEv/conv2d_18/kernel1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEm/conv2d_18/bias1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEv/conv2d_18/bias1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEm/conv2d_19/kernel1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEv/conv2d_19/kernel1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEm/conv2d_19/bias1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEv/conv2d_19/bias1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEm/conv2d_20/kernel1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEv/conv2d_20/kernel2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEm/conv2d_20/bias2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEv/conv2d_20/bias2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEm/conv2d_21/kernel2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEv/conv2d_21/kernel2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEm/conv2d_21/bias2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEv/conv2d_21/bias2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEm/dense_8/kernel2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEv/dense_8/kernel2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEm/dense_8/bias2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEv/dense_8/bias2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEm/dense_9/kernel2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEv/dense_9/kernel2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEm/dense_9/bias2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEv/dense_9/bias2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUE*

б0
в1*

я	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

е0
ж1*

г	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
ю
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameconv2d_18/kernelconv2d_18/biasconv2d_19/kernelconv2d_19/biasconv2d_20/kernelconv2d_20/biasconv2d_21/kernelconv2d_21/biasdense_8/kerneldense_8/biasdense_9/kerneldense_9/bias	iterationlearning_ratem/conv2d_18/kernelv/conv2d_18/kernelm/conv2d_18/biasv/conv2d_18/biasm/conv2d_19/kernelv/conv2d_19/kernelm/conv2d_19/biasv/conv2d_19/biasm/conv2d_20/kernelv/conv2d_20/kernelm/conv2d_20/biasv/conv2d_20/biasm/conv2d_21/kernelv/conv2d_21/kernelm/conv2d_21/biasv/conv2d_21/biasm/dense_8/kernelv/dense_8/kernelm/dense_8/biasv/dense_8/biasm/dense_9/kernelv/dense_9/kernelm/dense_9/biasv/dense_9/biastotal_1count_1totalcountConst*7
Tin0
.2,*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *(
f#R!
__inference__traced_save_215788
щ
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_18/kernelconv2d_18/biasconv2d_19/kernelconv2d_19/biasconv2d_20/kernelconv2d_20/biasconv2d_21/kernelconv2d_21/biasdense_8/kerneldense_8/biasdense_9/kerneldense_9/bias	iterationlearning_ratem/conv2d_18/kernelv/conv2d_18/kernelm/conv2d_18/biasv/conv2d_18/biasm/conv2d_19/kernelv/conv2d_19/kernelm/conv2d_19/biasv/conv2d_19/biasm/conv2d_20/kernelv/conv2d_20/kernelm/conv2d_20/biasv/conv2d_20/biasm/conv2d_21/kernelv/conv2d_21/kernelm/conv2d_21/biasv/conv2d_21/biasm/dense_8/kernelv/dense_8/kernelm/dense_8/biasv/dense_8/biasm/dense_9/kernelv/dense_9/kernelm/dense_9/biasv/dense_9/biastotal_1count_1totalcount*6
Tin/
-2+*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *+
f&R$
"__inference__traced_restore_215923хл
«
a
E__inference_flatten_4_layer_call_and_return_conditional_losses_215474

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€@  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:€€€€€€€€€јY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:€€€€€€€€€ј"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€@:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
µ
ю
E__inference_conv2d_21_layer_call_and_return_conditional_losses_215453

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€@S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Ѕ
ю
E__inference_conv2d_18_layer_call_and_return_conditional_losses_215057

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ь
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€ФФ*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€ФФZ
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:€€€€€€€€€ФФk
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€ФФS
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:€€€€€€€€€ЦЦ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:€€€€€€€€€ЦЦ
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Ф
h
L__inference_max_pooling2d_20_layer_call_and_return_conditional_losses_215433

inputs
identityҐ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Ы
Я
*__inference_conv2d_20_layer_call_fn_215412

inputs!
unknown:  
	unknown_0: 
identityИҐStatefulPartitionedCallе
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€"" *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_20_layer_call_and_return_conditional_losses_215091w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€"" <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€$$ : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€$$ 
 
_user_specified_nameinputs:&"
 
_user_specified_name215406:&"
 
_user_specified_name215408
µ
ю
E__inference_conv2d_21_layer_call_and_return_conditional_losses_215108

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€@S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
÷

ч
C__inference_dense_8_layer_call_and_return_conditional_losses_215494

inputs2
matmul_readvariableop_resource:
јА.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
јА*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€АS
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€ј: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€ј
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Ф
h
L__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_215373

inputs
identityҐ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
ц
Ш
(__inference_dense_8_layer_call_fn_215483

inputs
unknown:
јА
	unknown_0:	А
identityИҐStatefulPartitionedCall№
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_215132p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€А<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€ј: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:€€€€€€€€€ј
 
_user_specified_nameinputs:&"
 
_user_specified_name215477:&"
 
_user_specified_name215479
Ќ

х
C__inference_dense_9_layer_call_and_return_conditional_losses_215148

inputs1
matmul_readvariableop_resource:	А-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
µ
ю
E__inference_conv2d_20_layer_call_and_return_conditional_losses_215091

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€"" *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€"" X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€"" i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€"" S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€$$ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€$$ 
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Ф
h
L__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_215403

inputs
identityҐ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
т
Ц
(__inference_dense_9_layer_call_fn_215503

inputs
unknown:	А
	unknown_0:
identityИҐStatefulPartitionedCallџ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_9_layer_call_and_return_conditional_losses_215148o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs:&"
 
_user_specified_name215497:&"
 
_user_specified_name215499
Ф
h
L__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_215009

inputs
identityҐ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
µ
ю
E__inference_conv2d_19_layer_call_and_return_conditional_losses_215393

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€HH *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€HH X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€HH i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€HH S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€JJ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€JJ
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
љ
M
1__inference_max_pooling2d_19_layer_call_fn_215398

inputs
identityЁ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_215019Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
„3
ш
H__inference_sequential_4_layer_call_and_return_conditional_losses_215194
conv2d_18_input*
conv2d_18_215158:
conv2d_18_215160:*
conv2d_19_215164: 
conv2d_19_215166: *
conv2d_20_215170:  
conv2d_20_215172: *
conv2d_21_215176: @
conv2d_21_215178:@"
dense_8_215183:
јА
dense_8_215185:	А!
dense_9_215188:	А
dense_9_215190:
identityИҐ!conv2d_18/StatefulPartitionedCallҐ!conv2d_19/StatefulPartitionedCallҐ!conv2d_20/StatefulPartitionedCallҐ!conv2d_21/StatefulPartitionedCallҐdense_8/StatefulPartitionedCallҐdense_9/StatefulPartitionedCallК
!conv2d_18/StatefulPartitionedCallStatefulPartitionedCallconv2d_18_inputconv2d_18_215158conv2d_18_215160*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€ФФ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_18_layer_call_and_return_conditional_losses_215057ч
 max_pooling2d_18/PartitionedCallPartitionedCall*conv2d_18/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€JJ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_215009Ґ
!conv2d_19/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_18/PartitionedCall:output:0conv2d_19_215164conv2d_19_215166*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€HH *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_19_layer_call_and_return_conditional_losses_215074ч
 max_pooling2d_19/PartitionedCallPartitionedCall*conv2d_19/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€$$ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_215019Ґ
!conv2d_20/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_19/PartitionedCall:output:0conv2d_20_215170conv2d_20_215172*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€"" *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_20_layer_call_and_return_conditional_losses_215091ч
 max_pooling2d_20/PartitionedCallPartitionedCall*conv2d_20/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_max_pooling2d_20_layer_call_and_return_conditional_losses_215029Ґ
!conv2d_21/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_20/PartitionedCall:output:0conv2d_21_215176conv2d_21_215178*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_21_layer_call_and_return_conditional_losses_215108ч
 max_pooling2d_21/PartitionedCallPartitionedCall*conv2d_21/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_max_pooling2d_21_layer_call_and_return_conditional_losses_215039б
flatten_4/PartitionedCallPartitionedCall)max_pooling2d_21/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€ј* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_flatten_4_layer_call_and_return_conditional_losses_215120М
dense_8/StatefulPartitionedCallStatefulPartitionedCall"flatten_4/PartitionedCall:output:0dense_8_215183dense_8_215185*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_215132С
dense_9/StatefulPartitionedCallStatefulPartitionedCall(dense_8/StatefulPartitionedCall:output:0dense_9_215188dense_9_215190*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_9_layer_call_and_return_conditional_losses_215148w
IdentityIdentity(dense_9/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ц
NoOpNoOp"^conv2d_18/StatefulPartitionedCall"^conv2d_19/StatefulPartitionedCall"^conv2d_20/StatefulPartitionedCall"^conv2d_21/StatefulPartitionedCall ^dense_8/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:€€€€€€€€€ЦЦ: : : : : : : : : : : : 2F
!conv2d_18/StatefulPartitionedCall!conv2d_18/StatefulPartitionedCall2F
!conv2d_19/StatefulPartitionedCall!conv2d_19/StatefulPartitionedCall2F
!conv2d_20/StatefulPartitionedCall!conv2d_20/StatefulPartitionedCall2F
!conv2d_21/StatefulPartitionedCall!conv2d_21/StatefulPartitionedCall2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall:b ^
1
_output_shapes
:€€€€€€€€€ЦЦ
)
_user_specified_nameconv2d_18_input:&"
 
_user_specified_name215158:&"
 
_user_specified_name215160:&"
 
_user_specified_name215164:&"
 
_user_specified_name215166:&"
 
_user_specified_name215170:&"
 
_user_specified_name215172:&"
 
_user_specified_name215176:&"
 
_user_specified_name215178:&	"
 
_user_specified_name215183:&
"
 
_user_specified_name215185:&"
 
_user_specified_name215188:&"
 
_user_specified_name215190
Ќ

х
C__inference_dense_9_layer_call_and_return_conditional_losses_215514

inputs1
matmul_readvariableop_resource:	А-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Ф
h
L__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_215019

inputs
identityҐ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Ф
h
L__inference_max_pooling2d_21_layer_call_and_return_conditional_losses_215463

inputs
identityҐ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Ф
h
L__inference_max_pooling2d_21_layer_call_and_return_conditional_losses_215039

inputs
identityҐ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
В
÷
-__inference_sequential_4_layer_call_fn_215223
conv2d_18_input!
unknown:
	unknown_0:#
	unknown_1: 
	unknown_2: #
	unknown_3:  
	unknown_4: #
	unknown_5: @
	unknown_6:@
	unknown_7:
јА
	unknown_8:	А
	unknown_9:	А

unknown_10:
identityИҐStatefulPartitionedCallм
StatefulPartitionedCallStatefulPartitionedCallconv2d_18_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_sequential_4_layer_call_and_return_conditional_losses_215155o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:€€€€€€€€€ЦЦ: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:b ^
1
_output_shapes
:€€€€€€€€€ЦЦ
)
_user_specified_nameconv2d_18_input:&"
 
_user_specified_name215197:&"
 
_user_specified_name215199:&"
 
_user_specified_name215201:&"
 
_user_specified_name215203:&"
 
_user_specified_name215205:&"
 
_user_specified_name215207:&"
 
_user_specified_name215209:&"
 
_user_specified_name215211:&	"
 
_user_specified_name215213:&
"
 
_user_specified_name215215:&"
 
_user_specified_name215217:&"
 
_user_specified_name215219
Ы
Я
*__inference_conv2d_19_layer_call_fn_215382

inputs!
unknown: 
	unknown_0: 
identityИҐStatefulPartitionedCallе
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€HH *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_19_layer_call_and_return_conditional_losses_215074w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€HH <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€JJ: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€JJ
 
_user_specified_nameinputs:&"
 
_user_specified_name215376:&"
 
_user_specified_name215378
Фњ
≥
"__inference__traced_restore_215923
file_prefix;
!assignvariableop_conv2d_18_kernel:/
!assignvariableop_1_conv2d_18_bias:=
#assignvariableop_2_conv2d_19_kernel: /
!assignvariableop_3_conv2d_19_bias: =
#assignvariableop_4_conv2d_20_kernel:  /
!assignvariableop_5_conv2d_20_bias: =
#assignvariableop_6_conv2d_21_kernel: @/
!assignvariableop_7_conv2d_21_bias:@5
!assignvariableop_8_dense_8_kernel:
јА.
assignvariableop_9_dense_8_bias:	А5
"assignvariableop_10_dense_9_kernel:	А.
 assignvariableop_11_dense_9_bias:'
assignvariableop_12_iteration:	 +
!assignvariableop_13_learning_rate: @
&assignvariableop_14_m_conv2d_18_kernel:@
&assignvariableop_15_v_conv2d_18_kernel:2
$assignvariableop_16_m_conv2d_18_bias:2
$assignvariableop_17_v_conv2d_18_bias:@
&assignvariableop_18_m_conv2d_19_kernel: @
&assignvariableop_19_v_conv2d_19_kernel: 2
$assignvariableop_20_m_conv2d_19_bias: 2
$assignvariableop_21_v_conv2d_19_bias: @
&assignvariableop_22_m_conv2d_20_kernel:  @
&assignvariableop_23_v_conv2d_20_kernel:  2
$assignvariableop_24_m_conv2d_20_bias: 2
$assignvariableop_25_v_conv2d_20_bias: @
&assignvariableop_26_m_conv2d_21_kernel: @@
&assignvariableop_27_v_conv2d_21_kernel: @2
$assignvariableop_28_m_conv2d_21_bias:@2
$assignvariableop_29_v_conv2d_21_bias:@8
$assignvariableop_30_m_dense_8_kernel:
јА8
$assignvariableop_31_v_dense_8_kernel:
јА1
"assignvariableop_32_m_dense_8_bias:	А1
"assignvariableop_33_v_dense_8_bias:	А7
$assignvariableop_34_m_dense_9_kernel:	А7
$assignvariableop_35_v_dense_9_kernel:	А0
"assignvariableop_36_m_dense_9_bias:0
"assignvariableop_37_v_dense_9_bias:%
assignvariableop_38_total_1: %
assignvariableop_39_count_1: #
assignvariableop_40_total: #
assignvariableop_41_count: 
identity_43ИҐAssignVariableOpҐAssignVariableOp_1ҐAssignVariableOp_10ҐAssignVariableOp_11ҐAssignVariableOp_12ҐAssignVariableOp_13ҐAssignVariableOp_14ҐAssignVariableOp_15ҐAssignVariableOp_16ҐAssignVariableOp_17ҐAssignVariableOp_18ҐAssignVariableOp_19ҐAssignVariableOp_2ҐAssignVariableOp_20ҐAssignVariableOp_21ҐAssignVariableOp_22ҐAssignVariableOp_23ҐAssignVariableOp_24ҐAssignVariableOp_25ҐAssignVariableOp_26ҐAssignVariableOp_27ҐAssignVariableOp_28ҐAssignVariableOp_29ҐAssignVariableOp_3ҐAssignVariableOp_30ҐAssignVariableOp_31ҐAssignVariableOp_32ҐAssignVariableOp_33ҐAssignVariableOp_34ҐAssignVariableOp_35ҐAssignVariableOp_36ҐAssignVariableOp_37ҐAssignVariableOp_38ҐAssignVariableOp_39ҐAssignVariableOp_4ҐAssignVariableOp_40ҐAssignVariableOp_41ҐAssignVariableOp_5ҐAssignVariableOp_6ҐAssignVariableOp_7ҐAssignVariableOp_8ҐAssignVariableOp_9Ј
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:+*
dtype0*Ё
value”B–+B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH∆
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:+*
dtype0*i
value`B^+B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ш
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*¬
_output_shapesѓ
ђ:::::::::::::::::::::::::::::::::::::::::::*9
dtypes/
-2+	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:і
AssignVariableOpAssignVariableOp!assignvariableop_conv2d_18_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:Є
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv2d_18_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_2AssignVariableOp#assignvariableop_2_conv2d_19_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:Є
AssignVariableOp_3AssignVariableOp!assignvariableop_3_conv2d_19_biasIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_4AssignVariableOp#assignvariableop_4_conv2d_20_kernelIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:Є
AssignVariableOp_5AssignVariableOp!assignvariableop_5_conv2d_20_biasIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_6AssignVariableOp#assignvariableop_6_conv2d_21_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:Є
AssignVariableOp_7AssignVariableOp!assignvariableop_7_conv2d_21_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:Є
AssignVariableOp_8AssignVariableOp!assignvariableop_8_dense_8_kernelIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:ґ
AssignVariableOp_9AssignVariableOpassignvariableop_9_dense_8_biasIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:ї
AssignVariableOp_10AssignVariableOp"assignvariableop_10_dense_9_kernelIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:є
AssignVariableOp_11AssignVariableOp assignvariableop_11_dense_9_biasIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0	*
_output_shapes
:ґ
AssignVariableOp_12AssignVariableOpassignvariableop_12_iterationIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_13AssignVariableOp!assignvariableop_13_learning_rateIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:њ
AssignVariableOp_14AssignVariableOp&assignvariableop_14_m_conv2d_18_kernelIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:њ
AssignVariableOp_15AssignVariableOp&assignvariableop_15_v_conv2d_18_kernelIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:љ
AssignVariableOp_16AssignVariableOp$assignvariableop_16_m_conv2d_18_biasIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:љ
AssignVariableOp_17AssignVariableOp$assignvariableop_17_v_conv2d_18_biasIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:њ
AssignVariableOp_18AssignVariableOp&assignvariableop_18_m_conv2d_19_kernelIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:њ
AssignVariableOp_19AssignVariableOp&assignvariableop_19_v_conv2d_19_kernelIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:љ
AssignVariableOp_20AssignVariableOp$assignvariableop_20_m_conv2d_19_biasIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:љ
AssignVariableOp_21AssignVariableOp$assignvariableop_21_v_conv2d_19_biasIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:њ
AssignVariableOp_22AssignVariableOp&assignvariableop_22_m_conv2d_20_kernelIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:њ
AssignVariableOp_23AssignVariableOp&assignvariableop_23_v_conv2d_20_kernelIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:љ
AssignVariableOp_24AssignVariableOp$assignvariableop_24_m_conv2d_20_biasIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:љ
AssignVariableOp_25AssignVariableOp$assignvariableop_25_v_conv2d_20_biasIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:њ
AssignVariableOp_26AssignVariableOp&assignvariableop_26_m_conv2d_21_kernelIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:њ
AssignVariableOp_27AssignVariableOp&assignvariableop_27_v_conv2d_21_kernelIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:љ
AssignVariableOp_28AssignVariableOp$assignvariableop_28_m_conv2d_21_biasIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:љ
AssignVariableOp_29AssignVariableOp$assignvariableop_29_v_conv2d_21_biasIdentity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:љ
AssignVariableOp_30AssignVariableOp$assignvariableop_30_m_dense_8_kernelIdentity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:љ
AssignVariableOp_31AssignVariableOp$assignvariableop_31_v_dense_8_kernelIdentity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:ї
AssignVariableOp_32AssignVariableOp"assignvariableop_32_m_dense_8_biasIdentity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:ї
AssignVariableOp_33AssignVariableOp"assignvariableop_33_v_dense_8_biasIdentity_33:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:љ
AssignVariableOp_34AssignVariableOp$assignvariableop_34_m_dense_9_kernelIdentity_34:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:љ
AssignVariableOp_35AssignVariableOp$assignvariableop_35_v_dense_9_kernelIdentity_35:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:ї
AssignVariableOp_36AssignVariableOp"assignvariableop_36_m_dense_9_biasIdentity_36:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:ї
AssignVariableOp_37AssignVariableOp"assignvariableop_37_v_dense_9_biasIdentity_37:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:і
AssignVariableOp_38AssignVariableOpassignvariableop_38_total_1Identity_38:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:і
AssignVariableOp_39AssignVariableOpassignvariableop_39_count_1Identity_39:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:≤
AssignVariableOp_40AssignVariableOpassignvariableop_40_totalIdentity_40:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:≤
AssignVariableOp_41AssignVariableOpassignvariableop_41_countIdentity_41:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 л
Identity_42Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_43IdentityIdentity_42:output:0^NoOp_1*
T0*
_output_shapes
: і
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
_output_shapes
 "#
identity_43Identity_43:output:0*(
_construction_contextkEagerRuntime*i
_input_shapesX
V: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
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
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:0,
*
_user_specified_nameconv2d_18/kernel:.*
(
_user_specified_nameconv2d_18/bias:0,
*
_user_specified_nameconv2d_19/kernel:.*
(
_user_specified_nameconv2d_19/bias:0,
*
_user_specified_nameconv2d_20/kernel:.*
(
_user_specified_nameconv2d_20/bias:0,
*
_user_specified_nameconv2d_21/kernel:.*
(
_user_specified_nameconv2d_21/bias:.	*
(
_user_specified_namedense_8/kernel:,
(
&
_user_specified_namedense_8/bias:.*
(
_user_specified_namedense_9/kernel:,(
&
_user_specified_namedense_9/bias:)%
#
_user_specified_name	iteration:-)
'
_user_specified_namelearning_rate:2.
,
_user_specified_namem/conv2d_18/kernel:2.
,
_user_specified_namev/conv2d_18/kernel:0,
*
_user_specified_namem/conv2d_18/bias:0,
*
_user_specified_namev/conv2d_18/bias:2.
,
_user_specified_namem/conv2d_19/kernel:2.
,
_user_specified_namev/conv2d_19/kernel:0,
*
_user_specified_namem/conv2d_19/bias:0,
*
_user_specified_namev/conv2d_19/bias:2.
,
_user_specified_namem/conv2d_20/kernel:2.
,
_user_specified_namev/conv2d_20/kernel:0,
*
_user_specified_namem/conv2d_20/bias:0,
*
_user_specified_namev/conv2d_20/bias:2.
,
_user_specified_namem/conv2d_21/kernel:2.
,
_user_specified_namev/conv2d_21/kernel:0,
*
_user_specified_namem/conv2d_21/bias:0,
*
_user_specified_namev/conv2d_21/bias:0,
*
_user_specified_namem/dense_8/kernel:0 ,
*
_user_specified_namev/dense_8/kernel:.!*
(
_user_specified_namem/dense_8/bias:."*
(
_user_specified_namev/dense_8/bias:0#,
*
_user_specified_namem/dense_9/kernel:0$,
*
_user_specified_namev/dense_9/kernel:.%*
(
_user_specified_namem/dense_9/bias:.&*
(
_user_specified_namev/dense_9/bias:''#
!
_user_specified_name	total_1:'(#
!
_user_specified_name	count_1:%)!

_user_specified_nametotal:%*!

_user_specified_namecount
“
Ќ
$__inference_signature_wrapper_215343
conv2d_18_input!
unknown:
	unknown_0:#
	unknown_1: 
	unknown_2: #
	unknown_3:  
	unknown_4: #
	unknown_5: @
	unknown_6:@
	unknown_7:
јА
	unknown_8:	А
	unknown_9:	А

unknown_10:
identityИҐStatefulPartitionedCall≈
StatefulPartitionedCallStatefulPartitionedCallconv2d_18_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В **
f%R#
!__inference__wrapped_model_215004o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:€€€€€€€€€ЦЦ: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:b ^
1
_output_shapes
:€€€€€€€€€ЦЦ
)
_user_specified_nameconv2d_18_input:&"
 
_user_specified_name215317:&"
 
_user_specified_name215319:&"
 
_user_specified_name215321:&"
 
_user_specified_name215323:&"
 
_user_specified_name215325:&"
 
_user_specified_name215327:&"
 
_user_specified_name215329:&"
 
_user_specified_name215331:&	"
 
_user_specified_name215333:&
"
 
_user_specified_name215335:&"
 
_user_specified_name215337:&"
 
_user_specified_name215339
єљ
Ё%
__inference__traced_save_215788
file_prefixA
'read_disablecopyonread_conv2d_18_kernel:5
'read_1_disablecopyonread_conv2d_18_bias:C
)read_2_disablecopyonread_conv2d_19_kernel: 5
'read_3_disablecopyonread_conv2d_19_bias: C
)read_4_disablecopyonread_conv2d_20_kernel:  5
'read_5_disablecopyonread_conv2d_20_bias: C
)read_6_disablecopyonread_conv2d_21_kernel: @5
'read_7_disablecopyonread_conv2d_21_bias:@;
'read_8_disablecopyonread_dense_8_kernel:
јА4
%read_9_disablecopyonread_dense_8_bias:	А;
(read_10_disablecopyonread_dense_9_kernel:	А4
&read_11_disablecopyonread_dense_9_bias:-
#read_12_disablecopyonread_iteration:	 1
'read_13_disablecopyonread_learning_rate: F
,read_14_disablecopyonread_m_conv2d_18_kernel:F
,read_15_disablecopyonread_v_conv2d_18_kernel:8
*read_16_disablecopyonread_m_conv2d_18_bias:8
*read_17_disablecopyonread_v_conv2d_18_bias:F
,read_18_disablecopyonread_m_conv2d_19_kernel: F
,read_19_disablecopyonread_v_conv2d_19_kernel: 8
*read_20_disablecopyonread_m_conv2d_19_bias: 8
*read_21_disablecopyonread_v_conv2d_19_bias: F
,read_22_disablecopyonread_m_conv2d_20_kernel:  F
,read_23_disablecopyonread_v_conv2d_20_kernel:  8
*read_24_disablecopyonread_m_conv2d_20_bias: 8
*read_25_disablecopyonread_v_conv2d_20_bias: F
,read_26_disablecopyonread_m_conv2d_21_kernel: @F
,read_27_disablecopyonread_v_conv2d_21_kernel: @8
*read_28_disablecopyonread_m_conv2d_21_bias:@8
*read_29_disablecopyonread_v_conv2d_21_bias:@>
*read_30_disablecopyonread_m_dense_8_kernel:
јА>
*read_31_disablecopyonread_v_dense_8_kernel:
јА7
(read_32_disablecopyonread_m_dense_8_bias:	А7
(read_33_disablecopyonread_v_dense_8_bias:	А=
*read_34_disablecopyonread_m_dense_9_kernel:	А=
*read_35_disablecopyonread_v_dense_9_kernel:	А6
(read_36_disablecopyonread_m_dense_9_bias:6
(read_37_disablecopyonread_v_dense_9_bias:+
!read_38_disablecopyonread_total_1: +
!read_39_disablecopyonread_count_1: )
read_40_disablecopyonread_total: )
read_41_disablecopyonread_count: 
savev2_const
identity_85ИҐMergeV2CheckpointsҐRead/DisableCopyOnReadҐRead/ReadVariableOpҐRead_1/DisableCopyOnReadҐRead_1/ReadVariableOpҐRead_10/DisableCopyOnReadҐRead_10/ReadVariableOpҐRead_11/DisableCopyOnReadҐRead_11/ReadVariableOpҐRead_12/DisableCopyOnReadҐRead_12/ReadVariableOpҐRead_13/DisableCopyOnReadҐRead_13/ReadVariableOpҐRead_14/DisableCopyOnReadҐRead_14/ReadVariableOpҐRead_15/DisableCopyOnReadҐRead_15/ReadVariableOpҐRead_16/DisableCopyOnReadҐRead_16/ReadVariableOpҐRead_17/DisableCopyOnReadҐRead_17/ReadVariableOpҐRead_18/DisableCopyOnReadҐRead_18/ReadVariableOpҐRead_19/DisableCopyOnReadҐRead_19/ReadVariableOpҐRead_2/DisableCopyOnReadҐRead_2/ReadVariableOpҐRead_20/DisableCopyOnReadҐRead_20/ReadVariableOpҐRead_21/DisableCopyOnReadҐRead_21/ReadVariableOpҐRead_22/DisableCopyOnReadҐRead_22/ReadVariableOpҐRead_23/DisableCopyOnReadҐRead_23/ReadVariableOpҐRead_24/DisableCopyOnReadҐRead_24/ReadVariableOpҐRead_25/DisableCopyOnReadҐRead_25/ReadVariableOpҐRead_26/DisableCopyOnReadҐRead_26/ReadVariableOpҐRead_27/DisableCopyOnReadҐRead_27/ReadVariableOpҐRead_28/DisableCopyOnReadҐRead_28/ReadVariableOpҐRead_29/DisableCopyOnReadҐRead_29/ReadVariableOpҐRead_3/DisableCopyOnReadҐRead_3/ReadVariableOpҐRead_30/DisableCopyOnReadҐRead_30/ReadVariableOpҐRead_31/DisableCopyOnReadҐRead_31/ReadVariableOpҐRead_32/DisableCopyOnReadҐRead_32/ReadVariableOpҐRead_33/DisableCopyOnReadҐRead_33/ReadVariableOpҐRead_34/DisableCopyOnReadҐRead_34/ReadVariableOpҐRead_35/DisableCopyOnReadҐRead_35/ReadVariableOpҐRead_36/DisableCopyOnReadҐRead_36/ReadVariableOpҐRead_37/DisableCopyOnReadҐRead_37/ReadVariableOpҐRead_38/DisableCopyOnReadҐRead_38/ReadVariableOpҐRead_39/DisableCopyOnReadҐRead_39/ReadVariableOpҐRead_4/DisableCopyOnReadҐRead_4/ReadVariableOpҐRead_40/DisableCopyOnReadҐRead_40/ReadVariableOpҐRead_41/DisableCopyOnReadҐRead_41/ReadVariableOpҐRead_5/DisableCopyOnReadҐRead_5/ReadVariableOpҐRead_6/DisableCopyOnReadҐRead_6/ReadVariableOpҐRead_7/DisableCopyOnReadҐRead_7/ReadVariableOpҐRead_8/DisableCopyOnReadҐRead_8/ReadVariableOpҐRead_9/DisableCopyOnReadҐRead_9/ReadVariableOpw
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
_temp/partБ
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : У
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: y
Read/DisableCopyOnReadDisableCopyOnRead'read_disablecopyonread_conv2d_18_kernel"/device:CPU:0*
_output_shapes
 Ђ
Read/ReadVariableOpReadVariableOp'read_disablecopyonread_conv2d_18_kernel^Read/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0q
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:i

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*&
_output_shapes
:{
Read_1/DisableCopyOnReadDisableCopyOnRead'read_1_disablecopyonread_conv2d_18_bias"/device:CPU:0*
_output_shapes
 £
Read_1/ReadVariableOpReadVariableOp'read_1_disablecopyonread_conv2d_18_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
:}
Read_2/DisableCopyOnReadDisableCopyOnRead)read_2_disablecopyonread_conv2d_19_kernel"/device:CPU:0*
_output_shapes
 ±
Read_2/ReadVariableOpReadVariableOp)read_2_disablecopyonread_conv2d_19_kernel^Read_2/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0u

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: k

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*&
_output_shapes
: {
Read_3/DisableCopyOnReadDisableCopyOnRead'read_3_disablecopyonread_conv2d_19_bias"/device:CPU:0*
_output_shapes
 £
Read_3/ReadVariableOpReadVariableOp'read_3_disablecopyonread_conv2d_19_bias^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0i

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes
: }
Read_4/DisableCopyOnReadDisableCopyOnRead)read_4_disablecopyonread_conv2d_20_kernel"/device:CPU:0*
_output_shapes
 ±
Read_4/ReadVariableOpReadVariableOp)read_4_disablecopyonread_conv2d_20_kernel^Read_4/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:  *
dtype0u

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:  k

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*&
_output_shapes
:  {
Read_5/DisableCopyOnReadDisableCopyOnRead'read_5_disablecopyonread_conv2d_20_bias"/device:CPU:0*
_output_shapes
 £
Read_5/ReadVariableOpReadVariableOp'read_5_disablecopyonread_conv2d_20_bias^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0j
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes
: }
Read_6/DisableCopyOnReadDisableCopyOnRead)read_6_disablecopyonread_conv2d_21_kernel"/device:CPU:0*
_output_shapes
 ±
Read_6/ReadVariableOpReadVariableOp)read_6_disablecopyonread_conv2d_21_kernel^Read_6/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: @*
dtype0v
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: @m
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*&
_output_shapes
: @{
Read_7/DisableCopyOnReadDisableCopyOnRead'read_7_disablecopyonread_conv2d_21_bias"/device:CPU:0*
_output_shapes
 £
Read_7/ReadVariableOpReadVariableOp'read_7_disablecopyonread_conv2d_21_bias^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0j
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes
:@{
Read_8/DisableCopyOnReadDisableCopyOnRead'read_8_disablecopyonread_dense_8_kernel"/device:CPU:0*
_output_shapes
 ©
Read_8/ReadVariableOpReadVariableOp'read_8_disablecopyonread_dense_8_kernel^Read_8/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
јА*
dtype0p
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
јАg
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0* 
_output_shapes
:
јАy
Read_9/DisableCopyOnReadDisableCopyOnRead%read_9_disablecopyonread_dense_8_bias"/device:CPU:0*
_output_shapes
 Ґ
Read_9/ReadVariableOpReadVariableOp%read_9_disablecopyonread_dense_8_bias^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0k
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аb
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes	
:А}
Read_10/DisableCopyOnReadDisableCopyOnRead(read_10_disablecopyonread_dense_9_kernel"/device:CPU:0*
_output_shapes
 Ђ
Read_10/ReadVariableOpReadVariableOp(read_10_disablecopyonread_dense_9_kernel^Read_10/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	А*
dtype0p
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	Аf
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*
_output_shapes
:	А{
Read_11/DisableCopyOnReadDisableCopyOnRead&read_11_disablecopyonread_dense_9_bias"/device:CPU:0*
_output_shapes
 §
Read_11/ReadVariableOpReadVariableOp&read_11_disablecopyonread_dense_9_bias^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes
:x
Read_12/DisableCopyOnReadDisableCopyOnRead#read_12_disablecopyonread_iteration"/device:CPU:0*
_output_shapes
 Э
Read_12/ReadVariableOpReadVariableOp#read_12_disablecopyonread_iteration^Read_12/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	g
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: ]
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0	*
_output_shapes
: |
Read_13/DisableCopyOnReadDisableCopyOnRead'read_13_disablecopyonread_learning_rate"/device:CPU:0*
_output_shapes
 °
Read_13/ReadVariableOpReadVariableOp'read_13_disablecopyonread_learning_rate^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes
: Б
Read_14/DisableCopyOnReadDisableCopyOnRead,read_14_disablecopyonread_m_conv2d_18_kernel"/device:CPU:0*
_output_shapes
 ґ
Read_14/ReadVariableOpReadVariableOp,read_14_disablecopyonread_m_conv2d_18_kernel^Read_14/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0w
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:m
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*&
_output_shapes
:Б
Read_15/DisableCopyOnReadDisableCopyOnRead,read_15_disablecopyonread_v_conv2d_18_kernel"/device:CPU:0*
_output_shapes
 ґ
Read_15/ReadVariableOpReadVariableOp,read_15_disablecopyonread_v_conv2d_18_kernel^Read_15/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0w
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:m
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*&
_output_shapes
:
Read_16/DisableCopyOnReadDisableCopyOnRead*read_16_disablecopyonread_m_conv2d_18_bias"/device:CPU:0*
_output_shapes
 ®
Read_16/ReadVariableOpReadVariableOp*read_16_disablecopyonread_m_conv2d_18_bias^Read_16/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*
_output_shapes
:
Read_17/DisableCopyOnReadDisableCopyOnRead*read_17_disablecopyonread_v_conv2d_18_bias"/device:CPU:0*
_output_shapes
 ®
Read_17/ReadVariableOpReadVariableOp*read_17_disablecopyonread_v_conv2d_18_bias^Read_17/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes
:Б
Read_18/DisableCopyOnReadDisableCopyOnRead,read_18_disablecopyonread_m_conv2d_19_kernel"/device:CPU:0*
_output_shapes
 ґ
Read_18/ReadVariableOpReadVariableOp,read_18_disablecopyonread_m_conv2d_19_kernel^Read_18/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0w
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: m
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*&
_output_shapes
: Б
Read_19/DisableCopyOnReadDisableCopyOnRead,read_19_disablecopyonread_v_conv2d_19_kernel"/device:CPU:0*
_output_shapes
 ґ
Read_19/ReadVariableOpReadVariableOp,read_19_disablecopyonread_v_conv2d_19_kernel^Read_19/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0w
Identity_38IdentityRead_19/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: m
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*&
_output_shapes
: 
Read_20/DisableCopyOnReadDisableCopyOnRead*read_20_disablecopyonread_m_conv2d_19_bias"/device:CPU:0*
_output_shapes
 ®
Read_20/ReadVariableOpReadVariableOp*read_20_disablecopyonread_m_conv2d_19_bias^Read_20/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_40IdentityRead_20/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*
_output_shapes
: 
Read_21/DisableCopyOnReadDisableCopyOnRead*read_21_disablecopyonread_v_conv2d_19_bias"/device:CPU:0*
_output_shapes
 ®
Read_21/ReadVariableOpReadVariableOp*read_21_disablecopyonread_v_conv2d_19_bias^Read_21/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_42IdentityRead_21/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*
_output_shapes
: Б
Read_22/DisableCopyOnReadDisableCopyOnRead,read_22_disablecopyonread_m_conv2d_20_kernel"/device:CPU:0*
_output_shapes
 ґ
Read_22/ReadVariableOpReadVariableOp,read_22_disablecopyonread_m_conv2d_20_kernel^Read_22/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:  *
dtype0w
Identity_44IdentityRead_22/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:  m
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0*&
_output_shapes
:  Б
Read_23/DisableCopyOnReadDisableCopyOnRead,read_23_disablecopyonread_v_conv2d_20_kernel"/device:CPU:0*
_output_shapes
 ґ
Read_23/ReadVariableOpReadVariableOp,read_23_disablecopyonread_v_conv2d_20_kernel^Read_23/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:  *
dtype0w
Identity_46IdentityRead_23/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:  m
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0*&
_output_shapes
:  
Read_24/DisableCopyOnReadDisableCopyOnRead*read_24_disablecopyonread_m_conv2d_20_bias"/device:CPU:0*
_output_shapes
 ®
Read_24/ReadVariableOpReadVariableOp*read_24_disablecopyonread_m_conv2d_20_bias^Read_24/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_48IdentityRead_24/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_49IdentityIdentity_48:output:0"/device:CPU:0*
T0*
_output_shapes
: 
Read_25/DisableCopyOnReadDisableCopyOnRead*read_25_disablecopyonread_v_conv2d_20_bias"/device:CPU:0*
_output_shapes
 ®
Read_25/ReadVariableOpReadVariableOp*read_25_disablecopyonread_v_conv2d_20_bias^Read_25/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_50IdentityRead_25/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_51IdentityIdentity_50:output:0"/device:CPU:0*
T0*
_output_shapes
: Б
Read_26/DisableCopyOnReadDisableCopyOnRead,read_26_disablecopyonread_m_conv2d_21_kernel"/device:CPU:0*
_output_shapes
 ґ
Read_26/ReadVariableOpReadVariableOp,read_26_disablecopyonread_m_conv2d_21_kernel^Read_26/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: @*
dtype0w
Identity_52IdentityRead_26/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: @m
Identity_53IdentityIdentity_52:output:0"/device:CPU:0*
T0*&
_output_shapes
: @Б
Read_27/DisableCopyOnReadDisableCopyOnRead,read_27_disablecopyonread_v_conv2d_21_kernel"/device:CPU:0*
_output_shapes
 ґ
Read_27/ReadVariableOpReadVariableOp,read_27_disablecopyonread_v_conv2d_21_kernel^Read_27/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: @*
dtype0w
Identity_54IdentityRead_27/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: @m
Identity_55IdentityIdentity_54:output:0"/device:CPU:0*
T0*&
_output_shapes
: @
Read_28/DisableCopyOnReadDisableCopyOnRead*read_28_disablecopyonread_m_conv2d_21_bias"/device:CPU:0*
_output_shapes
 ®
Read_28/ReadVariableOpReadVariableOp*read_28_disablecopyonread_m_conv2d_21_bias^Read_28/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_56IdentityRead_28/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_57IdentityIdentity_56:output:0"/device:CPU:0*
T0*
_output_shapes
:@
Read_29/DisableCopyOnReadDisableCopyOnRead*read_29_disablecopyonread_v_conv2d_21_bias"/device:CPU:0*
_output_shapes
 ®
Read_29/ReadVariableOpReadVariableOp*read_29_disablecopyonread_v_conv2d_21_bias^Read_29/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_58IdentityRead_29/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_59IdentityIdentity_58:output:0"/device:CPU:0*
T0*
_output_shapes
:@
Read_30/DisableCopyOnReadDisableCopyOnRead*read_30_disablecopyonread_m_dense_8_kernel"/device:CPU:0*
_output_shapes
 Ѓ
Read_30/ReadVariableOpReadVariableOp*read_30_disablecopyonread_m_dense_8_kernel^Read_30/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
јА*
dtype0q
Identity_60IdentityRead_30/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
јАg
Identity_61IdentityIdentity_60:output:0"/device:CPU:0*
T0* 
_output_shapes
:
јА
Read_31/DisableCopyOnReadDisableCopyOnRead*read_31_disablecopyonread_v_dense_8_kernel"/device:CPU:0*
_output_shapes
 Ѓ
Read_31/ReadVariableOpReadVariableOp*read_31_disablecopyonread_v_dense_8_kernel^Read_31/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
јА*
dtype0q
Identity_62IdentityRead_31/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
јАg
Identity_63IdentityIdentity_62:output:0"/device:CPU:0*
T0* 
_output_shapes
:
јА}
Read_32/DisableCopyOnReadDisableCopyOnRead(read_32_disablecopyonread_m_dense_8_bias"/device:CPU:0*
_output_shapes
 І
Read_32/ReadVariableOpReadVariableOp(read_32_disablecopyonread_m_dense_8_bias^Read_32/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0l
Identity_64IdentityRead_32/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аb
Identity_65IdentityIdentity_64:output:0"/device:CPU:0*
T0*
_output_shapes	
:А}
Read_33/DisableCopyOnReadDisableCopyOnRead(read_33_disablecopyonread_v_dense_8_bias"/device:CPU:0*
_output_shapes
 І
Read_33/ReadVariableOpReadVariableOp(read_33_disablecopyonread_v_dense_8_bias^Read_33/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0l
Identity_66IdentityRead_33/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аb
Identity_67IdentityIdentity_66:output:0"/device:CPU:0*
T0*
_output_shapes	
:А
Read_34/DisableCopyOnReadDisableCopyOnRead*read_34_disablecopyonread_m_dense_9_kernel"/device:CPU:0*
_output_shapes
 ≠
Read_34/ReadVariableOpReadVariableOp*read_34_disablecopyonread_m_dense_9_kernel^Read_34/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	А*
dtype0p
Identity_68IdentityRead_34/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	Аf
Identity_69IdentityIdentity_68:output:0"/device:CPU:0*
T0*
_output_shapes
:	А
Read_35/DisableCopyOnReadDisableCopyOnRead*read_35_disablecopyonread_v_dense_9_kernel"/device:CPU:0*
_output_shapes
 ≠
Read_35/ReadVariableOpReadVariableOp*read_35_disablecopyonread_v_dense_9_kernel^Read_35/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	А*
dtype0p
Identity_70IdentityRead_35/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	Аf
Identity_71IdentityIdentity_70:output:0"/device:CPU:0*
T0*
_output_shapes
:	А}
Read_36/DisableCopyOnReadDisableCopyOnRead(read_36_disablecopyonread_m_dense_9_bias"/device:CPU:0*
_output_shapes
 ¶
Read_36/ReadVariableOpReadVariableOp(read_36_disablecopyonread_m_dense_9_bias^Read_36/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_72IdentityRead_36/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_73IdentityIdentity_72:output:0"/device:CPU:0*
T0*
_output_shapes
:}
Read_37/DisableCopyOnReadDisableCopyOnRead(read_37_disablecopyonread_v_dense_9_bias"/device:CPU:0*
_output_shapes
 ¶
Read_37/ReadVariableOpReadVariableOp(read_37_disablecopyonread_v_dense_9_bias^Read_37/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_74IdentityRead_37/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_75IdentityIdentity_74:output:0"/device:CPU:0*
T0*
_output_shapes
:v
Read_38/DisableCopyOnReadDisableCopyOnRead!read_38_disablecopyonread_total_1"/device:CPU:0*
_output_shapes
 Ы
Read_38/ReadVariableOpReadVariableOp!read_38_disablecopyonread_total_1^Read_38/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_76IdentityRead_38/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_77IdentityIdentity_76:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_39/DisableCopyOnReadDisableCopyOnRead!read_39_disablecopyonread_count_1"/device:CPU:0*
_output_shapes
 Ы
Read_39/ReadVariableOpReadVariableOp!read_39_disablecopyonread_count_1^Read_39/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_78IdentityRead_39/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_79IdentityIdentity_78:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_40/DisableCopyOnReadDisableCopyOnReadread_40_disablecopyonread_total"/device:CPU:0*
_output_shapes
 Щ
Read_40/ReadVariableOpReadVariableOpread_40_disablecopyonread_total^Read_40/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_80IdentityRead_40/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_81IdentityIdentity_80:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_41/DisableCopyOnReadDisableCopyOnReadread_41_disablecopyonread_count"/device:CPU:0*
_output_shapes
 Щ
Read_41/ReadVariableOpReadVariableOpread_41_disablecopyonread_count^Read_41/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_82IdentityRead_41/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_83IdentityIdentity_82:output:0"/device:CPU:0*
T0*
_output_shapes
: і
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:+*
dtype0*Ё
value”B–+B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH√
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:+*
dtype0*i
value`B^+B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Щ	
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0Identity_53:output:0Identity_55:output:0Identity_57:output:0Identity_59:output:0Identity_61:output:0Identity_63:output:0Identity_65:output:0Identity_67:output:0Identity_69:output:0Identity_71:output:0Identity_73:output:0Identity_75:output:0Identity_77:output:0Identity_79:output:0Identity_81:output:0Identity_83:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *9
dtypes/
-2+	Р
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:≥
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_84Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_85IdentityIdentity_84:output:0^NoOp*
T0*
_output_shapes
: —
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_24/DisableCopyOnRead^Read_24/ReadVariableOp^Read_25/DisableCopyOnRead^Read_25/ReadVariableOp^Read_26/DisableCopyOnRead^Read_26/ReadVariableOp^Read_27/DisableCopyOnRead^Read_27/ReadVariableOp^Read_28/DisableCopyOnRead^Read_28/ReadVariableOp^Read_29/DisableCopyOnRead^Read_29/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_30/DisableCopyOnRead^Read_30/ReadVariableOp^Read_31/DisableCopyOnRead^Read_31/ReadVariableOp^Read_32/DisableCopyOnRead^Read_32/ReadVariableOp^Read_33/DisableCopyOnRead^Read_33/ReadVariableOp^Read_34/DisableCopyOnRead^Read_34/ReadVariableOp^Read_35/DisableCopyOnRead^Read_35/ReadVariableOp^Read_36/DisableCopyOnRead^Read_36/ReadVariableOp^Read_37/DisableCopyOnRead^Read_37/ReadVariableOp^Read_38/DisableCopyOnRead^Read_38/ReadVariableOp^Read_39/DisableCopyOnRead^Read_39/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_40/DisableCopyOnRead^Read_40/ReadVariableOp^Read_41/DisableCopyOnRead^Read_41/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*
_output_shapes
 "#
identity_85Identity_85:output:0*(
_construction_contextkEagerRuntime*k
_input_shapesZ
X: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2(
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
Read_23/ReadVariableOpRead_23/ReadVariableOp26
Read_24/DisableCopyOnReadRead_24/DisableCopyOnRead20
Read_24/ReadVariableOpRead_24/ReadVariableOp26
Read_25/DisableCopyOnReadRead_25/DisableCopyOnRead20
Read_25/ReadVariableOpRead_25/ReadVariableOp26
Read_26/DisableCopyOnReadRead_26/DisableCopyOnRead20
Read_26/ReadVariableOpRead_26/ReadVariableOp26
Read_27/DisableCopyOnReadRead_27/DisableCopyOnRead20
Read_27/ReadVariableOpRead_27/ReadVariableOp26
Read_28/DisableCopyOnReadRead_28/DisableCopyOnRead20
Read_28/ReadVariableOpRead_28/ReadVariableOp26
Read_29/DisableCopyOnReadRead_29/DisableCopyOnRead20
Read_29/ReadVariableOpRead_29/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp26
Read_30/DisableCopyOnReadRead_30/DisableCopyOnRead20
Read_30/ReadVariableOpRead_30/ReadVariableOp26
Read_31/DisableCopyOnReadRead_31/DisableCopyOnRead20
Read_31/ReadVariableOpRead_31/ReadVariableOp26
Read_32/DisableCopyOnReadRead_32/DisableCopyOnRead20
Read_32/ReadVariableOpRead_32/ReadVariableOp26
Read_33/DisableCopyOnReadRead_33/DisableCopyOnRead20
Read_33/ReadVariableOpRead_33/ReadVariableOp26
Read_34/DisableCopyOnReadRead_34/DisableCopyOnRead20
Read_34/ReadVariableOpRead_34/ReadVariableOp26
Read_35/DisableCopyOnReadRead_35/DisableCopyOnRead20
Read_35/ReadVariableOpRead_35/ReadVariableOp26
Read_36/DisableCopyOnReadRead_36/DisableCopyOnRead20
Read_36/ReadVariableOpRead_36/ReadVariableOp26
Read_37/DisableCopyOnReadRead_37/DisableCopyOnRead20
Read_37/ReadVariableOpRead_37/ReadVariableOp26
Read_38/DisableCopyOnReadRead_38/DisableCopyOnRead20
Read_38/ReadVariableOpRead_38/ReadVariableOp26
Read_39/DisableCopyOnReadRead_39/DisableCopyOnRead20
Read_39/ReadVariableOpRead_39/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp26
Read_40/DisableCopyOnReadRead_40/DisableCopyOnRead20
Read_40/ReadVariableOpRead_40/ReadVariableOp26
Read_41/DisableCopyOnReadRead_41/DisableCopyOnRead20
Read_41/ReadVariableOpRead_41/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:0,
*
_user_specified_nameconv2d_18/kernel:.*
(
_user_specified_nameconv2d_18/bias:0,
*
_user_specified_nameconv2d_19/kernel:.*
(
_user_specified_nameconv2d_19/bias:0,
*
_user_specified_nameconv2d_20/kernel:.*
(
_user_specified_nameconv2d_20/bias:0,
*
_user_specified_nameconv2d_21/kernel:.*
(
_user_specified_nameconv2d_21/bias:.	*
(
_user_specified_namedense_8/kernel:,
(
&
_user_specified_namedense_8/bias:.*
(
_user_specified_namedense_9/kernel:,(
&
_user_specified_namedense_9/bias:)%
#
_user_specified_name	iteration:-)
'
_user_specified_namelearning_rate:2.
,
_user_specified_namem/conv2d_18/kernel:2.
,
_user_specified_namev/conv2d_18/kernel:0,
*
_user_specified_namem/conv2d_18/bias:0,
*
_user_specified_namev/conv2d_18/bias:2.
,
_user_specified_namem/conv2d_19/kernel:2.
,
_user_specified_namev/conv2d_19/kernel:0,
*
_user_specified_namem/conv2d_19/bias:0,
*
_user_specified_namev/conv2d_19/bias:2.
,
_user_specified_namem/conv2d_20/kernel:2.
,
_user_specified_namev/conv2d_20/kernel:0,
*
_user_specified_namem/conv2d_20/bias:0,
*
_user_specified_namev/conv2d_20/bias:2.
,
_user_specified_namem/conv2d_21/kernel:2.
,
_user_specified_namev/conv2d_21/kernel:0,
*
_user_specified_namem/conv2d_21/bias:0,
*
_user_specified_namev/conv2d_21/bias:0,
*
_user_specified_namem/dense_8/kernel:0 ,
*
_user_specified_namev/dense_8/kernel:.!*
(
_user_specified_namem/dense_8/bias:."*
(
_user_specified_namev/dense_8/bias:0#,
*
_user_specified_namem/dense_9/kernel:0$,
*
_user_specified_namev/dense_9/kernel:.%*
(
_user_specified_namem/dense_9/bias:.&*
(
_user_specified_namev/dense_9/bias:''#
!
_user_specified_name	total_1:'(#
!
_user_specified_name	count_1:%)!

_user_specified_nametotal:%*!

_user_specified_namecount:=+9

_output_shapes
: 

_user_specified_nameConst
Ф
h
L__inference_max_pooling2d_20_layer_call_and_return_conditional_losses_215029

inputs
identityҐ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
љ
M
1__inference_max_pooling2d_18_layer_call_fn_215368

inputs
identityЁ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_215009Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
«
a
E__inference_flatten_4_layer_call_and_return_conditional_losses_215120

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€@  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:€€€€€€€€€јY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:€€€€€€€€€ј"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€@:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
пQ
с
!__inference__wrapped_model_215004
conv2d_18_inputO
5sequential_4_conv2d_18_conv2d_readvariableop_resource:D
6sequential_4_conv2d_18_biasadd_readvariableop_resource:O
5sequential_4_conv2d_19_conv2d_readvariableop_resource: D
6sequential_4_conv2d_19_biasadd_readvariableop_resource: O
5sequential_4_conv2d_20_conv2d_readvariableop_resource:  D
6sequential_4_conv2d_20_biasadd_readvariableop_resource: O
5sequential_4_conv2d_21_conv2d_readvariableop_resource: @D
6sequential_4_conv2d_21_biasadd_readvariableop_resource:@G
3sequential_4_dense_8_matmul_readvariableop_resource:
јАC
4sequential_4_dense_8_biasadd_readvariableop_resource:	АF
3sequential_4_dense_9_matmul_readvariableop_resource:	АB
4sequential_4_dense_9_biasadd_readvariableop_resource:
identityИҐ-sequential_4/conv2d_18/BiasAdd/ReadVariableOpҐ,sequential_4/conv2d_18/Conv2D/ReadVariableOpҐ-sequential_4/conv2d_19/BiasAdd/ReadVariableOpҐ,sequential_4/conv2d_19/Conv2D/ReadVariableOpҐ-sequential_4/conv2d_20/BiasAdd/ReadVariableOpҐ,sequential_4/conv2d_20/Conv2D/ReadVariableOpҐ-sequential_4/conv2d_21/BiasAdd/ReadVariableOpҐ,sequential_4/conv2d_21/Conv2D/ReadVariableOpҐ+sequential_4/dense_8/BiasAdd/ReadVariableOpҐ*sequential_4/dense_8/MatMul/ReadVariableOpҐ+sequential_4/dense_9/BiasAdd/ReadVariableOpҐ*sequential_4/dense_9/MatMul/ReadVariableOp™
,sequential_4/conv2d_18/Conv2D/ReadVariableOpReadVariableOp5sequential_4_conv2d_18_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0”
sequential_4/conv2d_18/Conv2DConv2Dconv2d_18_input4sequential_4/conv2d_18/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€ФФ*
paddingVALID*
strides
†
-sequential_4/conv2d_18/BiasAdd/ReadVariableOpReadVariableOp6sequential_4_conv2d_18_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ƒ
sequential_4/conv2d_18/BiasAddBiasAdd&sequential_4/conv2d_18/Conv2D:output:05sequential_4/conv2d_18/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€ФФИ
sequential_4/conv2d_18/ReluRelu'sequential_4/conv2d_18/BiasAdd:output:0*
T0*1
_output_shapes
:€€€€€€€€€ФФ»
%sequential_4/max_pooling2d_18/MaxPoolMaxPool)sequential_4/conv2d_18/Relu:activations:0*/
_output_shapes
:€€€€€€€€€JJ*
ksize
*
paddingVALID*
strides
™
,sequential_4/conv2d_19/Conv2D/ReadVariableOpReadVariableOp5sequential_4_conv2d_19_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0р
sequential_4/conv2d_19/Conv2DConv2D.sequential_4/max_pooling2d_18/MaxPool:output:04sequential_4/conv2d_19/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€HH *
paddingVALID*
strides
†
-sequential_4/conv2d_19/BiasAdd/ReadVariableOpReadVariableOp6sequential_4_conv2d_19_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0¬
sequential_4/conv2d_19/BiasAddBiasAdd&sequential_4/conv2d_19/Conv2D:output:05sequential_4/conv2d_19/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€HH Ж
sequential_4/conv2d_19/ReluRelu'sequential_4/conv2d_19/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€HH »
%sequential_4/max_pooling2d_19/MaxPoolMaxPool)sequential_4/conv2d_19/Relu:activations:0*/
_output_shapes
:€€€€€€€€€$$ *
ksize
*
paddingVALID*
strides
™
,sequential_4/conv2d_20/Conv2D/ReadVariableOpReadVariableOp5sequential_4_conv2d_20_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0р
sequential_4/conv2d_20/Conv2DConv2D.sequential_4/max_pooling2d_19/MaxPool:output:04sequential_4/conv2d_20/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€"" *
paddingVALID*
strides
†
-sequential_4/conv2d_20/BiasAdd/ReadVariableOpReadVariableOp6sequential_4_conv2d_20_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0¬
sequential_4/conv2d_20/BiasAddBiasAdd&sequential_4/conv2d_20/Conv2D:output:05sequential_4/conv2d_20/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€"" Ж
sequential_4/conv2d_20/ReluRelu'sequential_4/conv2d_20/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€"" »
%sequential_4/max_pooling2d_20/MaxPoolMaxPool)sequential_4/conv2d_20/Relu:activations:0*/
_output_shapes
:€€€€€€€€€ *
ksize
*
paddingVALID*
strides
™
,sequential_4/conv2d_21/Conv2D/ReadVariableOpReadVariableOp5sequential_4_conv2d_21_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0р
sequential_4/conv2d_21/Conv2DConv2D.sequential_4/max_pooling2d_20/MaxPool:output:04sequential_4/conv2d_21/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@*
paddingVALID*
strides
†
-sequential_4/conv2d_21/BiasAdd/ReadVariableOpReadVariableOp6sequential_4_conv2d_21_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0¬
sequential_4/conv2d_21/BiasAddBiasAdd&sequential_4/conv2d_21/Conv2D:output:05sequential_4/conv2d_21/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@Ж
sequential_4/conv2d_21/ReluRelu'sequential_4/conv2d_21/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€@»
%sequential_4/max_pooling2d_21/MaxPoolMaxPool)sequential_4/conv2d_21/Relu:activations:0*/
_output_shapes
:€€€€€€€€€@*
ksize
*
paddingVALID*
strides
m
sequential_4/flatten_4/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€@  ≥
sequential_4/flatten_4/ReshapeReshape.sequential_4/max_pooling2d_21/MaxPool:output:0%sequential_4/flatten_4/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€ј†
*sequential_4/dense_8/MatMul/ReadVariableOpReadVariableOp3sequential_4_dense_8_matmul_readvariableop_resource* 
_output_shapes
:
јА*
dtype0µ
sequential_4/dense_8/MatMulMatMul'sequential_4/flatten_4/Reshape:output:02sequential_4/dense_8/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЭ
+sequential_4/dense_8/BiasAdd/ReadVariableOpReadVariableOp4sequential_4_dense_8_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0ґ
sequential_4/dense_8/BiasAddBiasAdd%sequential_4/dense_8/MatMul:product:03sequential_4/dense_8/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А{
sequential_4/dense_8/ReluRelu%sequential_4/dense_8/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€АЯ
*sequential_4/dense_9/MatMul/ReadVariableOpReadVariableOp3sequential_4_dense_9_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0і
sequential_4/dense_9/MatMulMatMul'sequential_4/dense_8/Relu:activations:02sequential_4/dense_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Ь
+sequential_4/dense_9/BiasAdd/ReadVariableOpReadVariableOp4sequential_4_dense_9_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0µ
sequential_4/dense_9/BiasAddBiasAdd%sequential_4/dense_9/MatMul:product:03sequential_4/dense_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€А
sequential_4/dense_9/SigmoidSigmoid%sequential_4/dense_9/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€o
IdentityIdentity sequential_4/dense_9/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€‘
NoOpNoOp.^sequential_4/conv2d_18/BiasAdd/ReadVariableOp-^sequential_4/conv2d_18/Conv2D/ReadVariableOp.^sequential_4/conv2d_19/BiasAdd/ReadVariableOp-^sequential_4/conv2d_19/Conv2D/ReadVariableOp.^sequential_4/conv2d_20/BiasAdd/ReadVariableOp-^sequential_4/conv2d_20/Conv2D/ReadVariableOp.^sequential_4/conv2d_21/BiasAdd/ReadVariableOp-^sequential_4/conv2d_21/Conv2D/ReadVariableOp,^sequential_4/dense_8/BiasAdd/ReadVariableOp+^sequential_4/dense_8/MatMul/ReadVariableOp,^sequential_4/dense_9/BiasAdd/ReadVariableOp+^sequential_4/dense_9/MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:€€€€€€€€€ЦЦ: : : : : : : : : : : : 2^
-sequential_4/conv2d_18/BiasAdd/ReadVariableOp-sequential_4/conv2d_18/BiasAdd/ReadVariableOp2\
,sequential_4/conv2d_18/Conv2D/ReadVariableOp,sequential_4/conv2d_18/Conv2D/ReadVariableOp2^
-sequential_4/conv2d_19/BiasAdd/ReadVariableOp-sequential_4/conv2d_19/BiasAdd/ReadVariableOp2\
,sequential_4/conv2d_19/Conv2D/ReadVariableOp,sequential_4/conv2d_19/Conv2D/ReadVariableOp2^
-sequential_4/conv2d_20/BiasAdd/ReadVariableOp-sequential_4/conv2d_20/BiasAdd/ReadVariableOp2\
,sequential_4/conv2d_20/Conv2D/ReadVariableOp,sequential_4/conv2d_20/Conv2D/ReadVariableOp2^
-sequential_4/conv2d_21/BiasAdd/ReadVariableOp-sequential_4/conv2d_21/BiasAdd/ReadVariableOp2\
,sequential_4/conv2d_21/Conv2D/ReadVariableOp,sequential_4/conv2d_21/Conv2D/ReadVariableOp2Z
+sequential_4/dense_8/BiasAdd/ReadVariableOp+sequential_4/dense_8/BiasAdd/ReadVariableOp2X
*sequential_4/dense_8/MatMul/ReadVariableOp*sequential_4/dense_8/MatMul/ReadVariableOp2Z
+sequential_4/dense_9/BiasAdd/ReadVariableOp+sequential_4/dense_9/BiasAdd/ReadVariableOp2X
*sequential_4/dense_9/MatMul/ReadVariableOp*sequential_4/dense_9/MatMul/ReadVariableOp:b ^
1
_output_shapes
:€€€€€€€€€ЦЦ
)
_user_specified_nameconv2d_18_input:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Ы
Я
*__inference_conv2d_21_layer_call_fn_215442

inputs!
unknown: @
	unknown_0:@
identityИҐStatefulPartitionedCallе
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_21_layer_call_and_return_conditional_losses_215108w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€ : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs:&"
 
_user_specified_name215436:&"
 
_user_specified_name215438
£
Я
*__inference_conv2d_18_layer_call_fn_215352

inputs!
unknown:
	unknown_0:
identityИҐStatefulPartitionedCallз
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€ФФ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_18_layer_call_and_return_conditional_losses_215057y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€ФФ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:€€€€€€€€€ЦЦ: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:€€€€€€€€€ЦЦ
 
_user_specified_nameinputs:&"
 
_user_specified_name215346:&"
 
_user_specified_name215348
і
F
*__inference_flatten_4_layer_call_fn_215468

inputs
identityі
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€ј* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_flatten_4_layer_call_and_return_conditional_losses_215120a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:€€€€€€€€€ј"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€@:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
љ
M
1__inference_max_pooling2d_21_layer_call_fn_215458

inputs
identityЁ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_max_pooling2d_21_layer_call_and_return_conditional_losses_215039Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
В
÷
-__inference_sequential_4_layer_call_fn_215252
conv2d_18_input!
unknown:
	unknown_0:#
	unknown_1: 
	unknown_2: #
	unknown_3:  
	unknown_4: #
	unknown_5: @
	unknown_6:@
	unknown_7:
јА
	unknown_8:	А
	unknown_9:	А

unknown_10:
identityИҐStatefulPartitionedCallм
StatefulPartitionedCallStatefulPartitionedCallconv2d_18_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_sequential_4_layer_call_and_return_conditional_losses_215194o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:€€€€€€€€€ЦЦ: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:b ^
1
_output_shapes
:€€€€€€€€€ЦЦ
)
_user_specified_nameconv2d_18_input:&"
 
_user_specified_name215226:&"
 
_user_specified_name215228:&"
 
_user_specified_name215230:&"
 
_user_specified_name215232:&"
 
_user_specified_name215234:&"
 
_user_specified_name215236:&"
 
_user_specified_name215238:&"
 
_user_specified_name215240:&	"
 
_user_specified_name215242:&
"
 
_user_specified_name215244:&"
 
_user_specified_name215246:&"
 
_user_specified_name215248
љ
M
1__inference_max_pooling2d_20_layer_call_fn_215428

inputs
identityЁ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_max_pooling2d_20_layer_call_and_return_conditional_losses_215029Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Ѕ
ю
E__inference_conv2d_18_layer_call_and_return_conditional_losses_215363

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ь
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€ФФ*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€ФФZ
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:€€€€€€€€€ФФk
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€ФФS
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:€€€€€€€€€ЦЦ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:€€€€€€€€€ЦЦ
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
„3
ш
H__inference_sequential_4_layer_call_and_return_conditional_losses_215155
conv2d_18_input*
conv2d_18_215058:
conv2d_18_215060:*
conv2d_19_215075: 
conv2d_19_215077: *
conv2d_20_215092:  
conv2d_20_215094: *
conv2d_21_215109: @
conv2d_21_215111:@"
dense_8_215133:
јА
dense_8_215135:	А!
dense_9_215149:	А
dense_9_215151:
identityИҐ!conv2d_18/StatefulPartitionedCallҐ!conv2d_19/StatefulPartitionedCallҐ!conv2d_20/StatefulPartitionedCallҐ!conv2d_21/StatefulPartitionedCallҐdense_8/StatefulPartitionedCallҐdense_9/StatefulPartitionedCallК
!conv2d_18/StatefulPartitionedCallStatefulPartitionedCallconv2d_18_inputconv2d_18_215058conv2d_18_215060*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€ФФ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_18_layer_call_and_return_conditional_losses_215057ч
 max_pooling2d_18/PartitionedCallPartitionedCall*conv2d_18/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€JJ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_215009Ґ
!conv2d_19/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_18/PartitionedCall:output:0conv2d_19_215075conv2d_19_215077*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€HH *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_19_layer_call_and_return_conditional_losses_215074ч
 max_pooling2d_19/PartitionedCallPartitionedCall*conv2d_19/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€$$ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_215019Ґ
!conv2d_20/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_19/PartitionedCall:output:0conv2d_20_215092conv2d_20_215094*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€"" *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_20_layer_call_and_return_conditional_losses_215091ч
 max_pooling2d_20/PartitionedCallPartitionedCall*conv2d_20/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_max_pooling2d_20_layer_call_and_return_conditional_losses_215029Ґ
!conv2d_21/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_20/PartitionedCall:output:0conv2d_21_215109conv2d_21_215111*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_21_layer_call_and_return_conditional_losses_215108ч
 max_pooling2d_21/PartitionedCallPartitionedCall*conv2d_21/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_max_pooling2d_21_layer_call_and_return_conditional_losses_215039б
flatten_4/PartitionedCallPartitionedCall)max_pooling2d_21/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€ј* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_flatten_4_layer_call_and_return_conditional_losses_215120М
dense_8/StatefulPartitionedCallStatefulPartitionedCall"flatten_4/PartitionedCall:output:0dense_8_215133dense_8_215135*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_215132С
dense_9/StatefulPartitionedCallStatefulPartitionedCall(dense_8/StatefulPartitionedCall:output:0dense_9_215149dense_9_215151*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_9_layer_call_and_return_conditional_losses_215148w
IdentityIdentity(dense_9/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ц
NoOpNoOp"^conv2d_18/StatefulPartitionedCall"^conv2d_19/StatefulPartitionedCall"^conv2d_20/StatefulPartitionedCall"^conv2d_21/StatefulPartitionedCall ^dense_8/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:€€€€€€€€€ЦЦ: : : : : : : : : : : : 2F
!conv2d_18/StatefulPartitionedCall!conv2d_18/StatefulPartitionedCall2F
!conv2d_19/StatefulPartitionedCall!conv2d_19/StatefulPartitionedCall2F
!conv2d_20/StatefulPartitionedCall!conv2d_20/StatefulPartitionedCall2F
!conv2d_21/StatefulPartitionedCall!conv2d_21/StatefulPartitionedCall2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall:b ^
1
_output_shapes
:€€€€€€€€€ЦЦ
)
_user_specified_nameconv2d_18_input:&"
 
_user_specified_name215058:&"
 
_user_specified_name215060:&"
 
_user_specified_name215075:&"
 
_user_specified_name215077:&"
 
_user_specified_name215092:&"
 
_user_specified_name215094:&"
 
_user_specified_name215109:&"
 
_user_specified_name215111:&	"
 
_user_specified_name215133:&
"
 
_user_specified_name215135:&"
 
_user_specified_name215149:&"
 
_user_specified_name215151
µ
ю
E__inference_conv2d_19_layer_call_and_return_conditional_losses_215074

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€HH *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€HH X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€HH i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€HH S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€JJ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€JJ
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
µ
ю
E__inference_conv2d_20_layer_call_and_return_conditional_losses_215423

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€"" *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€"" X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€"" i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€"" S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€$$ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€$$ 
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
÷

ч
C__inference_dense_8_layer_call_and_return_conditional_losses_215132

inputs2
matmul_readvariableop_resource:
јА.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
јА*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€АS
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€ј: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€ј
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource"ІL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*ƒ
serving_default∞
U
conv2d_18_inputB
!serving_default_conv2d_18_input:0€€€€€€€€€ЦЦ;
dense_90
StatefulPartitionedCall:0€€€€€€€€€tensorflow/serving/predict:ац
Т
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer-5
layer_with_weights-3
layer-6
layer-7
	layer-8

layer_with_weights-4

layer-9
layer_with_weights-5
layer-10
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
Ё
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias
 _jit_compiled_convolution_op"
_tf_keras_layer
•
	variables
trainable_variables
 regularization_losses
!	keras_api
"__call__
*#&call_and_return_all_conditional_losses"
_tf_keras_layer
Ё
$	variables
%trainable_variables
&regularization_losses
'	keras_api
(__call__
*)&call_and_return_all_conditional_losses

*kernel
+bias
 ,_jit_compiled_convolution_op"
_tf_keras_layer
•
-	variables
.trainable_variables
/regularization_losses
0	keras_api
1__call__
*2&call_and_return_all_conditional_losses"
_tf_keras_layer
Ё
3	variables
4trainable_variables
5regularization_losses
6	keras_api
7__call__
*8&call_and_return_all_conditional_losses

9kernel
:bias
 ;_jit_compiled_convolution_op"
_tf_keras_layer
•
<	variables
=trainable_variables
>regularization_losses
?	keras_api
@__call__
*A&call_and_return_all_conditional_losses"
_tf_keras_layer
Ё
B	variables
Ctrainable_variables
Dregularization_losses
E	keras_api
F__call__
*G&call_and_return_all_conditional_losses

Hkernel
Ibias
 J_jit_compiled_convolution_op"
_tf_keras_layer
•
K	variables
Ltrainable_variables
Mregularization_losses
N	keras_api
O__call__
*P&call_and_return_all_conditional_losses"
_tf_keras_layer
•
Q	variables
Rtrainable_variables
Sregularization_losses
T	keras_api
U__call__
*V&call_and_return_all_conditional_losses"
_tf_keras_layer
ї
W	variables
Xtrainable_variables
Yregularization_losses
Z	keras_api
[__call__
*\&call_and_return_all_conditional_losses

]kernel
^bias"
_tf_keras_layer
ї
_	variables
`trainable_variables
aregularization_losses
b	keras_api
c__call__
*d&call_and_return_all_conditional_losses

ekernel
fbias"
_tf_keras_layer
v
0
1
*2
+3
94
:5
H6
I7
]8
^9
e10
f11"
trackable_list_wrapper
v
0
1
*2
+3
94
:5
H6
I7
]8
^9
e10
f11"
trackable_list_wrapper
 "
trackable_list_wrapper
 
gnon_trainable_variables

hlayers
imetrics
jlayer_regularization_losses
klayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Ќ
ltrace_0
mtrace_12Ц
-__inference_sequential_4_layer_call_fn_215223
-__inference_sequential_4_layer_call_fn_215252µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zltrace_0zmtrace_1
Г
ntrace_0
otrace_12ћ
H__inference_sequential_4_layer_call_and_return_conditional_losses_215155
H__inference_sequential_4_layer_call_and_return_conditional_losses_215194µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zntrace_0zotrace_1
‘B—
!__inference__wrapped_model_215004conv2d_18_input"Ш
С≤Н
FullArgSpec
argsЪ

jargs_0
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
Ь
p
_variables
q_iterations
r_learning_rate
s_index_dict
t
_momentums
u_velocities
v_update_step_xla"
experimentalOptimizer
,
wserving_default"
signature_map
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
≠
xnon_trainable_variables

ylayers
zmetrics
{layer_regularization_losses
|layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
д
}trace_02«
*__inference_conv2d_18_layer_call_fn_215352Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z}trace_0
€
~trace_02в
E__inference_conv2d_18_layer_call_and_return_conditional_losses_215363Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z~trace_0
*:(2conv2d_18/kernel
:2conv2d_18/bias
™2І§
Ы≤Ч
FullArgSpec
argsЪ
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
±
non_trainable_variables
Аlayers
Бmetrics
 Вlayer_regularization_losses
Гlayer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses"
_generic_user_object
н
Дtrace_02ќ
1__inference_max_pooling2d_18_layer_call_fn_215368Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zДtrace_0
И
Еtrace_02й
L__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_215373Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЕtrace_0
.
*0
+1"
trackable_list_wrapper
.
*0
+1"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
Жnon_trainable_variables
Зlayers
Иmetrics
 Йlayer_regularization_losses
Кlayer_metrics
$	variables
%trainable_variables
&regularization_losses
(__call__
*)&call_and_return_all_conditional_losses
&)"call_and_return_conditional_losses"
_generic_user_object
ж
Лtrace_02«
*__inference_conv2d_19_layer_call_fn_215382Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЛtrace_0
Б
Мtrace_02в
E__inference_conv2d_19_layer_call_and_return_conditional_losses_215393Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zМtrace_0
*:( 2conv2d_19/kernel
: 2conv2d_19/bias
™2І§
Ы≤Ч
FullArgSpec
argsЪ
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
Нnon_trainable_variables
Оlayers
Пmetrics
 Рlayer_regularization_losses
Сlayer_metrics
-	variables
.trainable_variables
/regularization_losses
1__call__
*2&call_and_return_all_conditional_losses
&2"call_and_return_conditional_losses"
_generic_user_object
н
Тtrace_02ќ
1__inference_max_pooling2d_19_layer_call_fn_215398Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zТtrace_0
И
Уtrace_02й
L__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_215403Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zУtrace_0
.
90
:1"
trackable_list_wrapper
.
90
:1"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
Фnon_trainable_variables
Хlayers
Цmetrics
 Чlayer_regularization_losses
Шlayer_metrics
3	variables
4trainable_variables
5regularization_losses
7__call__
*8&call_and_return_all_conditional_losses
&8"call_and_return_conditional_losses"
_generic_user_object
ж
Щtrace_02«
*__inference_conv2d_20_layer_call_fn_215412Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЩtrace_0
Б
Ъtrace_02в
E__inference_conv2d_20_layer_call_and_return_conditional_losses_215423Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЪtrace_0
*:(  2conv2d_20/kernel
: 2conv2d_20/bias
™2І§
Ы≤Ч
FullArgSpec
argsЪ
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
Ыnon_trainable_variables
Ьlayers
Эmetrics
 Юlayer_regularization_losses
Яlayer_metrics
<	variables
=trainable_variables
>regularization_losses
@__call__
*A&call_and_return_all_conditional_losses
&A"call_and_return_conditional_losses"
_generic_user_object
н
†trace_02ќ
1__inference_max_pooling2d_20_layer_call_fn_215428Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z†trace_0
И
°trace_02й
L__inference_max_pooling2d_20_layer_call_and_return_conditional_losses_215433Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z°trace_0
.
H0
I1"
trackable_list_wrapper
.
H0
I1"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
Ґnon_trainable_variables
£layers
§metrics
 •layer_regularization_losses
¶layer_metrics
B	variables
Ctrainable_variables
Dregularization_losses
F__call__
*G&call_and_return_all_conditional_losses
&G"call_and_return_conditional_losses"
_generic_user_object
ж
Іtrace_02«
*__inference_conv2d_21_layer_call_fn_215442Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zІtrace_0
Б
®trace_02в
E__inference_conv2d_21_layer_call_and_return_conditional_losses_215453Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z®trace_0
*:( @2conv2d_21/kernel
:@2conv2d_21/bias
™2І§
Ы≤Ч
FullArgSpec
argsЪ
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
©non_trainable_variables
™layers
Ђmetrics
 ђlayer_regularization_losses
≠layer_metrics
K	variables
Ltrainable_variables
Mregularization_losses
O__call__
*P&call_and_return_all_conditional_losses
&P"call_and_return_conditional_losses"
_generic_user_object
н
Ѓtrace_02ќ
1__inference_max_pooling2d_21_layer_call_fn_215458Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЃtrace_0
И
ѓtrace_02й
L__inference_max_pooling2d_21_layer_call_and_return_conditional_losses_215463Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zѓtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
∞non_trainable_variables
±layers
≤metrics
 ≥layer_regularization_losses
іlayer_metrics
Q	variables
Rtrainable_variables
Sregularization_losses
U__call__
*V&call_and_return_all_conditional_losses
&V"call_and_return_conditional_losses"
_generic_user_object
ж
µtrace_02«
*__inference_flatten_4_layer_call_fn_215468Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zµtrace_0
Б
ґtrace_02в
E__inference_flatten_4_layer_call_and_return_conditional_losses_215474Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zґtrace_0
.
]0
^1"
trackable_list_wrapper
.
]0
^1"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
Јnon_trainable_variables
Єlayers
єmetrics
 Їlayer_regularization_losses
їlayer_metrics
W	variables
Xtrainable_variables
Yregularization_losses
[__call__
*\&call_and_return_all_conditional_losses
&\"call_and_return_conditional_losses"
_generic_user_object
д
Љtrace_02≈
(__inference_dense_8_layer_call_fn_215483Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЉtrace_0
€
љtrace_02а
C__inference_dense_8_layer_call_and_return_conditional_losses_215494Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zљtrace_0
": 
јА2dense_8/kernel
:А2dense_8/bias
.
e0
f1"
trackable_list_wrapper
.
e0
f1"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
Њnon_trainable_variables
њlayers
јmetrics
 Ѕlayer_regularization_losses
¬layer_metrics
_	variables
`trainable_variables
aregularization_losses
c__call__
*d&call_and_return_all_conditional_losses
&d"call_and_return_conditional_losses"
_generic_user_object
д
√trace_02≈
(__inference_dense_9_layer_call_fn_215503Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z√trace_0
€
ƒtrace_02а
C__inference_dense_9_layer_call_and_return_conditional_losses_215514Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zƒtrace_0
!:	А2dense_9/kernel
:2dense_9/bias
 "
trackable_list_wrapper
n
0
1
2
3
4
5
6
7
	8

9
10"
trackable_list_wrapper
0
≈0
∆1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
фBс
-__inference_sequential_4_layer_call_fn_215223conv2d_18_input"ђ
•≤°
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
фBс
-__inference_sequential_4_layer_call_fn_215252conv2d_18_input"ђ
•≤°
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ПBМ
H__inference_sequential_4_layer_call_and_return_conditional_losses_215155conv2d_18_input"ђ
•≤°
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ПBМ
H__inference_sequential_4_layer_call_and_return_conditional_losses_215194conv2d_18_input"ђ
•≤°
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ц
q0
«1
»2
…3
 4
Ћ5
ћ6
Ќ7
ќ8
ѕ9
–10
—11
“12
”13
‘14
’15
÷16
„17
Ў18
ў19
Џ20
џ21
№22
Ё23
ё24"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
В
«0
…1
Ћ2
Ќ3
ѕ4
—5
”6
’7
„8
ў9
џ10
Ё11"
trackable_list_wrapper
В
»0
 1
ћ2
ќ3
–4
“5
‘6
÷7
Ў8
Џ9
№10
ё11"
trackable_list_wrapper
µ2≤ѓ
¶≤Ґ
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 0
аBЁ
$__inference_signature_wrapper_215343conv2d_18_input"°
Ъ≤Ц
FullArgSpec
argsЪ 
varargs
 
varkw
 
defaults
 $

kwonlyargsЪ
jconv2d_18_input
kwonlydefaults
 
annotations™ *
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
trackable_dict_wrapper
‘B—
*__inference_conv2d_18_layer_call_fn_215352inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
пBм
E__inference_conv2d_18_layer_call_and_return_conditional_losses_215363inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
trackable_dict_wrapper
џBЎ
1__inference_max_pooling2d_18_layer_call_fn_215368inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
цBу
L__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_215373inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
trackable_dict_wrapper
‘B—
*__inference_conv2d_19_layer_call_fn_215382inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
пBм
E__inference_conv2d_19_layer_call_and_return_conditional_losses_215393inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
trackable_dict_wrapper
џBЎ
1__inference_max_pooling2d_19_layer_call_fn_215398inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
цBу
L__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_215403inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
trackable_dict_wrapper
‘B—
*__inference_conv2d_20_layer_call_fn_215412inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
пBм
E__inference_conv2d_20_layer_call_and_return_conditional_losses_215423inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
trackable_dict_wrapper
џBЎ
1__inference_max_pooling2d_20_layer_call_fn_215428inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
цBу
L__inference_max_pooling2d_20_layer_call_and_return_conditional_losses_215433inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
trackable_dict_wrapper
‘B—
*__inference_conv2d_21_layer_call_fn_215442inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
пBм
E__inference_conv2d_21_layer_call_and_return_conditional_losses_215453inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
trackable_dict_wrapper
џBЎ
1__inference_max_pooling2d_21_layer_call_fn_215458inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
цBу
L__inference_max_pooling2d_21_layer_call_and_return_conditional_losses_215463inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
trackable_dict_wrapper
‘B—
*__inference_flatten_4_layer_call_fn_215468inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
пBм
E__inference_flatten_4_layer_call_and_return_conditional_losses_215474inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
trackable_dict_wrapper
“Bѕ
(__inference_dense_8_layer_call_fn_215483inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
нBк
C__inference_dense_8_layer_call_and_return_conditional_losses_215494inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
trackable_dict_wrapper
“Bѕ
(__inference_dense_9_layer_call_fn_215503inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
нBк
C__inference_dense_9_layer_call_and_return_conditional_losses_215514inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
R
я	variables
а	keras_api

бtotal

вcount"
_tf_keras_metric
c
г	variables
д	keras_api

еtotal

жcount
з
_fn_kwargs"
_tf_keras_metric
*:(2m/conv2d_18/kernel
*:(2v/conv2d_18/kernel
:2m/conv2d_18/bias
:2v/conv2d_18/bias
*:( 2m/conv2d_19/kernel
*:( 2v/conv2d_19/kernel
: 2m/conv2d_19/bias
: 2v/conv2d_19/bias
*:(  2m/conv2d_20/kernel
*:(  2v/conv2d_20/kernel
: 2m/conv2d_20/bias
: 2v/conv2d_20/bias
*:( @2m/conv2d_21/kernel
*:( @2v/conv2d_21/kernel
:@2m/conv2d_21/bias
:@2v/conv2d_21/bias
": 
јА2m/dense_8/kernel
": 
јА2v/dense_8/kernel
:А2m/dense_8/bias
:А2v/dense_8/bias
!:	А2m/dense_9/kernel
!:	А2v/dense_9/kernel
:2m/dense_9/bias
:2v/dense_9/bias
0
б0
в1"
trackable_list_wrapper
.
я	variables"
_generic_user_object
:  (2total
:  (2count
0
е0
ж1"
trackable_list_wrapper
.
г	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapperЂ
!__inference__wrapped_model_215004Е*+9:HI]^efBҐ?
8Ґ5
3К0
conv2d_18_input€€€€€€€€€ЦЦ
™ "1™.
,
dense_9!К
dense_9€€€€€€€€€ј
E__inference_conv2d_18_layer_call_and_return_conditional_losses_215363w9Ґ6
/Ґ,
*К'
inputs€€€€€€€€€ЦЦ
™ "6Ґ3
,К)
tensor_0€€€€€€€€€ФФ
Ъ Ъ
*__inference_conv2d_18_layer_call_fn_215352l9Ґ6
/Ґ,
*К'
inputs€€€€€€€€€ЦЦ
™ "+К(
unknown€€€€€€€€€ФФЉ
E__inference_conv2d_19_layer_call_and_return_conditional_losses_215393s*+7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€JJ
™ "4Ґ1
*К'
tensor_0€€€€€€€€€HH 
Ъ Ц
*__inference_conv2d_19_layer_call_fn_215382h*+7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€JJ
™ ")К&
unknown€€€€€€€€€HH Љ
E__inference_conv2d_20_layer_call_and_return_conditional_losses_215423s9:7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€$$ 
™ "4Ґ1
*К'
tensor_0€€€€€€€€€"" 
Ъ Ц
*__inference_conv2d_20_layer_call_fn_215412h9:7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€$$ 
™ ")К&
unknown€€€€€€€€€"" Љ
E__inference_conv2d_21_layer_call_and_return_conditional_losses_215453sHI7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€ 
™ "4Ґ1
*К'
tensor_0€€€€€€€€€@
Ъ Ц
*__inference_conv2d_21_layer_call_fn_215442hHI7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€ 
™ ")К&
unknown€€€€€€€€€@ђ
C__inference_dense_8_layer_call_and_return_conditional_losses_215494e]^0Ґ-
&Ґ#
!К
inputs€€€€€€€€€ј
™ "-Ґ*
#К 
tensor_0€€€€€€€€€А
Ъ Ж
(__inference_dense_8_layer_call_fn_215483Z]^0Ґ-
&Ґ#
!К
inputs€€€€€€€€€ј
™ ""К
unknown€€€€€€€€€АЂ
C__inference_dense_9_layer_call_and_return_conditional_losses_215514def0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ Е
(__inference_dense_9_layer_call_fn_215503Yef0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ "!К
unknown€€€€€€€€€±
E__inference_flatten_4_layer_call_and_return_conditional_losses_215474h7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€@
™ "-Ґ*
#К 
tensor_0€€€€€€€€€ј
Ъ Л
*__inference_flatten_4_layer_call_fn_215468]7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€@
™ ""К
unknown€€€€€€€€€јц
L__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_215373•RҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "OҐL
EКB
tensor_04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ –
1__inference_max_pooling2d_18_layer_call_fn_215368ЪRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "DКA
unknown4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ц
L__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_215403•RҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "OҐL
EКB
tensor_04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ –
1__inference_max_pooling2d_19_layer_call_fn_215398ЪRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "DКA
unknown4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ц
L__inference_max_pooling2d_20_layer_call_and_return_conditional_losses_215433•RҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "OҐL
EКB
tensor_04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ –
1__inference_max_pooling2d_20_layer_call_fn_215428ЪRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "DКA
unknown4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ц
L__inference_max_pooling2d_21_layer_call_and_return_conditional_losses_215463•RҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "OҐL
EКB
tensor_04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ –
1__inference_max_pooling2d_21_layer_call_fn_215458ЪRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "DКA
unknown4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€’
H__inference_sequential_4_layer_call_and_return_conditional_losses_215155И*+9:HI]^efJҐG
@Ґ=
3К0
conv2d_18_input€€€€€€€€€ЦЦ
p

 
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ ’
H__inference_sequential_4_layer_call_and_return_conditional_losses_215194И*+9:HI]^efJҐG
@Ґ=
3К0
conv2d_18_input€€€€€€€€€ЦЦ
p 

 
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ Ѓ
-__inference_sequential_4_layer_call_fn_215223}*+9:HI]^efJҐG
@Ґ=
3К0
conv2d_18_input€€€€€€€€€ЦЦ
p

 
™ "!К
unknown€€€€€€€€€Ѓ
-__inference_sequential_4_layer_call_fn_215252}*+9:HI]^efJҐG
@Ґ=
3К0
conv2d_18_input€€€€€€€€€ЦЦ
p 

 
™ "!К
unknown€€€€€€€€€Ѕ
$__inference_signature_wrapper_215343Ш*+9:HI]^efUҐR
Ґ 
K™H
F
conv2d_18_input3К0
conv2d_18_input€€€€€€€€€ЦЦ"1™.
,
dense_9!К
dense_9€€€€€€€€€
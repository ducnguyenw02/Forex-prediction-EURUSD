Á
ö
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype

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
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
®
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
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
_
Pad

input"T
paddings"	Tpaddings
output"T"	
Ttype"
	Tpaddingstype0:
2	
C
Placeholder
output"dtype"
dtypetype"
shapeshape:

Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
@
ReadVariableOp
resource
value"dtype"
dtypetype
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
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
Á
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
executor_typestring ¨
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.9.12unknown8ø

Adam/dense_31/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_31/bias/v
y
(Adam/dense_31/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_31/bias/v*
_output_shapes
:*
dtype0

Adam/dense_31/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*'
shared_nameAdam/dense_31/kernel/v

*Adam/dense_31/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_31/kernel/v*
_output_shapes
:	*
dtype0

Adam/conv1d_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/conv1d_1/bias/v
z
(Adam/conv1d_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv1d_1/bias/v*
_output_shapes	
:*
dtype0

Adam/conv1d_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv1d_1/kernel/v

*Adam/conv1d_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv1d_1/kernel/v*#
_output_shapes
:*
dtype0

Adam/dense_31/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_31/bias/m
y
(Adam/dense_31/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_31/bias/m*
_output_shapes
:*
dtype0

Adam/dense_31/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*'
shared_nameAdam/dense_31/kernel/m

*Adam/dense_31/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_31/kernel/m*
_output_shapes
:	*
dtype0

Adam/conv1d_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/conv1d_1/bias/m
z
(Adam/conv1d_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv1d_1/bias/m*
_output_shapes	
:*
dtype0

Adam/conv1d_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv1d_1/kernel/m

*Adam/conv1d_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv1d_1/kernel/m*#
_output_shapes
:*
dtype0
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
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
r
dense_31/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_31/bias
k
!dense_31/bias/Read/ReadVariableOpReadVariableOpdense_31/bias*
_output_shapes
:*
dtype0
{
dense_31/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	* 
shared_namedense_31/kernel
t
#dense_31/kernel/Read/ReadVariableOpReadVariableOpdense_31/kernel*
_output_shapes
:	*
dtype0
s
conv1d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv1d_1/bias
l
!conv1d_1/bias/Read/ReadVariableOpReadVariableOpconv1d_1/bias*
_output_shapes	
:*
dtype0

conv1d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv1d_1/kernel
x
#conv1d_1/kernel/Read/ReadVariableOpReadVariableOpconv1d_1/kernel*#
_output_shapes
:*
dtype0

NoOpNoOp
º&
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*õ%
valueë%Bè% Bá%
§
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*	&call_and_return_all_conditional_losses

_default_save_signature
	optimizer

signatures*

	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses* 
È
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias
 _jit_compiled_convolution_op*
¦
	variables
trainable_variables
regularization_losses
	keras_api
 __call__
*!&call_and_return_all_conditional_losses

"kernel
#bias*
 
0
1
"2
#3*
 
0
1
"2
#3*
* 
°
$non_trainable_variables

%layers
&metrics
'layer_regularization_losses
(layer_metrics
	variables
trainable_variables
regularization_losses
__call__

_default_save_signature
*	&call_and_return_all_conditional_losses
&	"call_and_return_conditional_losses*
6
)trace_0
*trace_1
+trace_2
,trace_3* 
6
-trace_0
.trace_1
/trace_2
0trace_3* 
* 

1iter

2beta_1

3beta_2
	4decay
5learning_ratemSmT"mU#mVvWvX"vY#vZ*

6serving_default* 
* 
* 
* 

7non_trainable_variables

8layers
9metrics
:layer_regularization_losses
;layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses* 

<trace_0
=trace_1* 

>trace_0
?trace_1* 

0
1*

0
1*
* 

@non_trainable_variables

Alayers
Bmetrics
Clayer_regularization_losses
Dlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

Etrace_0* 

Ftrace_0* 
_Y
VARIABLE_VALUEconv1d_1/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv1d_1/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

"0
#1*

"0
#1*
* 

Gnon_trainable_variables

Hlayers
Imetrics
Jlayer_regularization_losses
Klayer_metrics
	variables
trainable_variables
regularization_losses
 __call__
*!&call_and_return_all_conditional_losses
&!"call_and_return_conditional_losses*

Ltrace_0* 

Mtrace_0* 
_Y
VARIABLE_VALUEdense_31/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_31/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
1
2*

N0*
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
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
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
8
O	variables
P	keras_api
	Qtotal
	Rcount*

Q0
R1*

O	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/conv1d_1/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/conv1d_1/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_31/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_31/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/conv1d_1/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/conv1d_1/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_31/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_31/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

serving_default_lambda_1_inputPlaceholder*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ

StatefulPartitionedCallStatefulPartitionedCallserving_default_lambda_1_inputconv1d_1/kernelconv1d_1/biasdense_31/kerneldense_31/bias*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *-
f(R&
$__inference_signature_wrapper_575226
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
õ
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#conv1d_1/kernel/Read/ReadVariableOp!conv1d_1/bias/Read/ReadVariableOp#dense_31/kernel/Read/ReadVariableOp!dense_31/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/conv1d_1/kernel/m/Read/ReadVariableOp(Adam/conv1d_1/bias/m/Read/ReadVariableOp*Adam/dense_31/kernel/m/Read/ReadVariableOp(Adam/dense_31/bias/m/Read/ReadVariableOp*Adam/conv1d_1/kernel/v/Read/ReadVariableOp(Adam/conv1d_1/bias/v/Read/ReadVariableOp*Adam/dense_31/kernel/v/Read/ReadVariableOp(Adam/dense_31/bias/v/Read/ReadVariableOpConst* 
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *(
f#R!
__inference__traced_save_575512
ô
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv1d_1/kernelconv1d_1/biasdense_31/kerneldense_31/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcountAdam/conv1d_1/kernel/mAdam/conv1d_1/bias/mAdam/dense_31/kernel/mAdam/dense_31/bias/mAdam/conv1d_1/kernel/vAdam/conv1d_1/bias/vAdam/dense_31/kernel/vAdam/dense_31/bias/v*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *+
f&R$
"__inference__traced_restore_575579Ï
Ð
ü
D__inference_dense_31_layer_call_and_return_conditional_losses_575066

inputs4
!tensordot_readvariableop_resource:	-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢Tensordot/ReadVariableOp{
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : »
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ¿
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:z
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : §
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
IdentityIdentityBiasAdd:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
È
`
D__inference_lambda_1_layer_call_and_return_conditional_losses_575360

inputs
identityP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :o

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
IdentityIdentityExpandDims:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
É
á
/__inference_model_4_conv1D_layer_call_fn_575084
lambda_1_input
unknown:
	unknown_0:	
	unknown_1:	
	unknown_2:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCalllambda_1_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_model_4_conv1D_layer_call_and_return_conditional_losses_575073s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(
_user_specified_namelambda_1_input
±
Ù
/__inference_model_4_conv1D_layer_call_fn_575239

inputs
unknown:
	unknown_0:	
	unknown_1:	
	unknown_2:
identity¢StatefulPartitionedCallý
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_model_4_conv1D_layer_call_and_return_conditional_losses_575073s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
±
Ù
/__inference_model_4_conv1D_layer_call_fn_575252

inputs
unknown:
	unknown_0:	
	unknown_1:	
	unknown_2:
identity¢StatefulPartitionedCallý
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_model_4_conv1D_layer_call_and_return_conditional_losses_575151s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¿4
ü
J__inference_model_4_conv1D_layer_call_and_return_conditional_losses_575298

inputsK
4conv1d_1_conv1d_expanddims_1_readvariableop_resource:7
(conv1d_1_biasadd_readvariableop_resource:	=
*dense_31_tensordot_readvariableop_resource:	6
(dense_31_biasadd_readvariableop_resource:
identity¢conv1d_1/BiasAdd/ReadVariableOp¢+conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp¢dense_31/BiasAdd/ReadVariableOp¢!dense_31/Tensordot/ReadVariableOpY
lambda_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :
lambda_1/ExpandDims
ExpandDimsinputs lambda_1/ExpandDims/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ~
conv1d_1/Pad/paddingsConst*
_output_shapes

:*
dtype0*1
value(B&"                       
conv1d_1/PadPadlambda_1/ExpandDims:output:0conv1d_1/Pad/paddings:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿi
conv1d_1/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ¢
conv1d_1/Conv1D/ExpandDims
ExpandDimsconv1d_1/Pad:output:0'conv1d_1/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¥
+conv1d_1/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_1_conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:*
dtype0b
 conv1d_1/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ¼
conv1d_1/Conv1D/ExpandDims_1
ExpandDims3conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp:value:0)conv1d_1/Conv1D/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:É
conv1d_1/Conv1DConv2D#conv1d_1/Conv1D/ExpandDims:output:0%conv1d_1/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides

conv1d_1/Conv1D/SqueezeSqueezeconv1d_1/Conv1D:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
squeeze_dims

ýÿÿÿÿÿÿÿÿ
conv1d_1/BiasAdd/ReadVariableOpReadVariableOp(conv1d_1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
conv1d_1/BiasAddBiasAdd conv1d_1/Conv1D/Squeeze:output:0'conv1d_1/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿg
conv1d_1/ReluReluconv1d_1/BiasAdd:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!dense_31/Tensordot/ReadVariableOpReadVariableOp*dense_31_tensordot_readvariableop_resource*
_output_shapes
:	*
dtype0a
dense_31/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:h
dense_31/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       c
dense_31/Tensordot/ShapeShapeconv1d_1/Relu:activations:0*
T0*
_output_shapes
:b
 dense_31/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ß
dense_31/Tensordot/GatherV2GatherV2!dense_31/Tensordot/Shape:output:0 dense_31/Tensordot/free:output:0)dense_31/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:d
"dense_31/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ã
dense_31/Tensordot/GatherV2_1GatherV2!dense_31/Tensordot/Shape:output:0 dense_31/Tensordot/axes:output:0+dense_31/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:b
dense_31/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
dense_31/Tensordot/ProdProd$dense_31/Tensordot/GatherV2:output:0!dense_31/Tensordot/Const:output:0*
T0*
_output_shapes
: d
dense_31/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
dense_31/Tensordot/Prod_1Prod&dense_31/Tensordot/GatherV2_1:output:0#dense_31/Tensordot/Const_1:output:0*
T0*
_output_shapes
: `
dense_31/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : À
dense_31/Tensordot/concatConcatV2 dense_31/Tensordot/free:output:0 dense_31/Tensordot/axes:output:0'dense_31/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:
dense_31/Tensordot/stackPack dense_31/Tensordot/Prod:output:0"dense_31/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:¡
dense_31/Tensordot/transpose	Transposeconv1d_1/Relu:activations:0"dense_31/Tensordot/concat:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¥
dense_31/Tensordot/ReshapeReshape dense_31/Tensordot/transpose:y:0!dense_31/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¥
dense_31/Tensordot/MatMulMatMul#dense_31/Tensordot/Reshape:output:0)dense_31/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
dense_31/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:b
 dense_31/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ë
dense_31/Tensordot/concat_1ConcatV2$dense_31/Tensordot/GatherV2:output:0#dense_31/Tensordot/Const_2:output:0)dense_31/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
dense_31/TensordotReshape#dense_31/Tensordot/MatMul:product:0$dense_31/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_31/BiasAdd/ReadVariableOpReadVariableOp(dense_31_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_31/BiasAddBiasAdddense_31/Tensordot:output:0'dense_31/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
IdentityIdentitydense_31/BiasAdd:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿÜ
NoOpNoOp ^conv1d_1/BiasAdd/ReadVariableOp,^conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp ^dense_31/BiasAdd/ReadVariableOp"^dense_31/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 2B
conv1d_1/BiasAdd/ReadVariableOpconv1d_1/BiasAdd/ReadVariableOp2Z
+conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp+conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp2B
dense_31/BiasAdd/ReadVariableOpdense_31/BiasAdd/ReadVariableOp2F
!dense_31/Tensordot/ReadVariableOp!dense_31/Tensordot/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
/

__inference__traced_save_575512
file_prefix.
*savev2_conv1d_1_kernel_read_readvariableop,
(savev2_conv1d_1_bias_read_readvariableop.
*savev2_dense_31_kernel_read_readvariableop,
(savev2_dense_31_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_conv1d_1_kernel_m_read_readvariableop3
/savev2_adam_conv1d_1_bias_m_read_readvariableop5
1savev2_adam_dense_31_kernel_m_read_readvariableop3
/savev2_adam_dense_31_bias_m_read_readvariableop5
1savev2_adam_conv1d_1_kernel_v_read_readvariableop3
/savev2_adam_conv1d_1_bias_v_read_readvariableop5
1savev2_adam_dense_31_kernel_v_read_readvariableop3
/savev2_adam_dense_31_bias_v_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpointsw
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
_temp/part
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
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: Ï

SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*ø	
valueî	Bë	B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*;
value2B0B B B B B B B B B B B B B B B B B B B B 
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_conv1d_1_kernel_read_readvariableop(savev2_conv1d_1_bias_read_readvariableop*savev2_dense_31_kernel_read_readvariableop(savev2_dense_31_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_conv1d_1_kernel_m_read_readvariableop/savev2_adam_conv1d_1_bias_m_read_readvariableop1savev2_adam_dense_31_kernel_m_read_readvariableop/savev2_adam_dense_31_bias_m_read_readvariableop1savev2_adam_conv1d_1_kernel_v_read_readvariableop/savev2_adam_conv1d_1_bias_v_read_readvariableop1savev2_adam_dense_31_kernel_v_read_readvariableop/savev2_adam_dense_31_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *"
dtypes
2	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*
_input_shapes
: :::	:: : : : : : : :::	::::	:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:)%
#
_output_shapes
::!

_output_shapes	
::%!

_output_shapes
:	: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :)%
#
_output_shapes
::!

_output_shapes	
::%!

_output_shapes
:	: 

_output_shapes
::)%
#
_output_shapes
::!

_output_shapes	
::%!

_output_shapes
:	: 

_output_shapes
::

_output_shapes
: 

Ö
$__inference_signature_wrapper_575226
lambda_1_input
unknown:
	unknown_0:	
	unknown_1:	
	unknown_2:
identity¢StatefulPartitionedCallÜ
StatefulPartitionedCallStatefulPartitionedCalllambda_1_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference__wrapped_model_574997s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(
_user_specified_namelambda_1_input
È
`
D__inference_lambda_1_layer_call_and_return_conditional_losses_575366

inputs
identityP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :o

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
IdentityIdentityExpandDims:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ð
ü
D__inference_dense_31_layer_call_and_return_conditional_losses_575432

inputs4
!tensordot_readvariableop_resource:	-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢Tensordot/ReadVariableOp{
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : »
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ¿
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:z
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : §
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
IdentityIdentityBiasAdd:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
°

D__inference_conv1d_1_layer_call_and_return_conditional_losses_575393

inputsB
+conv1d_expanddims_1_readvariableop_resource:.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢"Conv1D/ExpandDims_1/ReadVariableOpu
Pad/paddingsConst*
_output_shapes

:*
dtype0*1
value(B&"                       _
PadPadinputsPad/paddings:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ
Conv1D/ExpandDims
ExpandDimsPad:output:0Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ¡
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:®
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides

Conv1D/SqueezeSqueezeConv1D:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
squeeze_dims

ýÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿU
ReluReluBiasAdd:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
IdentityIdentityRelu:activations:0^NoOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

º
J__inference_model_4_conv1D_layer_call_and_return_conditional_losses_575073

inputs&
conv1d_1_575031:
conv1d_1_575033:	"
dense_31_575067:	
dense_31_575069:
identity¢ conv1d_1/StatefulPartitionedCall¢ dense_31/StatefulPartitionedCall¼
lambda_1/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lambda_1_layer_call_and_return_conditional_losses_575010
 conv1d_1/StatefulPartitionedCallStatefulPartitionedCall!lambda_1/PartitionedCall:output:0conv1d_1_575031conv1d_1_575033*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv1d_1_layer_call_and_return_conditional_losses_575030
 dense_31/StatefulPartitionedCallStatefulPartitionedCall)conv1d_1/StatefulPartitionedCall:output:0dense_31_575067dense_31_575069*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_31_layer_call_and_return_conditional_losses_575066|
IdentityIdentity)dense_31/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp!^conv1d_1/StatefulPartitionedCall!^dense_31/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 2D
 conv1d_1/StatefulPartitionedCall conv1d_1/StatefulPartitionedCall2D
 dense_31/StatefulPartitionedCall dense_31/StatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¤
Â
J__inference_model_4_conv1D_layer_call_and_return_conditional_losses_575190
lambda_1_input&
conv1d_1_575179:
conv1d_1_575181:	"
dense_31_575184:	
dense_31_575186:
identity¢ conv1d_1/StatefulPartitionedCall¢ dense_31/StatefulPartitionedCallÄ
lambda_1/PartitionedCallPartitionedCalllambda_1_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lambda_1_layer_call_and_return_conditional_losses_575010
 conv1d_1/StatefulPartitionedCallStatefulPartitionedCall!lambda_1/PartitionedCall:output:0conv1d_1_575179conv1d_1_575181*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv1d_1_layer_call_and_return_conditional_losses_575030
 dense_31/StatefulPartitionedCallStatefulPartitionedCall)conv1d_1/StatefulPartitionedCall:output:0dense_31_575184dense_31_575186*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_31_layer_call_and_return_conditional_losses_575066|
IdentityIdentity)dense_31/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp!^conv1d_1/StatefulPartitionedCall!^dense_31/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 2D
 conv1d_1/StatefulPartitionedCall conv1d_1/StatefulPartitionedCall2D
 dense_31/StatefulPartitionedCall dense_31/StatefulPartitionedCall:W S
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(
_user_specified_namelambda_1_input
N
µ
"__inference__traced_restore_575579
file_prefix7
 assignvariableop_conv1d_1_kernel:/
 assignvariableop_1_conv1d_1_bias:	5
"assignvariableop_2_dense_31_kernel:	.
 assignvariableop_3_dense_31_bias:&
assignvariableop_4_adam_iter:	 (
assignvariableop_5_adam_beta_1: (
assignvariableop_6_adam_beta_2: '
assignvariableop_7_adam_decay: /
%assignvariableop_8_adam_learning_rate: "
assignvariableop_9_total: #
assignvariableop_10_count: A
*assignvariableop_11_adam_conv1d_1_kernel_m:7
(assignvariableop_12_adam_conv1d_1_bias_m:	=
*assignvariableop_13_adam_dense_31_kernel_m:	6
(assignvariableop_14_adam_dense_31_bias_m:A
*assignvariableop_15_adam_conv1d_1_kernel_v:7
(assignvariableop_16_adam_conv1d_1_bias_v:	=
*assignvariableop_17_adam_dense_31_kernel_v:	6
(assignvariableop_18_adam_dense_31_bias_v:
identity_20¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_2¢AssignVariableOp_3¢AssignVariableOp_4¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9Ò

RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*ø	
valueî	Bë	B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*;
value2B0B B B B B B B B B B B B B B B B B B B B 
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*d
_output_shapesR
P::::::::::::::::::::*"
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOp assignvariableop_conv1d_1_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp assignvariableop_1_conv1d_1_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOp"assignvariableop_2_dense_31_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOp assignvariableop_3_dense_31_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_iterIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_beta_1Identity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_beta_2Identity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_decayIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_8AssignVariableOp%assignvariableop_8_adam_learning_rateIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOpassignvariableop_9_totalIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_10AssignVariableOpassignvariableop_10_countIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_11AssignVariableOp*assignvariableop_11_adam_conv1d_1_kernel_mIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_12AssignVariableOp(assignvariableop_12_adam_conv1d_1_bias_mIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_13AssignVariableOp*assignvariableop_13_adam_dense_31_kernel_mIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_14AssignVariableOp(assignvariableop_14_adam_dense_31_bias_mIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_15AssignVariableOp*assignvariableop_15_adam_conv1d_1_kernel_vIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_16AssignVariableOp(assignvariableop_16_adam_conv1d_1_bias_vIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_17AssignVariableOp*assignvariableop_17_adam_dense_31_kernel_vIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_18AssignVariableOp(assignvariableop_18_adam_dense_31_bias_vIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ñ
Identity_19Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_20IdentityIdentity_19:output:0^NoOp_1*
T0*
_output_shapes
: Þ
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_20Identity_20:output:0*;
_input_shapes*
(: : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_18AssignVariableOp_182(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
Ø@
Ó
!__inference__wrapped_model_574997
lambda_1_inputZ
Cmodel_4_conv1d_conv1d_1_conv1d_expanddims_1_readvariableop_resource:F
7model_4_conv1d_conv1d_1_biasadd_readvariableop_resource:	L
9model_4_conv1d_dense_31_tensordot_readvariableop_resource:	E
7model_4_conv1d_dense_31_biasadd_readvariableop_resource:
identity¢.model_4_conv1D/conv1d_1/BiasAdd/ReadVariableOp¢:model_4_conv1D/conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp¢.model_4_conv1D/dense_31/BiasAdd/ReadVariableOp¢0model_4_conv1D/dense_31/Tensordot/ReadVariableOph
&model_4_conv1D/lambda_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :§
"model_4_conv1D/lambda_1/ExpandDims
ExpandDimslambda_1_input/model_4_conv1D/lambda_1/ExpandDims/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$model_4_conv1D/conv1d_1/Pad/paddingsConst*
_output_shapes

:*
dtype0*1
value(B&"                       ´
model_4_conv1D/conv1d_1/PadPad+model_4_conv1D/lambda_1/ExpandDims:output:0-model_4_conv1D/conv1d_1/Pad/paddings:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
-model_4_conv1D/conv1d_1/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿÏ
)model_4_conv1D/conv1d_1/Conv1D/ExpandDims
ExpandDims$model_4_conv1D/conv1d_1/Pad:output:06model_4_conv1D/conv1d_1/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿÃ
:model_4_conv1D/conv1d_1/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOpCmodel_4_conv1d_conv1d_1_conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:*
dtype0q
/model_4_conv1D/conv1d_1/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : é
+model_4_conv1D/conv1d_1/Conv1D/ExpandDims_1
ExpandDimsBmodel_4_conv1D/conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp:value:08model_4_conv1D/conv1d_1/Conv1D/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:ö
model_4_conv1D/conv1d_1/Conv1DConv2D2model_4_conv1D/conv1d_1/Conv1D/ExpandDims:output:04model_4_conv1D/conv1d_1/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides
±
&model_4_conv1D/conv1d_1/Conv1D/SqueezeSqueeze'model_4_conv1D/conv1d_1/Conv1D:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
squeeze_dims

ýÿÿÿÿÿÿÿÿ£
.model_4_conv1D/conv1d_1/BiasAdd/ReadVariableOpReadVariableOp7model_4_conv1d_conv1d_1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ê
model_4_conv1D/conv1d_1/BiasAddBiasAdd/model_4_conv1D/conv1d_1/Conv1D/Squeeze:output:06model_4_conv1D/conv1d_1/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
model_4_conv1D/conv1d_1/ReluRelu(model_4_conv1D/conv1d_1/BiasAdd:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ«
0model_4_conv1D/dense_31/Tensordot/ReadVariableOpReadVariableOp9model_4_conv1d_dense_31_tensordot_readvariableop_resource*
_output_shapes
:	*
dtype0p
&model_4_conv1D/dense_31/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:w
&model_4_conv1D/dense_31/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       
'model_4_conv1D/dense_31/Tensordot/ShapeShape*model_4_conv1D/conv1d_1/Relu:activations:0*
T0*
_output_shapes
:q
/model_4_conv1D/dense_31/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
*model_4_conv1D/dense_31/Tensordot/GatherV2GatherV20model_4_conv1D/dense_31/Tensordot/Shape:output:0/model_4_conv1D/dense_31/Tensordot/free:output:08model_4_conv1D/dense_31/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:s
1model_4_conv1D/dense_31/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
,model_4_conv1D/dense_31/Tensordot/GatherV2_1GatherV20model_4_conv1D/dense_31/Tensordot/Shape:output:0/model_4_conv1D/dense_31/Tensordot/axes:output:0:model_4_conv1D/dense_31/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:q
'model_4_conv1D/dense_31/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ¶
&model_4_conv1D/dense_31/Tensordot/ProdProd3model_4_conv1D/dense_31/Tensordot/GatherV2:output:00model_4_conv1D/dense_31/Tensordot/Const:output:0*
T0*
_output_shapes
: s
)model_4_conv1D/dense_31/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ¼
(model_4_conv1D/dense_31/Tensordot/Prod_1Prod5model_4_conv1D/dense_31/Tensordot/GatherV2_1:output:02model_4_conv1D/dense_31/Tensordot/Const_1:output:0*
T0*
_output_shapes
: o
-model_4_conv1D/dense_31/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ü
(model_4_conv1D/dense_31/Tensordot/concatConcatV2/model_4_conv1D/dense_31/Tensordot/free:output:0/model_4_conv1D/dense_31/Tensordot/axes:output:06model_4_conv1D/dense_31/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:Á
'model_4_conv1D/dense_31/Tensordot/stackPack/model_4_conv1D/dense_31/Tensordot/Prod:output:01model_4_conv1D/dense_31/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:Î
+model_4_conv1D/dense_31/Tensordot/transpose	Transpose*model_4_conv1D/conv1d_1/Relu:activations:01model_4_conv1D/dense_31/Tensordot/concat:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÒ
)model_4_conv1D/dense_31/Tensordot/ReshapeReshape/model_4_conv1D/dense_31/Tensordot/transpose:y:00model_4_conv1D/dense_31/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÒ
(model_4_conv1D/dense_31/Tensordot/MatMulMatMul2model_4_conv1D/dense_31/Tensordot/Reshape:output:08model_4_conv1D/dense_31/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
)model_4_conv1D/dense_31/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:q
/model_4_conv1D/dense_31/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
*model_4_conv1D/dense_31/Tensordot/concat_1ConcatV23model_4_conv1D/dense_31/Tensordot/GatherV2:output:02model_4_conv1D/dense_31/Tensordot/Const_2:output:08model_4_conv1D/dense_31/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Ë
!model_4_conv1D/dense_31/TensordotReshape2model_4_conv1D/dense_31/Tensordot/MatMul:product:03model_4_conv1D/dense_31/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¢
.model_4_conv1D/dense_31/BiasAdd/ReadVariableOpReadVariableOp7model_4_conv1d_dense_31_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ä
model_4_conv1D/dense_31/BiasAddBiasAdd*model_4_conv1D/dense_31/Tensordot:output:06model_4_conv1D/dense_31/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ{
IdentityIdentity(model_4_conv1D/dense_31/BiasAdd:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp/^model_4_conv1D/conv1d_1/BiasAdd/ReadVariableOp;^model_4_conv1D/conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp/^model_4_conv1D/dense_31/BiasAdd/ReadVariableOp1^model_4_conv1D/dense_31/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 2`
.model_4_conv1D/conv1d_1/BiasAdd/ReadVariableOp.model_4_conv1D/conv1d_1/BiasAdd/ReadVariableOp2x
:model_4_conv1D/conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp:model_4_conv1D/conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp2`
.model_4_conv1D/dense_31/BiasAdd/ReadVariableOp.model_4_conv1D/dense_31/BiasAdd/ReadVariableOp2d
0model_4_conv1D/dense_31/Tensordot/ReadVariableOp0model_4_conv1D/dense_31/Tensordot/ReadVariableOp:W S
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(
_user_specified_namelambda_1_input
Ú

)__inference_conv1d_1_layer_call_fn_575375

inputs
unknown:
	unknown_0:	
identity¢StatefulPartitionedCallÞ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv1d_1_layer_call_and_return_conditional_losses_575030t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

º
J__inference_model_4_conv1D_layer_call_and_return_conditional_losses_575151

inputs&
conv1d_1_575140:
conv1d_1_575142:	"
dense_31_575145:	
dense_31_575147:
identity¢ conv1d_1/StatefulPartitionedCall¢ dense_31/StatefulPartitionedCall¼
lambda_1/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lambda_1_layer_call_and_return_conditional_losses_575118
 conv1d_1/StatefulPartitionedCallStatefulPartitionedCall!lambda_1/PartitionedCall:output:0conv1d_1_575140conv1d_1_575142*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv1d_1_layer_call_and_return_conditional_losses_575030
 dense_31/StatefulPartitionedCallStatefulPartitionedCall)conv1d_1/StatefulPartitionedCall:output:0dense_31_575145dense_31_575147*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_31_layer_call_and_return_conditional_losses_575066|
IdentityIdentity)dense_31/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp!^conv1d_1/StatefulPartitionedCall!^dense_31/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 2D
 conv1d_1/StatefulPartitionedCall conv1d_1/StatefulPartitionedCall2D
 dense_31/StatefulPartitionedCall dense_31/StatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
É
á
/__inference_model_4_conv1D_layer_call_fn_575175
lambda_1_input
unknown:
	unknown_0:	
	unknown_1:	
	unknown_2:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCalllambda_1_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_model_4_conv1D_layer_call_and_return_conditional_losses_575151s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(
_user_specified_namelambda_1_input
Õ

)__inference_dense_31_layer_call_fn_575402

inputs
unknown:	
	unknown_0:
identity¢StatefulPartitionedCallÝ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_31_layer_call_and_return_conditional_losses_575066s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
È
`
D__inference_lambda_1_layer_call_and_return_conditional_losses_575010

inputs
identityP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :o

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
IdentityIdentityExpandDims:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
È
`
D__inference_lambda_1_layer_call_and_return_conditional_losses_575118

inputs
identityP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :o

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
IdentityIdentityExpandDims:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¥
E
)__inference_lambda_1_layer_call_fn_575354

inputs
identity³
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lambda_1_layer_call_and_return_conditional_losses_575118d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
°

D__inference_conv1d_1_layer_call_and_return_conditional_losses_575030

inputsB
+conv1d_expanddims_1_readvariableop_resource:.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢"Conv1D/ExpandDims_1/ReadVariableOpu
Pad/paddingsConst*
_output_shapes

:*
dtype0*1
value(B&"                       _
PadPadinputsPad/paddings:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ
Conv1D/ExpandDims
ExpandDimsPad:output:0Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ¡
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:®
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides

Conv1D/SqueezeSqueezeConv1D:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
squeeze_dims

ýÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿU
ReluReluBiasAdd:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
IdentityIdentityRelu:activations:0^NoOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¿4
ü
J__inference_model_4_conv1D_layer_call_and_return_conditional_losses_575344

inputsK
4conv1d_1_conv1d_expanddims_1_readvariableop_resource:7
(conv1d_1_biasadd_readvariableop_resource:	=
*dense_31_tensordot_readvariableop_resource:	6
(dense_31_biasadd_readvariableop_resource:
identity¢conv1d_1/BiasAdd/ReadVariableOp¢+conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp¢dense_31/BiasAdd/ReadVariableOp¢!dense_31/Tensordot/ReadVariableOpY
lambda_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :
lambda_1/ExpandDims
ExpandDimsinputs lambda_1/ExpandDims/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ~
conv1d_1/Pad/paddingsConst*
_output_shapes

:*
dtype0*1
value(B&"                       
conv1d_1/PadPadlambda_1/ExpandDims:output:0conv1d_1/Pad/paddings:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿi
conv1d_1/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ¢
conv1d_1/Conv1D/ExpandDims
ExpandDimsconv1d_1/Pad:output:0'conv1d_1/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¥
+conv1d_1/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_1_conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:*
dtype0b
 conv1d_1/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ¼
conv1d_1/Conv1D/ExpandDims_1
ExpandDims3conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp:value:0)conv1d_1/Conv1D/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:É
conv1d_1/Conv1DConv2D#conv1d_1/Conv1D/ExpandDims:output:0%conv1d_1/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides

conv1d_1/Conv1D/SqueezeSqueezeconv1d_1/Conv1D:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
squeeze_dims

ýÿÿÿÿÿÿÿÿ
conv1d_1/BiasAdd/ReadVariableOpReadVariableOp(conv1d_1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
conv1d_1/BiasAddBiasAdd conv1d_1/Conv1D/Squeeze:output:0'conv1d_1/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿg
conv1d_1/ReluReluconv1d_1/BiasAdd:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!dense_31/Tensordot/ReadVariableOpReadVariableOp*dense_31_tensordot_readvariableop_resource*
_output_shapes
:	*
dtype0a
dense_31/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:h
dense_31/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       c
dense_31/Tensordot/ShapeShapeconv1d_1/Relu:activations:0*
T0*
_output_shapes
:b
 dense_31/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ß
dense_31/Tensordot/GatherV2GatherV2!dense_31/Tensordot/Shape:output:0 dense_31/Tensordot/free:output:0)dense_31/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:d
"dense_31/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ã
dense_31/Tensordot/GatherV2_1GatherV2!dense_31/Tensordot/Shape:output:0 dense_31/Tensordot/axes:output:0+dense_31/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:b
dense_31/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
dense_31/Tensordot/ProdProd$dense_31/Tensordot/GatherV2:output:0!dense_31/Tensordot/Const:output:0*
T0*
_output_shapes
: d
dense_31/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
dense_31/Tensordot/Prod_1Prod&dense_31/Tensordot/GatherV2_1:output:0#dense_31/Tensordot/Const_1:output:0*
T0*
_output_shapes
: `
dense_31/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : À
dense_31/Tensordot/concatConcatV2 dense_31/Tensordot/free:output:0 dense_31/Tensordot/axes:output:0'dense_31/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:
dense_31/Tensordot/stackPack dense_31/Tensordot/Prod:output:0"dense_31/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:¡
dense_31/Tensordot/transpose	Transposeconv1d_1/Relu:activations:0"dense_31/Tensordot/concat:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¥
dense_31/Tensordot/ReshapeReshape dense_31/Tensordot/transpose:y:0!dense_31/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¥
dense_31/Tensordot/MatMulMatMul#dense_31/Tensordot/Reshape:output:0)dense_31/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
dense_31/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:b
 dense_31/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ë
dense_31/Tensordot/concat_1ConcatV2$dense_31/Tensordot/GatherV2:output:0#dense_31/Tensordot/Const_2:output:0)dense_31/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
dense_31/TensordotReshape#dense_31/Tensordot/MatMul:product:0$dense_31/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_31/BiasAdd/ReadVariableOpReadVariableOp(dense_31_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_31/BiasAddBiasAdddense_31/Tensordot:output:0'dense_31/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
IdentityIdentitydense_31/BiasAdd:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿÜ
NoOpNoOp ^conv1d_1/BiasAdd/ReadVariableOp,^conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp ^dense_31/BiasAdd/ReadVariableOp"^dense_31/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 2B
conv1d_1/BiasAdd/ReadVariableOpconv1d_1/BiasAdd/ReadVariableOp2Z
+conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp+conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp2B
dense_31/BiasAdd/ReadVariableOpdense_31/BiasAdd/ReadVariableOp2F
!dense_31/Tensordot/ReadVariableOp!dense_31/Tensordot/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¤
Â
J__inference_model_4_conv1D_layer_call_and_return_conditional_losses_575205
lambda_1_input&
conv1d_1_575194:
conv1d_1_575196:	"
dense_31_575199:	
dense_31_575201:
identity¢ conv1d_1/StatefulPartitionedCall¢ dense_31/StatefulPartitionedCallÄ
lambda_1/PartitionedCallPartitionedCalllambda_1_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lambda_1_layer_call_and_return_conditional_losses_575118
 conv1d_1/StatefulPartitionedCallStatefulPartitionedCall!lambda_1/PartitionedCall:output:0conv1d_1_575194conv1d_1_575196*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv1d_1_layer_call_and_return_conditional_losses_575030
 dense_31/StatefulPartitionedCallStatefulPartitionedCall)conv1d_1/StatefulPartitionedCall:output:0dense_31_575199dense_31_575201*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_31_layer_call_and_return_conditional_losses_575066|
IdentityIdentity)dense_31/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp!^conv1d_1/StatefulPartitionedCall!^dense_31/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 2D
 conv1d_1/StatefulPartitionedCall conv1d_1/StatefulPartitionedCall2D
 dense_31/StatefulPartitionedCall dense_31/StatefulPartitionedCall:W S
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(
_user_specified_namelambda_1_input
¥
E
)__inference_lambda_1_layer_call_fn_575349

inputs
identity³
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_lambda_1_layer_call_and_return_conditional_losses_575010d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs"¿L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*½
serving_default©
I
lambda_1_input7
 serving_default_lambda_1_input:0ÿÿÿÿÿÿÿÿÿ@
dense_314
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:¬u
Á
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*	&call_and_return_all_conditional_losses

_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
¥
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
Ý
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias
 _jit_compiled_convolution_op"
_tf_keras_layer
»
	variables
trainable_variables
regularization_losses
	keras_api
 __call__
*!&call_and_return_all_conditional_losses

"kernel
#bias"
_tf_keras_layer
<
0
1
"2
#3"
trackable_list_wrapper
<
0
1
"2
#3"
trackable_list_wrapper
 "
trackable_list_wrapper
Ê
$non_trainable_variables

%layers
&metrics
'layer_regularization_losses
(layer_metrics
	variables
trainable_variables
regularization_losses
__call__

_default_save_signature
*	&call_and_return_all_conditional_losses
&	"call_and_return_conditional_losses"
_generic_user_object
ò
)trace_0
*trace_1
+trace_2
,trace_32
/__inference_model_4_conv1D_layer_call_fn_575084
/__inference_model_4_conv1D_layer_call_fn_575239
/__inference_model_4_conv1D_layer_call_fn_575252
/__inference_model_4_conv1D_layer_call_fn_575175À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 z)trace_0z*trace_1z+trace_2z,trace_3
Þ
-trace_0
.trace_1
/trace_2
0trace_32ó
J__inference_model_4_conv1D_layer_call_and_return_conditional_losses_575298
J__inference_model_4_conv1D_layer_call_and_return_conditional_losses_575344
J__inference_model_4_conv1D_layer_call_and_return_conditional_losses_575190
J__inference_model_4_conv1D_layer_call_and_return_conditional_losses_575205À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 z-trace_0z.trace_1z/trace_2z0trace_3
ÓBÐ
!__inference__wrapped_model_574997lambda_1_input"
²
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 

1iter

2beta_1

3beta_2
	4decay
5learning_ratemSmT"mU#mVvWvX"vY#vZ"
	optimizer
,
6serving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
7non_trainable_variables

8layers
9metrics
:layer_regularization_losses
;layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Ð
<trace_0
=trace_12
)__inference_lambda_1_layer_call_fn_575349
)__inference_lambda_1_layer_call_fn_575354À
·²³
FullArgSpec1
args)&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults

 
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 z<trace_0z=trace_1

>trace_0
?trace_12Ï
D__inference_lambda_1_layer_call_and_return_conditional_losses_575360
D__inference_lambda_1_layer_call_and_return_conditional_losses_575366À
·²³
FullArgSpec1
args)&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults

 
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 z>trace_0z?trace_1
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
@non_trainable_variables

Alayers
Bmetrics
Clayer_regularization_losses
Dlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
í
Etrace_02Ð
)__inference_conv1d_1_layer_call_fn_575375¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zEtrace_0

Ftrace_02ë
D__inference_conv1d_1_layer_call_and_return_conditional_losses_575393¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zFtrace_0
&:$2conv1d_1/kernel
:2conv1d_1/bias
´2±®
£²
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 0
.
"0
#1"
trackable_list_wrapper
.
"0
#1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
Gnon_trainable_variables

Hlayers
Imetrics
Jlayer_regularization_losses
Klayer_metrics
	variables
trainable_variables
regularization_losses
 __call__
*!&call_and_return_all_conditional_losses
&!"call_and_return_conditional_losses"
_generic_user_object
í
Ltrace_02Ð
)__inference_dense_31_layer_call_fn_575402¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zLtrace_0

Mtrace_02ë
D__inference_dense_31_layer_call_and_return_conditional_losses_575432¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zMtrace_0
": 	2dense_31/kernel
:2dense_31/bias
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
'
N0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
/__inference_model_4_conv1D_layer_call_fn_575084lambda_1_input"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Bþ
/__inference_model_4_conv1D_layer_call_fn_575239inputs"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Bþ
/__inference_model_4_conv1D_layer_call_fn_575252inputs"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
/__inference_model_4_conv1D_layer_call_fn_575175lambda_1_input"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
J__inference_model_4_conv1D_layer_call_and_return_conditional_losses_575298inputs"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
J__inference_model_4_conv1D_layer_call_and_return_conditional_losses_575344inputs"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
¤B¡
J__inference_model_4_conv1D_layer_call_and_return_conditional_losses_575190lambda_1_input"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
¤B¡
J__inference_model_4_conv1D_layer_call_and_return_conditional_losses_575205lambda_1_input"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
ÒBÏ
$__inference_signature_wrapper_575226lambda_1_input"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
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
ûBø
)__inference_lambda_1_layer_call_fn_575349inputs"À
·²³
FullArgSpec1
args)&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults

 
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ûBø
)__inference_lambda_1_layer_call_fn_575354inputs"À
·²³
FullArgSpec1
args)&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults

 
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
D__inference_lambda_1_layer_call_and_return_conditional_losses_575360inputs"À
·²³
FullArgSpec1
args)&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults

 
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
D__inference_lambda_1_layer_call_and_return_conditional_losses_575366inputs"À
·²³
FullArgSpec1
args)&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults

 
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
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
ÝBÚ
)__inference_conv1d_1_layer_call_fn_575375inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
øBõ
D__inference_conv1d_1_layer_call_and_return_conditional_losses_575393inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
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
ÝBÚ
)__inference_dense_31_layer_call_fn_575402inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
øBõ
D__inference_dense_31_layer_call_and_return_conditional_losses_575432inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
N
O	variables
P	keras_api
	Qtotal
	Rcount"
_tf_keras_metric
.
Q0
R1"
trackable_list_wrapper
-
O	variables"
_generic_user_object
:  (2total
:  (2count
+:)2Adam/conv1d_1/kernel/m
!:2Adam/conv1d_1/bias/m
':%	2Adam/dense_31/kernel/m
 :2Adam/dense_31/bias/m
+:)2Adam/conv1d_1/kernel/v
!:2Adam/conv1d_1/bias/v
':%	2Adam/dense_31/kernel/v
 :2Adam/dense_31/bias/v
!__inference__wrapped_model_574997x"#7¢4
-¢*
(%
lambda_1_inputÿÿÿÿÿÿÿÿÿ
ª "7ª4
2
dense_31&#
dense_31ÿÿÿÿÿÿÿÿÿ­
D__inference_conv1d_1_layer_call_and_return_conditional_losses_575393e3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ
ª "*¢'
 
0ÿÿÿÿÿÿÿÿÿ
 
)__inference_conv1d_1_layer_call_fn_575375X3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ­
D__inference_dense_31_layer_call_and_return_conditional_losses_575432e"#4¢1
*¢'
%"
inputsÿÿÿÿÿÿÿÿÿ
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 
)__inference_dense_31_layer_call_fn_575402X"#4¢1
*¢'
%"
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ¬
D__inference_lambda_1_layer_call_and_return_conditional_losses_575360d7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ

 
p 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 ¬
D__inference_lambda_1_layer_call_and_return_conditional_losses_575366d7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ

 
p
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 
)__inference_lambda_1_layer_call_fn_575349W7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ

 
p 
ª "ÿÿÿÿÿÿÿÿÿ
)__inference_lambda_1_layer_call_fn_575354W7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ

 
p
ª "ÿÿÿÿÿÿÿÿÿÀ
J__inference_model_4_conv1D_layer_call_and_return_conditional_losses_575190r"#?¢<
5¢2
(%
lambda_1_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 À
J__inference_model_4_conv1D_layer_call_and_return_conditional_losses_575205r"#?¢<
5¢2
(%
lambda_1_inputÿÿÿÿÿÿÿÿÿ
p

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 ¸
J__inference_model_4_conv1D_layer_call_and_return_conditional_losses_575298j"#7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 ¸
J__inference_model_4_conv1D_layer_call_and_return_conditional_losses_575344j"#7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 
/__inference_model_4_conv1D_layer_call_fn_575084e"#?¢<
5¢2
(%
lambda_1_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
/__inference_model_4_conv1D_layer_call_fn_575175e"#?¢<
5¢2
(%
lambda_1_inputÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ
/__inference_model_4_conv1D_layer_call_fn_575239]"#7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
/__inference_model_4_conv1D_layer_call_fn_575252]"#7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ³
$__inference_signature_wrapper_575226"#I¢F
¢ 
?ª<
:
lambda_1_input(%
lambda_1_inputÿÿÿÿÿÿÿÿÿ"7ª4
2
dense_31&#
dense_31ÿÿÿÿÿÿÿÿÿ
ñ¯
µ
B
AssignVariableOp
resource
value"dtype"
dtypetype
l
BatchMatMulV2
x"T
y"T
output"T"
Ttype:
2		"
adj_xbool( "
adj_ybool( 
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
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
@
ReadVariableOp
resource
value"dtype"
dtypetype
¥
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	
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
0
Sigmoid
x"T
y"T"
Ttype:

2
¾
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
executor_typestring 
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
 "serve*2.5.02v2.5.0-rc3-213-ga4dfb8d1a718Þ

embedding/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	°`*%
shared_nameembedding/embeddings
~
(embedding/embeddings/Read/ReadVariableOpReadVariableOpembedding/embeddings*
_output_shapes
:	°`*
dtype0

embedding_1/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	`*'
shared_nameembedding_1/embeddings

*embedding_1/embeddings/Read/ReadVariableOpReadVariableOpembedding_1/embeddings*
_output_shapes
:	`*
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

embedding/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	°`*'
shared_nameembedding/embeddings/m

*embedding/embeddings/m/Read/ReadVariableOpReadVariableOpembedding/embeddings/m*
_output_shapes
:	°`*
dtype0

embedding_1/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	`*)
shared_nameembedding_1/embeddings/m

,embedding_1/embeddings/m/Read/ReadVariableOpReadVariableOpembedding_1/embeddings/m*
_output_shapes
:	`*
dtype0

embedding/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	°`*'
shared_nameembedding/embeddings/v

*embedding/embeddings/v/Read/ReadVariableOpReadVariableOpembedding/embeddings/v*
_output_shapes
:	°`*
dtype0

embedding_1/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	`*)
shared_nameembedding_1/embeddings/v

,embedding_1/embeddings/v/Read/ReadVariableOpReadVariableOpembedding_1/embeddings/v*
_output_shapes
:	`*
dtype0

NoOpNoOp
ö
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*±
value§B¤ B
ó
layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
layer-4
layer-5
	optimizer
regularization_losses
	trainable_variables

	variables
	keras_api

signatures
 
 
b

embeddings
regularization_losses
trainable_variables
	variables
	keras_api
b

embeddings
regularization_losses
trainable_variables
	variables
	keras_api
R
regularization_losses
trainable_variables
	variables
	keras_api

	keras_api
$m5m6v7v8
 

0
1

0
1
­
regularization_losses
	trainable_variables

layers
metrics
layer_metrics

	variables
non_trainable_variables
 layer_regularization_losses
 
db
VARIABLE_VALUEembedding/embeddings:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUE
 

0

0
­
regularization_losses

!layers
"metrics
trainable_variables
#layer_metrics
	variables
$non_trainable_variables
%layer_regularization_losses
fd
VARIABLE_VALUEembedding_1/embeddings:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUE
 

0

0
­
regularization_losses

&layers
'metrics
trainable_variables
(layer_metrics
	variables
)non_trainable_variables
*layer_regularization_losses
 
 
 
­
regularization_losses

+layers
,metrics
trainable_variables
-layer_metrics
	variables
.non_trainable_variables
/layer_regularization_losses
 
*
0
1
2
3
4
5

00
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
4
	1total
	2count
3	variables
4	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

10
21

3	variables

VARIABLE_VALUEembedding/embeddings/mVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEembedding_1/embeddings/mVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEembedding/embeddings/vVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEembedding_1/embeddings/vVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
z
serving_default_input_1Placeholder*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ
z
serving_default_input_2Placeholder*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ

StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1serving_default_input_2embedding/embeddingsembedding_1/embeddings*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *-
f(R&
$__inference_signature_wrapper_254773
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
æ
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename(embedding/embeddings/Read/ReadVariableOp*embedding_1/embeddings/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*embedding/embeddings/m/Read/ReadVariableOp,embedding_1/embeddings/m/Read/ReadVariableOp*embedding/embeddings/v/Read/ReadVariableOp,embedding_1/embeddings/v/Read/ReadVariableOpConst*
Tin
2
*
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
GPU2*0J 8 *(
f#R!
__inference__traced_save_254934
Á
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameembedding/embeddingsembedding_1/embeddingstotalcountembedding/embeddings/membedding_1/embeddings/membedding/embeddings/vembedding_1/embeddings/v*
Tin
2	*
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
GPU2*0J 8 *+
f&R$
"__inference__traced_restore_254968ï×
«
©
&__inference_model_layer_call_fn_254837
inputs_0
inputs_1
unknown:	°`
	unknown_0:	`
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_model_layer_call_and_return_conditional_losses_2547182
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/1
¥
§
&__inference_model_layer_call_fn_254735
input_1
input_2
unknown:	°`
	unknown_0:	`
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_1input_2unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_model_layer_call_and_return_conditional_losses_2547182
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_1:PL
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_2


*__inference_embedding_layer_call_fn_254854

inputs
unknown:	°`
identity¢StatefulPartitionedCallï
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_embedding_layer_call_and_return_conditional_losses_2546312
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ò
P
$__inference_dot_layer_call_fn_254886
inputs_0
inputs_1
identityÑ
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *H
fCRA
?__inference_dot_layer_call_and_return_conditional_losses_2546582
PartitionedCallp
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`:U Q
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
"
_user_specified_name
inputs/0:UQ
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
"
_user_specified_name
inputs/1


¥
G__inference_embedding_1_layer_call_and_return_conditional_losses_254864

inputs*
embedding_lookup_254858:	`
identity¢embedding_lookup]
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Castý
embedding_lookupResourceGatherembedding_lookup_254858Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0**
_class 
loc:@embedding_lookup/254858*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`*
dtype02
embedding_lookupí
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0**
_class 
loc:@embedding_lookup/254858*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
embedding_lookup/Identity 
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
embedding_lookup/Identity_1
IdentityIdentity$embedding_lookup/Identity_1:output:0^embedding_lookup*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


£
E__inference_embedding_layer_call_and_return_conditional_losses_254847

inputs*
embedding_lookup_254841:	°`
identity¢embedding_lookup]
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Castý
embedding_lookupResourceGatherembedding_lookup_254841Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0**
_class 
loc:@embedding_lookup/254841*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`*
dtype02
embedding_lookupí
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0**
_class 
loc:@embedding_lookup/254841*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
embedding_lookup/Identity 
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
embedding_lookup/Identity_1
IdentityIdentity$embedding_lookup/Identity_1:output:0^embedding_lookup*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ã

A__inference_model_layer_call_and_return_conditional_losses_254662

inputs
inputs_1#
embedding_254632:	°`%
embedding_1_254646:	`
identity¢!embedding/StatefulPartitionedCall¢#embedding_1/StatefulPartitionedCall
!embedding/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_254632*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_embedding_layer_call_and_return_conditional_losses_2546312#
!embedding/StatefulPartitionedCall
#embedding_1/StatefulPartitionedCallStatefulPartitionedCallinputs_1embedding_1_254646*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_embedding_1_layer_call_and_return_conditional_losses_2546452%
#embedding_1/StatefulPartitionedCall
dot/PartitionedCallPartitionedCall*embedding/StatefulPartitionedCall:output:0,embedding_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *H
fCRA
?__inference_dot_layer_call_and_return_conditional_losses_2546582
dot/PartitionedCall
tf.math.sigmoid/SigmoidSigmoiddot/PartitionedCall:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
tf.math.sigmoid/Sigmoid½
IdentityIdentitytf.math.sigmoid/Sigmoid:y:0"^embedding/StatefulPartitionedCall$^embedding_1/StatefulPartitionedCall*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : 2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2J
#embedding_1/StatefulPartitionedCall#embedding_1/StatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Æ
k
?__inference_dot_layer_call_and_return_conditional_losses_254880
inputs_0
inputs_1
identityu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm|
	transpose	Transposeinputs_1transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
	transposep
MatMulBatchMatMulV2inputs_0transpose:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMulM
ShapeShapeMatMul:output:0*
T0*
_output_shapes
:2
Shapeg
IdentityIdentityMatMul:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`:U Q
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
"
_user_specified_name
inputs/0:UQ
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
"
_user_specified_name
inputs/1
¾
i
?__inference_dot_layer_call_and_return_conditional_losses_254658

inputs
inputs_1
identityu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm|
	transpose	Transposeinputs_1transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
	transposen
MatMulBatchMatMulV2inputstranspose:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMulM
ShapeShapeMatMul:output:0*
T0*
_output_shapes
:2
Shapeg
IdentityIdentityMatMul:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:ÿÿÿÿÿÿÿÿÿ`:ÿÿÿÿÿÿÿÿÿ`:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
 
_user_specified_nameinputs:SO
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
 
_user_specified_nameinputs
± 

__inference__traced_save_254934
file_prefix3
/savev2_embedding_embeddings_read_readvariableop5
1savev2_embedding_1_embeddings_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_embedding_embeddings_m_read_readvariableop7
3savev2_embedding_1_embeddings_m_read_readvariableop5
1savev2_embedding_embeddings_v_read_readvariableop7
3savev2_embedding_1_embeddings_v_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpoints
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard¦
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilenameå
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:	*
dtype0*÷
valueíBê	B:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:	*
dtype0*%
valueB	B B B B B B B B B 2
SaveV2/shape_and_slicesº
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0/savev2_embedding_embeddings_read_readvariableop1savev2_embedding_1_embeddings_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_embedding_embeddings_m_read_readvariableop3savev2_embedding_1_embeddings_m_read_readvariableop1savev2_embedding_embeddings_v_read_readvariableop3savev2_embedding_1_embeddings_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
2	2
SaveV2º
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes¡
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*]
_input_shapesL
J: :	°`:	`: : :	°`:	`:	°`:	`: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	°`:%!

_output_shapes
:	`:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	°`:%!

_output_shapes
:	`:%!

_output_shapes
:	°`:%!

_output_shapes
:	`:	

_output_shapes
: 


,__inference_embedding_1_layer_call_fn_254871

inputs
unknown:	`
identity¢StatefulPartitionedCallñ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_embedding_1_layer_call_and_return_conditional_losses_2546452
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ã

A__inference_model_layer_call_and_return_conditional_losses_254718

inputs
inputs_1#
embedding_254709:	°`%
embedding_1_254712:	`
identity¢!embedding/StatefulPartitionedCall¢#embedding_1/StatefulPartitionedCall
!embedding/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_254709*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_embedding_layer_call_and_return_conditional_losses_2546312#
!embedding/StatefulPartitionedCall
#embedding_1/StatefulPartitionedCallStatefulPartitionedCallinputs_1embedding_1_254712*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_embedding_1_layer_call_and_return_conditional_losses_2546452%
#embedding_1/StatefulPartitionedCall
dot/PartitionedCallPartitionedCall*embedding/StatefulPartitionedCall:output:0,embedding_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *H
fCRA
?__inference_dot_layer_call_and_return_conditional_losses_2546582
dot/PartitionedCall
tf.math.sigmoid/SigmoidSigmoiddot/PartitionedCall:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
tf.math.sigmoid/Sigmoid½
IdentityIdentitytf.math.sigmoid/Sigmoid:y:0"^embedding/StatefulPartitionedCall$^embedding_1/StatefulPartitionedCall*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : 2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2J
#embedding_1/StatefulPartitionedCall#embedding_1/StatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
å

A__inference_model_layer_call_and_return_conditional_losses_254748
input_1
input_2#
embedding_254739:	°`%
embedding_1_254742:	`
identity¢!embedding/StatefulPartitionedCall¢#embedding_1/StatefulPartitionedCall
!embedding/StatefulPartitionedCallStatefulPartitionedCallinput_1embedding_254739*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_embedding_layer_call_and_return_conditional_losses_2546312#
!embedding/StatefulPartitionedCall
#embedding_1/StatefulPartitionedCallStatefulPartitionedCallinput_2embedding_1_254742*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_embedding_1_layer_call_and_return_conditional_losses_2546452%
#embedding_1/StatefulPartitionedCall
dot/PartitionedCallPartitionedCall*embedding/StatefulPartitionedCall:output:0,embedding_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *H
fCRA
?__inference_dot_layer_call_and_return_conditional_losses_2546582
dot/PartitionedCall
tf.math.sigmoid/SigmoidSigmoiddot/PartitionedCall:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
tf.math.sigmoid/Sigmoid½
IdentityIdentitytf.math.sigmoid/Sigmoid:y:0"^embedding/StatefulPartitionedCall$^embedding_1/StatefulPartitionedCall*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : 2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2J
#embedding_1/StatefulPartitionedCall#embedding_1/StatefulPartitionedCall:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_1:PL
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_2
Î

A__inference_model_layer_call_and_return_conditional_losses_254795
inputs_0
inputs_14
!embedding_embedding_lookup_254778:	°`6
#embedding_1_embedding_lookup_254784:	`
identity¢embedding/embedding_lookup¢embedding_1/embedding_lookups
embedding/CastCastinputs_0*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
embedding/Cast¯
embedding/embedding_lookupResourceGather!embedding_embedding_lookup_254778embedding/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*4
_class*
(&loc:@embedding/embedding_lookup/254778*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`*
dtype02
embedding/embedding_lookup
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*4
_class*
(&loc:@embedding/embedding_lookup/254778*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2%
#embedding/embedding_lookup/Identity¾
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2'
%embedding/embedding_lookup/Identity_1w
embedding_1/CastCastinputs_1*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
embedding_1/Cast¹
embedding_1/embedding_lookupResourceGather#embedding_1_embedding_lookup_254784embedding_1/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*6
_class,
*(loc:@embedding_1/embedding_lookup/254784*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`*
dtype02
embedding_1/embedding_lookup
%embedding_1/embedding_lookup/IdentityIdentity%embedding_1/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*6
_class,
*(loc:@embedding_1/embedding_lookup/254784*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2'
%embedding_1/embedding_lookup/IdentityÄ
'embedding_1/embedding_lookup/Identity_1Identity.embedding_1/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2)
'embedding_1/embedding_lookup/Identity_1}
dot/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
dot/transpose/perm°
dot/transpose	Transpose0embedding_1/embedding_lookup/Identity_1:output:0dot/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
dot/transpose¢

dot/MatMulBatchMatMulV2.embedding/embedding_lookup/Identity_1:output:0dot/transpose:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

dot/MatMulY
	dot/ShapeShapedot/MatMul:output:0*
T0*
_output_shapes
:2
	dot/Shape
tf.math.sigmoid/SigmoidSigmoiddot/MatMul:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
tf.math.sigmoid/Sigmoid¯
IdentityIdentitytf.math.sigmoid/Sigmoid:y:0^embedding/embedding_lookup^embedding_1/embedding_lookup*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : 28
embedding/embedding_lookupembedding/embedding_lookup2<
embedding_1/embedding_lookupembedding_1/embedding_lookup:Q M
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/1
å

A__inference_model_layer_call_and_return_conditional_losses_254761
input_1
input_2#
embedding_254752:	°`%
embedding_1_254755:	`
identity¢!embedding/StatefulPartitionedCall¢#embedding_1/StatefulPartitionedCall
!embedding/StatefulPartitionedCallStatefulPartitionedCallinput_1embedding_254752*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_embedding_layer_call_and_return_conditional_losses_2546312#
!embedding/StatefulPartitionedCall
#embedding_1/StatefulPartitionedCallStatefulPartitionedCallinput_2embedding_1_254755*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_embedding_1_layer_call_and_return_conditional_losses_2546452%
#embedding_1/StatefulPartitionedCall
dot/PartitionedCallPartitionedCall*embedding/StatefulPartitionedCall:output:0,embedding_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *H
fCRA
?__inference_dot_layer_call_and_return_conditional_losses_2546582
dot/PartitionedCall
tf.math.sigmoid/SigmoidSigmoiddot/PartitionedCall:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
tf.math.sigmoid/Sigmoid½
IdentityIdentitytf.math.sigmoid/Sigmoid:y:0"^embedding/StatefulPartitionedCall$^embedding_1/StatefulPartitionedCall*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : 2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2J
#embedding_1/StatefulPartitionedCall#embedding_1/StatefulPartitionedCall:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_1:PL
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_2
(
ª
"__inference__traced_restore_254968
file_prefix8
%assignvariableop_embedding_embeddings:	°`<
)assignvariableop_1_embedding_1_embeddings:	`"
assignvariableop_2_total: "
assignvariableop_3_count: <
)assignvariableop_4_embedding_embeddings_m:	°`>
+assignvariableop_5_embedding_1_embeddings_m:	`<
)assignvariableop_6_embedding_embeddings_v:	°`>
+assignvariableop_7_embedding_1_embeddings_v:	`

identity_9¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_2¢AssignVariableOp_3¢AssignVariableOp_4¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7ë
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:	*
dtype0*÷
valueíBê	B:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names 
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:	*
dtype0*%
valueB	B B B B B B B B B 2
RestoreV2/shape_and_slicesØ
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*8
_output_shapes&
$:::::::::*
dtypes
2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity¤
AssignVariableOpAssignVariableOp%assignvariableop_embedding_embeddingsIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1®
AssignVariableOp_1AssignVariableOp)assignvariableop_1_embedding_1_embeddingsIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2
AssignVariableOp_2AssignVariableOpassignvariableop_2_totalIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3
AssignVariableOp_3AssignVariableOpassignvariableop_3_countIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4®
AssignVariableOp_4AssignVariableOp)assignvariableop_4_embedding_embeddings_mIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5°
AssignVariableOp_5AssignVariableOp+assignvariableop_5_embedding_1_embeddings_mIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6®
AssignVariableOp_6AssignVariableOp)assignvariableop_6_embedding_embeddings_vIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7°
AssignVariableOp_7AssignVariableOp+assignvariableop_7_embedding_1_embeddings_vIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_79
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp

Identity_8Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_8

Identity_9IdentityIdentity_8:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7*
T0*
_output_shapes
: 2

Identity_9"!

identity_9Identity_9:output:0*%
_input_shapes
: : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_7:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix


£
E__inference_embedding_layer_call_and_return_conditional_losses_254631

inputs*
embedding_lookup_254625:	°`
identity¢embedding_lookup]
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Castý
embedding_lookupResourceGatherembedding_lookup_254625Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0**
_class 
loc:@embedding_lookup/254625*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`*
dtype02
embedding_lookupí
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0**
_class 
loc:@embedding_lookup/254625*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
embedding_lookup/Identity 
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
embedding_lookup/Identity_1
IdentityIdentity$embedding_lookup/Identity_1:output:0^embedding_lookup*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


¥
G__inference_embedding_1_layer_call_and_return_conditional_losses_254645

inputs*
embedding_lookup_254639:	`
identity¢embedding_lookup]
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Castý
embedding_lookupResourceGatherembedding_lookup_254639Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0**
_class 
loc:@embedding_lookup/254639*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`*
dtype02
embedding_lookupí
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0**
_class 
loc:@embedding_lookup/254639*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
embedding_lookup/Identity 
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
embedding_lookup/Identity_1
IdentityIdentity$embedding_lookup/Identity_1:output:0^embedding_lookup*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Î

A__inference_model_layer_call_and_return_conditional_losses_254817
inputs_0
inputs_14
!embedding_embedding_lookup_254800:	°`6
#embedding_1_embedding_lookup_254806:	`
identity¢embedding/embedding_lookup¢embedding_1/embedding_lookups
embedding/CastCastinputs_0*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
embedding/Cast¯
embedding/embedding_lookupResourceGather!embedding_embedding_lookup_254800embedding/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*4
_class*
(&loc:@embedding/embedding_lookup/254800*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`*
dtype02
embedding/embedding_lookup
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*4
_class*
(&loc:@embedding/embedding_lookup/254800*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2%
#embedding/embedding_lookup/Identity¾
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2'
%embedding/embedding_lookup/Identity_1w
embedding_1/CastCastinputs_1*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
embedding_1/Cast¹
embedding_1/embedding_lookupResourceGather#embedding_1_embedding_lookup_254806embedding_1/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*6
_class,
*(loc:@embedding_1/embedding_lookup/254806*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`*
dtype02
embedding_1/embedding_lookup
%embedding_1/embedding_lookup/IdentityIdentity%embedding_1/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*6
_class,
*(loc:@embedding_1/embedding_lookup/254806*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2'
%embedding_1/embedding_lookup/IdentityÄ
'embedding_1/embedding_lookup/Identity_1Identity.embedding_1/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2)
'embedding_1/embedding_lookup/Identity_1}
dot/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
dot/transpose/perm°
dot/transpose	Transpose0embedding_1/embedding_lookup/Identity_1:output:0dot/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
dot/transpose¢

dot/MatMulBatchMatMulV2.embedding/embedding_lookup/Identity_1:output:0dot/transpose:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

dot/MatMulY
	dot/ShapeShapedot/MatMul:output:0*
T0*
_output_shapes
:2
	dot/Shape
tf.math.sigmoid/SigmoidSigmoiddot/MatMul:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
tf.math.sigmoid/Sigmoid¯
IdentityIdentitytf.math.sigmoid/Sigmoid:y:0^embedding/embedding_lookup^embedding_1/embedding_lookup*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : 28
embedding/embedding_lookupembedding/embedding_lookup2<
embedding_1/embedding_lookupembedding_1/embedding_lookup:Q M
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/1
¥
§
&__inference_model_layer_call_fn_254669
input_1
input_2
unknown:	°`
	unknown_0:	`
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_1input_2unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_model_layer_call_and_return_conditional_losses_2546622
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_1:PL
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_2
ô

!__inference__wrapped_model_254612
input_1
input_2:
'model_embedding_embedding_lookup_254595:	°`<
)model_embedding_1_embedding_lookup_254601:	`
identity¢ model/embedding/embedding_lookup¢"model/embedding_1/embedding_lookup~
model/embedding/CastCastinput_1*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model/embedding/CastÍ
 model/embedding/embedding_lookupResourceGather'model_embedding_embedding_lookup_254595model/embedding/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*:
_class0
.,loc:@model/embedding/embedding_lookup/254595*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`*
dtype02"
 model/embedding/embedding_lookup­
)model/embedding/embedding_lookup/IdentityIdentity)model/embedding/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*:
_class0
.,loc:@model/embedding/embedding_lookup/254595*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2+
)model/embedding/embedding_lookup/IdentityÐ
+model/embedding/embedding_lookup/Identity_1Identity2model/embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2-
+model/embedding/embedding_lookup/Identity_1
model/embedding_1/CastCastinput_2*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model/embedding_1/Cast×
"model/embedding_1/embedding_lookupResourceGather)model_embedding_1_embedding_lookup_254601model/embedding_1/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*<
_class2
0.loc:@model/embedding_1/embedding_lookup/254601*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`*
dtype02$
"model/embedding_1/embedding_lookupµ
+model/embedding_1/embedding_lookup/IdentityIdentity+model/embedding_1/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*<
_class2
0.loc:@model/embedding_1/embedding_lookup/254601*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2-
+model/embedding_1/embedding_lookup/IdentityÖ
-model/embedding_1/embedding_lookup/Identity_1Identity4model/embedding_1/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2/
-model/embedding_1/embedding_lookup/Identity_1
model/dot/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
model/dot/transpose/permÈ
model/dot/transpose	Transpose6model/embedding_1/embedding_lookup/Identity_1:output:0!model/dot/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`2
model/dot/transposeº
model/dot/MatMulBatchMatMulV24model/embedding/embedding_lookup/Identity_1:output:0model/dot/transpose:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model/dot/MatMulk
model/dot/ShapeShapemodel/dot/MatMul:output:0*
T0*
_output_shapes
:2
model/dot/Shape
model/tf.math.sigmoid/SigmoidSigmoidmodel/dot/MatMul:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model/tf.math.sigmoid/SigmoidÁ
IdentityIdentity!model/tf.math.sigmoid/Sigmoid:y:0!^model/embedding/embedding_lookup#^model/embedding_1/embedding_lookup*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : 2D
 model/embedding/embedding_lookup model/embedding/embedding_lookup2H
"model/embedding_1/embedding_lookup"model/embedding_1/embedding_lookup:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_1:PL
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_2

¥
$__inference_signature_wrapper_254773
input_1
input_2
unknown:	°`
	unknown_0:	`
identity¢StatefulPartitionedCallã
StatefulPartitionedCallStatefulPartitionedCallinput_1input_2unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 **
f%R#
!__inference__wrapped_model_2546122
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_1:PL
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_2
«
©
&__inference_model_layer_call_fn_254827
inputs_0
inputs_1
unknown:	°`
	unknown_0:	`
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_model_layer_call_and_return_conditional_losses_2546622
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/1"ÌL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*ó
serving_defaultß
;
input_10
serving_default_input_1:0ÿÿÿÿÿÿÿÿÿ
;
input_20
serving_default_input_2:0ÿÿÿÿÿÿÿÿÿG
tf.math.sigmoid4
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:®
Ó/
layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
layer-4
layer-5
	optimizer
regularization_losses
	trainable_variables

	variables
	keras_api

signatures
*9&call_and_return_all_conditional_losses
:__call__
;_default_save_signature"-
_tf_keras_networkê,{"name": "model", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Functional", "config": {"name": "model", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_1"}, "name": "input_1", "inbound_nodes": []}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_2"}, "name": "input_2", "inbound_nodes": []}, {"class_name": "Embedding", "config": {"name": "embedding", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "input_dim": 944, "output_dim": 96, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": null}, "name": "embedding", "inbound_nodes": [[["input_1", 0, 0, {}]]]}, {"class_name": "Embedding", "config": {"name": "embedding_1", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "input_dim": 1683, "output_dim": 96, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": null}, "name": "embedding_1", "inbound_nodes": [[["input_2", 0, 0, {}]]]}, {"class_name": "Dot", "config": {"name": "dot", "trainable": true, "dtype": "float32", "axes": 2, "normalize": false}, "name": "dot", "inbound_nodes": [[["embedding", 0, 0, {}], ["embedding_1", 0, 0, {}]]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.sigmoid", "trainable": true, "dtype": "float32", "function": "math.sigmoid"}, "name": "tf.math.sigmoid", "inbound_nodes": [["dot", 0, 0, {}]]}], "input_layers": [["input_1", 0, 0], ["input_2", 0, 0]], "output_layers": [["tf.math.sigmoid", 0, 0]]}, "shared_object_id": 8, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 1]}, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}, {"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 1]}, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": [{"class_name": "TensorShape", "items": [null, 1]}, {"class_name": "TensorShape", "items": [null, 1]}], "is_graph_network": true, "save_spec": [{"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 1]}, "float32", "input_1"]}, {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 1]}, "float32", "input_2"]}], "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "model", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_1"}, "name": "input_1", "inbound_nodes": [], "shared_object_id": 0}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_2"}, "name": "input_2", "inbound_nodes": [], "shared_object_id": 1}, {"class_name": "Embedding", "config": {"name": "embedding", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "input_dim": 944, "output_dim": 96, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}, "shared_object_id": 2}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": null}, "name": "embedding", "inbound_nodes": [[["input_1", 0, 0, {}]]], "shared_object_id": 3}, {"class_name": "Embedding", "config": {"name": "embedding_1", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "input_dim": 1683, "output_dim": 96, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}, "shared_object_id": 4}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": null}, "name": "embedding_1", "inbound_nodes": [[["input_2", 0, 0, {}]]], "shared_object_id": 5}, {"class_name": "Dot", "config": {"name": "dot", "trainable": true, "dtype": "float32", "axes": 2, "normalize": false}, "name": "dot", "inbound_nodes": [[["embedding", 0, 0, {}], ["embedding_1", 0, 0, {}]]], "shared_object_id": 6}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.sigmoid", "trainable": true, "dtype": "float32", "function": "math.sigmoid"}, "name": "tf.math.sigmoid", "inbound_nodes": [["dot", 0, 0, {}]], "shared_object_id": 7}], "input_layers": [["input_1", 0, 0], ["input_2", 0, 0]], "output_layers": [["tf.math.sigmoid", 0, 0]]}}, "training_config": {"loss": "binary_crossentropy", "metrics": null, "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.002355722884342646, "decay": 0.0, "beta_1": 0.9, "beta_2": 0.999, "epsilon": 1e-07, "amsgrad": false}}}}
é"æ
_tf_keras_input_layerÆ{"class_name": "InputLayer", "name": "input_1", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_1"}}
é"æ
_tf_keras_input_layerÆ{"class_name": "InputLayer", "name": "input_2", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_2"}}


embeddings
regularization_losses
trainable_variables
	variables
	keras_api
*<&call_and_return_all_conditional_losses
=__call__"ã
_tf_keras_layerÉ{"name": "embedding", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "stateful": false, "must_restore_from_config": false, "class_name": "Embedding", "config": {"name": "embedding", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "input_dim": 944, "output_dim": 96, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}, "shared_object_id": 2}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": null}, "inbound_nodes": [[["input_1", 0, 0, {}]]], "shared_object_id": 3, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1]}}


embeddings
regularization_losses
trainable_variables
	variables
	keras_api
*>&call_and_return_all_conditional_losses
?__call__"è
_tf_keras_layerÎ{"name": "embedding_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "stateful": false, "must_restore_from_config": false, "class_name": "Embedding", "config": {"name": "embedding_1", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "input_dim": 1683, "output_dim": 96, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}, "shared_object_id": 4}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": null}, "inbound_nodes": [[["input_2", 0, 0, {}]]], "shared_object_id": 5, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1]}}
ª
regularization_losses
trainable_variables
	variables
	keras_api
*@&call_and_return_all_conditional_losses
A__call__"
_tf_keras_layer{"name": "dot", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dot", "config": {"name": "dot", "trainable": true, "dtype": "float32", "axes": 2, "normalize": false}, "inbound_nodes": [[["embedding", 0, 0, {}], ["embedding_1", 0, 0, {}]]], "shared_object_id": 6, "build_input_shape": [{"class_name": "TensorShape", "items": [null, 1, 96]}, {"class_name": "TensorShape", "items": [null, 1, 96]}]}
 
	keras_api"
_tf_keras_layerô{"name": "tf.math.sigmoid", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.sigmoid", "trainable": true, "dtype": "float32", "function": "math.sigmoid"}, "inbound_nodes": [["dot", 0, 0, {}]], "shared_object_id": 7}
7m5m6v7v8"
	optimizer
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
Ê
regularization_losses
	trainable_variables

layers
metrics
layer_metrics

	variables
non_trainable_variables
 layer_regularization_losses
:__call__
;_default_save_signature
*9&call_and_return_all_conditional_losses
&9"call_and_return_conditional_losses"
_generic_user_object
,
Bserving_default"
signature_map
':%	°`2embedding/embeddings
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
­
regularization_losses

!layers
"metrics
trainable_variables
#layer_metrics
	variables
$non_trainable_variables
%layer_regularization_losses
=__call__
*<&call_and_return_all_conditional_losses
&<"call_and_return_conditional_losses"
_generic_user_object
):'	`2embedding_1/embeddings
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
­
regularization_losses

&layers
'metrics
trainable_variables
(layer_metrics
	variables
)non_trainable_variables
*layer_regularization_losses
?__call__
*>&call_and_return_all_conditional_losses
&>"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
regularization_losses

+layers
,metrics
trainable_variables
-layer_metrics
	variables
.non_trainable_variables
/layer_regularization_losses
A__call__
*@&call_and_return_all_conditional_losses
&@"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
J
0
1
2
3
4
5"
trackable_list_wrapper
'
00"
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
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Ô
	1total
	2count
3	variables
4	keras_api"
_tf_keras_metric{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 11}
:  (2total
:  (2count
.
10
21"
trackable_list_wrapper
-
3	variables"
_generic_user_object
':%	°`2embedding/embeddings/m
):'	`2embedding_1/embeddings/m
':%	°`2embedding/embeddings/v
):'	`2embedding_1/embeddings/v
Ò2Ï
A__inference_model_layer_call_and_return_conditional_losses_254795
A__inference_model_layer_call_and_return_conditional_losses_254817
A__inference_model_layer_call_and_return_conditional_losses_254748
A__inference_model_layer_call_and_return_conditional_losses_254761À
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
æ2ã
&__inference_model_layer_call_fn_254669
&__inference_model_layer_call_fn_254827
&__inference_model_layer_call_fn_254837
&__inference_model_layer_call_fn_254735À
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
2
!__inference__wrapped_model_254612Þ
²
FullArgSpec
args 
varargsjargs
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *N¢K
IF
!
input_1ÿÿÿÿÿÿÿÿÿ
!
input_2ÿÿÿÿÿÿÿÿÿ
ï2ì
E__inference_embedding_layer_call_and_return_conditional_losses_254847¢
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
Ô2Ñ
*__inference_embedding_layer_call_fn_254854¢
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
ñ2î
G__inference_embedding_1_layer_call_and_return_conditional_losses_254864¢
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
Ö2Ó
,__inference_embedding_1_layer_call_fn_254871¢
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
é2æ
?__inference_dot_layer_call_and_return_conditional_losses_254880¢
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
Î2Ë
$__inference_dot_layer_call_fn_254886¢
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
ÒBÏ
$__inference_signature_wrapper_254773input_1input_2"
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
 Ë
!__inference__wrapped_model_254612¥X¢U
N¢K
IF
!
input_1ÿÿÿÿÿÿÿÿÿ
!
input_2ÿÿÿÿÿÿÿÿÿ
ª "EªB
@
tf.math.sigmoid-*
tf.math.sigmoidÿÿÿÿÿÿÿÿÿÓ
?__inference_dot_layer_call_and_return_conditional_losses_254880b¢_
X¢U
SP
&#
inputs/0ÿÿÿÿÿÿÿÿÿ`
&#
inputs/1ÿÿÿÿÿÿÿÿÿ`
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 «
$__inference_dot_layer_call_fn_254886b¢_
X¢U
SP
&#
inputs/0ÿÿÿÿÿÿÿÿÿ`
&#
inputs/1ÿÿÿÿÿÿÿÿÿ`
ª "ÿÿÿÿÿÿÿÿÿª
G__inference_embedding_1_layer_call_and_return_conditional_losses_254864_/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ`
 
,__inference_embedding_1_layer_call_fn_254871R/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ`¨
E__inference_embedding_layer_call_and_return_conditional_losses_254847_/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ`
 
*__inference_embedding_layer_call_fn_254854R/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ`×
A__inference_model_layer_call_and_return_conditional_losses_254748`¢]
V¢S
IF
!
input_1ÿÿÿÿÿÿÿÿÿ
!
input_2ÿÿÿÿÿÿÿÿÿ
p 

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 ×
A__inference_model_layer_call_and_return_conditional_losses_254761`¢]
V¢S
IF
!
input_1ÿÿÿÿÿÿÿÿÿ
!
input_2ÿÿÿÿÿÿÿÿÿ
p

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 Ù
A__inference_model_layer_call_and_return_conditional_losses_254795b¢_
X¢U
KH
"
inputs/0ÿÿÿÿÿÿÿÿÿ
"
inputs/1ÿÿÿÿÿÿÿÿÿ
p 

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 Ù
A__inference_model_layer_call_and_return_conditional_losses_254817b¢_
X¢U
KH
"
inputs/0ÿÿÿÿÿÿÿÿÿ
"
inputs/1ÿÿÿÿÿÿÿÿÿ
p

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 ¯
&__inference_model_layer_call_fn_254669`¢]
V¢S
IF
!
input_1ÿÿÿÿÿÿÿÿÿ
!
input_2ÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ¯
&__inference_model_layer_call_fn_254735`¢]
V¢S
IF
!
input_1ÿÿÿÿÿÿÿÿÿ
!
input_2ÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ±
&__inference_model_layer_call_fn_254827b¢_
X¢U
KH
"
inputs/0ÿÿÿÿÿÿÿÿÿ
"
inputs/1ÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ±
&__inference_model_layer_call_fn_254837b¢_
X¢U
KH
"
inputs/0ÿÿÿÿÿÿÿÿÿ
"
inputs/1ÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿß
$__inference_signature_wrapper_254773¶i¢f
¢ 
_ª\
,
input_1!
input_1ÿÿÿÿÿÿÿÿÿ
,
input_2!
input_2ÿÿÿÿÿÿÿÿÿ"EªB
@
tf.math.sigmoid-*
tf.math.sigmoidÿÿÿÿÿÿÿÿÿ
       �K"	  �����Abrain.Event:2��/��*     �~�	9𥌉��A"��
p
PlaceholderPlaceholder*
shape:����������*
dtype0*(
_output_shapes
:����������
R
Placeholder_1Placeholder*
dtype0*
_output_shapes
:*
shape:
h
Placeholder_2Placeholder*
dtype0*#
_output_shapes
:���������*
shape:���������
h
Placeholder_3Placeholder*
dtype0*#
_output_shapes
:���������*
shape:���������
h
Placeholder_4Placeholder*
dtype0*#
_output_shapes
:���������*
shape:���������
O
ConstConst*
valueB: *
dtype0*
_output_shapes
:
`
MeanMeanPlaceholder_4Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
�
/hidden1/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*!
_class
loc:@hidden1/kernel*
valueB"@  d   
�
-hidden1/kernel/Initializer/random_uniform/minConst*!
_class
loc:@hidden1/kernel*
valueB
 *g���*
dtype0*
_output_shapes
: 
�
-hidden1/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *!
_class
loc:@hidden1/kernel*
valueB
 *g��=
�
7hidden1/kernel/Initializer/random_uniform/RandomUniformRandomUniform/hidden1/kernel/Initializer/random_uniform/shape*

seed *
T0*!
_class
loc:@hidden1/kernel*
seed2 *
dtype0*
_output_shapes
:	�d
�
-hidden1/kernel/Initializer/random_uniform/subSub-hidden1/kernel/Initializer/random_uniform/max-hidden1/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@hidden1/kernel*
_output_shapes
: 
�
-hidden1/kernel/Initializer/random_uniform/mulMul7hidden1/kernel/Initializer/random_uniform/RandomUniform-hidden1/kernel/Initializer/random_uniform/sub*
T0*!
_class
loc:@hidden1/kernel*
_output_shapes
:	�d
�
)hidden1/kernel/Initializer/random_uniformAdd-hidden1/kernel/Initializer/random_uniform/mul-hidden1/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@hidden1/kernel*
_output_shapes
:	�d
�
hidden1/kernel
VariableV2*
dtype0*
_output_shapes
:	�d*
shared_name *!
_class
loc:@hidden1/kernel*
	container *
shape:	�d
�
hidden1/kernel/AssignAssignhidden1/kernel)hidden1/kernel/Initializer/random_uniform*
validate_shape(*
_output_shapes
:	�d*
use_locking(*
T0*!
_class
loc:@hidden1/kernel
|
hidden1/kernel/readIdentityhidden1/kernel*
T0*!
_class
loc:@hidden1/kernel*
_output_shapes
:	�d
�
hidden1/bias/Initializer/zerosConst*
dtype0*
_output_shapes
:d*
_class
loc:@hidden1/bias*
valueBd*    
�
hidden1/bias
VariableV2*
shape:d*
dtype0*
_output_shapes
:d*
shared_name *
_class
loc:@hidden1/bias*
	container 
�
hidden1/bias/AssignAssignhidden1/biashidden1/bias/Initializer/zeros*
T0*
_class
loc:@hidden1/bias*
validate_shape(*
_output_shapes
:d*
use_locking(
q
hidden1/bias/readIdentityhidden1/bias*
_output_shapes
:d*
T0*
_class
loc:@hidden1/bias
�
dnn/hidden1/MatMulMatMulPlaceholderhidden1/kernel/read*
transpose_b( *
T0*'
_output_shapes
:���������d*
transpose_a( 
�
dnn/hidden1/BiasAddBiasAdddnn/hidden1/MatMulhidden1/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:���������d
_
dnn/hidden1/ReluReludnn/hidden1/BiasAdd*
T0*'
_output_shapes
:���������d
�
/hidden2/kernel/Initializer/random_uniform/shapeConst*!
_class
loc:@hidden2/kernel*
valueB"d      *
dtype0*
_output_shapes
:
�
-hidden2/kernel/Initializer/random_uniform/minConst*!
_class
loc:@hidden2/kernel*
valueB
 *��[�*
dtype0*
_output_shapes
: 
�
-hidden2/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *!
_class
loc:@hidden2/kernel*
valueB
 *��[>
�
7hidden2/kernel/Initializer/random_uniform/RandomUniformRandomUniform/hidden2/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes

:d*

seed *
T0*!
_class
loc:@hidden2/kernel*
seed2 
�
-hidden2/kernel/Initializer/random_uniform/subSub-hidden2/kernel/Initializer/random_uniform/max-hidden2/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@hidden2/kernel*
_output_shapes
: 
�
-hidden2/kernel/Initializer/random_uniform/mulMul7hidden2/kernel/Initializer/random_uniform/RandomUniform-hidden2/kernel/Initializer/random_uniform/sub*
T0*!
_class
loc:@hidden2/kernel*
_output_shapes

:d
�
)hidden2/kernel/Initializer/random_uniformAdd-hidden2/kernel/Initializer/random_uniform/mul-hidden2/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@hidden2/kernel*
_output_shapes

:d
�
hidden2/kernel
VariableV2*
dtype0*
_output_shapes

:d*
shared_name *!
_class
loc:@hidden2/kernel*
	container *
shape
:d
�
hidden2/kernel/AssignAssignhidden2/kernel)hidden2/kernel/Initializer/random_uniform*
use_locking(*
T0*!
_class
loc:@hidden2/kernel*
validate_shape(*
_output_shapes

:d
{
hidden2/kernel/readIdentityhidden2/kernel*
T0*!
_class
loc:@hidden2/kernel*
_output_shapes

:d
�
hidden2/bias/Initializer/zerosConst*
_class
loc:@hidden2/bias*
valueB*    *
dtype0*
_output_shapes
:
�
hidden2/bias
VariableV2*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name *
_class
loc:@hidden2/bias
�
hidden2/bias/AssignAssignhidden2/biashidden2/bias/Initializer/zeros*
use_locking(*
T0*
_class
loc:@hidden2/bias*
validate_shape(*
_output_shapes
:
q
hidden2/bias/readIdentityhidden2/bias*
T0*
_class
loc:@hidden2/bias*
_output_shapes
:
�
dnn/hidden2/MatMulMatMuldnn/hidden1/Reluhidden2/kernel/read*
transpose_b( *
T0*'
_output_shapes
:���������*
transpose_a( 
�
dnn/hidden2/BiasAddBiasAdddnn/hidden2/MatMulhidden2/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:���������
_
dnn/hidden2/ReluReludnn/hidden2/BiasAdd*
T0*'
_output_shapes
:���������
�
.output/kernel/Initializer/random_uniform/shapeConst* 
_class
loc:@output/kernel*
valueB"      *
dtype0*
_output_shapes
:
�
,output/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: * 
_class
loc:@output/kernel*
valueB
 *A׾
�
,output/kernel/Initializer/random_uniform/maxConst* 
_class
loc:@output/kernel*
valueB
 *A�>*
dtype0*
_output_shapes
: 
�
6output/kernel/Initializer/random_uniform/RandomUniformRandomUniform.output/kernel/Initializer/random_uniform/shape*

seed *
T0* 
_class
loc:@output/kernel*
seed2 *
dtype0*
_output_shapes

:
�
,output/kernel/Initializer/random_uniform/subSub,output/kernel/Initializer/random_uniform/max,output/kernel/Initializer/random_uniform/min*
T0* 
_class
loc:@output/kernel*
_output_shapes
: 
�
,output/kernel/Initializer/random_uniform/mulMul6output/kernel/Initializer/random_uniform/RandomUniform,output/kernel/Initializer/random_uniform/sub*
T0* 
_class
loc:@output/kernel*
_output_shapes

:
�
(output/kernel/Initializer/random_uniformAdd,output/kernel/Initializer/random_uniform/mul,output/kernel/Initializer/random_uniform/min*
_output_shapes

:*
T0* 
_class
loc:@output/kernel
�
output/kernel
VariableV2*
dtype0*
_output_shapes

:*
shared_name * 
_class
loc:@output/kernel*
	container *
shape
:
�
output/kernel/AssignAssignoutput/kernel(output/kernel/Initializer/random_uniform*
use_locking(*
T0* 
_class
loc:@output/kernel*
validate_shape(*
_output_shapes

:
x
output/kernel/readIdentityoutput/kernel*
T0* 
_class
loc:@output/kernel*
_output_shapes

:
�
output/bias/Initializer/zerosConst*
_class
loc:@output/bias*
valueB*    *
dtype0*
_output_shapes
:
�
output/bias
VariableV2*
_class
loc:@output/bias*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name 
�
output/bias/AssignAssignoutput/biasoutput/bias/Initializer/zeros*
use_locking(*
T0*
_class
loc:@output/bias*
validate_shape(*
_output_shapes
:
n
output/bias/readIdentityoutput/bias*
T0*
_class
loc:@output/bias*
_output_shapes
:
�
output/MatMulMatMuldnn/hidden2/Reluoutput/kernel/read*
T0*'
_output_shapes
:���������*
transpose_a( *
transpose_b( 
�
output/BiasAddBiasAddoutput/MatMuloutput/bias/read*
data_formatNHWC*'
_output_shapes
:���������*
T0
�
.loss/SparseSoftmaxCrossEntropyWithLogits/ShapeShapePlaceholder_1*
T0*
out_type0*#
_output_shapes
:���������
�
Lloss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsoutput/BiasAddPlaceholder_1*6
_output_shapes$
":���������:���������*
Tlabels0*
T0
T

loss/ConstConst*
valueB: *
dtype0*
_output_shapes
:
�
	loss/lossMeanLloss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits
loss/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
X
train/gradients/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
^
train/gradients/grad_ys_0Const*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
train/gradients/FillFilltrain/gradients/Shapetrain/gradients/grad_ys_0*
T0*

index_type0*
_output_shapes
: 
v
,train/gradients/loss/loss_grad/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:
�
&train/gradients/loss/loss_grad/ReshapeReshapetrain/gradients/Fill,train/gradients/loss/loss_grad/Reshape/shape*
_output_shapes
:*
T0*
Tshape0
�
$train/gradients/loss/loss_grad/ShapeShapeLloss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
T0*
out_type0*
_output_shapes
:
�
#train/gradients/loss/loss_grad/TileTile&train/gradients/loss/loss_grad/Reshape$train/gradients/loss/loss_grad/Shape*

Tmultiples0*
T0*#
_output_shapes
:���������
�
&train/gradients/loss/loss_grad/Shape_1ShapeLloss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
T0*
out_type0*
_output_shapes
:
i
&train/gradients/loss/loss_grad/Shape_2Const*
valueB *
dtype0*
_output_shapes
: 
n
$train/gradients/loss/loss_grad/ConstConst*
valueB: *
dtype0*
_output_shapes
:
�
#train/gradients/loss/loss_grad/ProdProd&train/gradients/loss/loss_grad/Shape_1$train/gradients/loss/loss_grad/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
p
&train/gradients/loss/loss_grad/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
�
%train/gradients/loss/loss_grad/Prod_1Prod&train/gradients/loss/loss_grad/Shape_2&train/gradients/loss/loss_grad/Const_1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
j
(train/gradients/loss/loss_grad/Maximum/yConst*
value	B :*
dtype0*
_output_shapes
: 
�
&train/gradients/loss/loss_grad/MaximumMaximum%train/gradients/loss/loss_grad/Prod_1(train/gradients/loss/loss_grad/Maximum/y*
T0*
_output_shapes
: 
�
'train/gradients/loss/loss_grad/floordivFloorDiv#train/gradients/loss/loss_grad/Prod&train/gradients/loss/loss_grad/Maximum*
_output_shapes
: *
T0
�
#train/gradients/loss/loss_grad/CastCast'train/gradients/loss/loss_grad/floordiv*

SrcT0*
_output_shapes
: *

DstT0
�
&train/gradients/loss/loss_grad/truedivRealDiv#train/gradients/loss/loss_grad/Tile#train/gradients/loss/loss_grad/Cast*
T0*#
_output_shapes
:���������
�
train/gradients/zeros_like	ZerosLikeNloss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*
T0*'
_output_shapes
:���������
�
qtrain/gradients/loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientNloss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*�
message��Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*
T0*'
_output_shapes
:���������
�
ptrain/gradients/loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
valueB :
���������*
dtype0*
_output_shapes
: 
�
ltrain/gradients/loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims&train/gradients/loss/loss_grad/truedivptrain/gradients/loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*

Tdim0*
T0*'
_output_shapes
:���������
�
etrain/gradients/loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mulMulltrain/gradients/loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimsqtrain/gradients/loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
T0*'
_output_shapes
:���������
�
/train/gradients/output/BiasAdd_grad/BiasAddGradBiasAddGradetrain/gradients/loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mul*
T0*
data_formatNHWC*
_output_shapes
:
�
4train/gradients/output/BiasAdd_grad/tuple/group_depsNoOpf^train/gradients/loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mul0^train/gradients/output/BiasAdd_grad/BiasAddGrad
�
<train/gradients/output/BiasAdd_grad/tuple/control_dependencyIdentityetrain/gradients/loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mul5^train/gradients/output/BiasAdd_grad/tuple/group_deps*
T0*x
_classn
ljloc:@train/gradients/loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mul*'
_output_shapes
:���������
�
>train/gradients/output/BiasAdd_grad/tuple/control_dependency_1Identity/train/gradients/output/BiasAdd_grad/BiasAddGrad5^train/gradients/output/BiasAdd_grad/tuple/group_deps*
T0*B
_class8
64loc:@train/gradients/output/BiasAdd_grad/BiasAddGrad*
_output_shapes
:
�
)train/gradients/output/MatMul_grad/MatMulMatMul<train/gradients/output/BiasAdd_grad/tuple/control_dependencyoutput/kernel/read*
T0*'
_output_shapes
:���������*
transpose_a( *
transpose_b(
�
+train/gradients/output/MatMul_grad/MatMul_1MatMuldnn/hidden2/Relu<train/gradients/output/BiasAdd_grad/tuple/control_dependency*
T0*
_output_shapes

:*
transpose_a(*
transpose_b( 
�
3train/gradients/output/MatMul_grad/tuple/group_depsNoOp*^train/gradients/output/MatMul_grad/MatMul,^train/gradients/output/MatMul_grad/MatMul_1
�
;train/gradients/output/MatMul_grad/tuple/control_dependencyIdentity)train/gradients/output/MatMul_grad/MatMul4^train/gradients/output/MatMul_grad/tuple/group_deps*'
_output_shapes
:���������*
T0*<
_class2
0.loc:@train/gradients/output/MatMul_grad/MatMul
�
=train/gradients/output/MatMul_grad/tuple/control_dependency_1Identity+train/gradients/output/MatMul_grad/MatMul_14^train/gradients/output/MatMul_grad/tuple/group_deps*
T0*>
_class4
20loc:@train/gradients/output/MatMul_grad/MatMul_1*
_output_shapes

:
�
.train/gradients/dnn/hidden2/Relu_grad/ReluGradReluGrad;train/gradients/output/MatMul_grad/tuple/control_dependencydnn/hidden2/Relu*
T0*'
_output_shapes
:���������
�
4train/gradients/dnn/hidden2/BiasAdd_grad/BiasAddGradBiasAddGrad.train/gradients/dnn/hidden2/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
:
�
9train/gradients/dnn/hidden2/BiasAdd_grad/tuple/group_depsNoOp5^train/gradients/dnn/hidden2/BiasAdd_grad/BiasAddGrad/^train/gradients/dnn/hidden2/Relu_grad/ReluGrad
�
Atrain/gradients/dnn/hidden2/BiasAdd_grad/tuple/control_dependencyIdentity.train/gradients/dnn/hidden2/Relu_grad/ReluGrad:^train/gradients/dnn/hidden2/BiasAdd_grad/tuple/group_deps*
T0*A
_class7
53loc:@train/gradients/dnn/hidden2/Relu_grad/ReluGrad*'
_output_shapes
:���������
�
Ctrain/gradients/dnn/hidden2/BiasAdd_grad/tuple/control_dependency_1Identity4train/gradients/dnn/hidden2/BiasAdd_grad/BiasAddGrad:^train/gradients/dnn/hidden2/BiasAdd_grad/tuple/group_deps*
T0*G
_class=
;9loc:@train/gradients/dnn/hidden2/BiasAdd_grad/BiasAddGrad*
_output_shapes
:
�
.train/gradients/dnn/hidden2/MatMul_grad/MatMulMatMulAtrain/gradients/dnn/hidden2/BiasAdd_grad/tuple/control_dependencyhidden2/kernel/read*
T0*'
_output_shapes
:���������d*
transpose_a( *
transpose_b(
�
0train/gradients/dnn/hidden2/MatMul_grad/MatMul_1MatMuldnn/hidden1/ReluAtrain/gradients/dnn/hidden2/BiasAdd_grad/tuple/control_dependency*
T0*
_output_shapes

:d*
transpose_a(*
transpose_b( 
�
8train/gradients/dnn/hidden2/MatMul_grad/tuple/group_depsNoOp/^train/gradients/dnn/hidden2/MatMul_grad/MatMul1^train/gradients/dnn/hidden2/MatMul_grad/MatMul_1
�
@train/gradients/dnn/hidden2/MatMul_grad/tuple/control_dependencyIdentity.train/gradients/dnn/hidden2/MatMul_grad/MatMul9^train/gradients/dnn/hidden2/MatMul_grad/tuple/group_deps*'
_output_shapes
:���������d*
T0*A
_class7
53loc:@train/gradients/dnn/hidden2/MatMul_grad/MatMul
�
Btrain/gradients/dnn/hidden2/MatMul_grad/tuple/control_dependency_1Identity0train/gradients/dnn/hidden2/MatMul_grad/MatMul_19^train/gradients/dnn/hidden2/MatMul_grad/tuple/group_deps*
T0*C
_class9
75loc:@train/gradients/dnn/hidden2/MatMul_grad/MatMul_1*
_output_shapes

:d
�
.train/gradients/dnn/hidden1/Relu_grad/ReluGradReluGrad@train/gradients/dnn/hidden2/MatMul_grad/tuple/control_dependencydnn/hidden1/Relu*
T0*'
_output_shapes
:���������d
�
4train/gradients/dnn/hidden1/BiasAdd_grad/BiasAddGradBiasAddGrad.train/gradients/dnn/hidden1/Relu_grad/ReluGrad*
data_formatNHWC*
_output_shapes
:d*
T0
�
9train/gradients/dnn/hidden1/BiasAdd_grad/tuple/group_depsNoOp5^train/gradients/dnn/hidden1/BiasAdd_grad/BiasAddGrad/^train/gradients/dnn/hidden1/Relu_grad/ReluGrad
�
Atrain/gradients/dnn/hidden1/BiasAdd_grad/tuple/control_dependencyIdentity.train/gradients/dnn/hidden1/Relu_grad/ReluGrad:^train/gradients/dnn/hidden1/BiasAdd_grad/tuple/group_deps*'
_output_shapes
:���������d*
T0*A
_class7
53loc:@train/gradients/dnn/hidden1/Relu_grad/ReluGrad
�
Ctrain/gradients/dnn/hidden1/BiasAdd_grad/tuple/control_dependency_1Identity4train/gradients/dnn/hidden1/BiasAdd_grad/BiasAddGrad:^train/gradients/dnn/hidden1/BiasAdd_grad/tuple/group_deps*
T0*G
_class=
;9loc:@train/gradients/dnn/hidden1/BiasAdd_grad/BiasAddGrad*
_output_shapes
:d
�
.train/gradients/dnn/hidden1/MatMul_grad/MatMulMatMulAtrain/gradients/dnn/hidden1/BiasAdd_grad/tuple/control_dependencyhidden1/kernel/read*
T0*(
_output_shapes
:����������*
transpose_a( *
transpose_b(
�
0train/gradients/dnn/hidden1/MatMul_grad/MatMul_1MatMulPlaceholderAtrain/gradients/dnn/hidden1/BiasAdd_grad/tuple/control_dependency*
T0*
_output_shapes
:	�d*
transpose_a(*
transpose_b( 
�
8train/gradients/dnn/hidden1/MatMul_grad/tuple/group_depsNoOp/^train/gradients/dnn/hidden1/MatMul_grad/MatMul1^train/gradients/dnn/hidden1/MatMul_grad/MatMul_1
�
@train/gradients/dnn/hidden1/MatMul_grad/tuple/control_dependencyIdentity.train/gradients/dnn/hidden1/MatMul_grad/MatMul9^train/gradients/dnn/hidden1/MatMul_grad/tuple/group_deps*
T0*A
_class7
53loc:@train/gradients/dnn/hidden1/MatMul_grad/MatMul*(
_output_shapes
:����������
�
Btrain/gradients/dnn/hidden1/MatMul_grad/tuple/control_dependency_1Identity0train/gradients/dnn/hidden1/MatMul_grad/MatMul_19^train/gradients/dnn/hidden1/MatMul_grad/tuple/group_deps*
T0*C
_class9
75loc:@train/gradients/dnn/hidden1/MatMul_grad/MatMul_1*
_output_shapes
:	�d
�
9hidden1/kernel/Momentum/Initializer/zeros/shape_as_tensorConst*!
_class
loc:@hidden1/kernel*
valueB"@  d   *
dtype0*
_output_shapes
:
�
/hidden1/kernel/Momentum/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *!
_class
loc:@hidden1/kernel*
valueB
 *    
�
)hidden1/kernel/Momentum/Initializer/zerosFill9hidden1/kernel/Momentum/Initializer/zeros/shape_as_tensor/hidden1/kernel/Momentum/Initializer/zeros/Const*
_output_shapes
:	�d*
T0*!
_class
loc:@hidden1/kernel*

index_type0
�
hidden1/kernel/Momentum
VariableV2*
dtype0*
_output_shapes
:	�d*
shared_name *!
_class
loc:@hidden1/kernel*
	container *
shape:	�d
�
hidden1/kernel/Momentum/AssignAssignhidden1/kernel/Momentum)hidden1/kernel/Momentum/Initializer/zeros*
T0*!
_class
loc:@hidden1/kernel*
validate_shape(*
_output_shapes
:	�d*
use_locking(
�
hidden1/kernel/Momentum/readIdentityhidden1/kernel/Momentum*
T0*!
_class
loc:@hidden1/kernel*
_output_shapes
:	�d
�
'hidden1/bias/Momentum/Initializer/zerosConst*
_class
loc:@hidden1/bias*
valueBd*    *
dtype0*
_output_shapes
:d
�
hidden1/bias/Momentum
VariableV2*
_class
loc:@hidden1/bias*
	container *
shape:d*
dtype0*
_output_shapes
:d*
shared_name 
�
hidden1/bias/Momentum/AssignAssignhidden1/bias/Momentum'hidden1/bias/Momentum/Initializer/zeros*
T0*
_class
loc:@hidden1/bias*
validate_shape(*
_output_shapes
:d*
use_locking(
�
hidden1/bias/Momentum/readIdentityhidden1/bias/Momentum*
T0*
_class
loc:@hidden1/bias*
_output_shapes
:d
�
9hidden2/kernel/Momentum/Initializer/zeros/shape_as_tensorConst*!
_class
loc:@hidden2/kernel*
valueB"d      *
dtype0*
_output_shapes
:
�
/hidden2/kernel/Momentum/Initializer/zeros/ConstConst*!
_class
loc:@hidden2/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
�
)hidden2/kernel/Momentum/Initializer/zerosFill9hidden2/kernel/Momentum/Initializer/zeros/shape_as_tensor/hidden2/kernel/Momentum/Initializer/zeros/Const*
T0*!
_class
loc:@hidden2/kernel*

index_type0*
_output_shapes

:d
�
hidden2/kernel/Momentum
VariableV2*
shared_name *!
_class
loc:@hidden2/kernel*
	container *
shape
:d*
dtype0*
_output_shapes

:d
�
hidden2/kernel/Momentum/AssignAssignhidden2/kernel/Momentum)hidden2/kernel/Momentum/Initializer/zeros*
validate_shape(*
_output_shapes

:d*
use_locking(*
T0*!
_class
loc:@hidden2/kernel
�
hidden2/kernel/Momentum/readIdentityhidden2/kernel/Momentum*
T0*!
_class
loc:@hidden2/kernel*
_output_shapes

:d
�
'hidden2/bias/Momentum/Initializer/zerosConst*
dtype0*
_output_shapes
:*
_class
loc:@hidden2/bias*
valueB*    
�
hidden2/bias/Momentum
VariableV2*
dtype0*
_output_shapes
:*
shared_name *
_class
loc:@hidden2/bias*
	container *
shape:
�
hidden2/bias/Momentum/AssignAssignhidden2/bias/Momentum'hidden2/bias/Momentum/Initializer/zeros*
use_locking(*
T0*
_class
loc:@hidden2/bias*
validate_shape(*
_output_shapes
:
�
hidden2/bias/Momentum/readIdentityhidden2/bias/Momentum*
_output_shapes
:*
T0*
_class
loc:@hidden2/bias
�
(output/kernel/Momentum/Initializer/zerosConst* 
_class
loc:@output/kernel*
valueB*    *
dtype0*
_output_shapes

:
�
output/kernel/Momentum
VariableV2*
dtype0*
_output_shapes

:*
shared_name * 
_class
loc:@output/kernel*
	container *
shape
:
�
output/kernel/Momentum/AssignAssignoutput/kernel/Momentum(output/kernel/Momentum/Initializer/zeros*
use_locking(*
T0* 
_class
loc:@output/kernel*
validate_shape(*
_output_shapes

:
�
output/kernel/Momentum/readIdentityoutput/kernel/Momentum*
_output_shapes

:*
T0* 
_class
loc:@output/kernel
�
&output/bias/Momentum/Initializer/zerosConst*
_class
loc:@output/bias*
valueB*    *
dtype0*
_output_shapes
:
�
output/bias/Momentum
VariableV2*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name *
_class
loc:@output/bias
�
output/bias/Momentum/AssignAssignoutput/bias/Momentum&output/bias/Momentum/Initializer/zeros*
T0*
_class
loc:@output/bias*
validate_shape(*
_output_shapes
:*
use_locking(
�
output/bias/Momentum/readIdentityoutput/bias/Momentum*
T0*
_class
loc:@output/bias*
_output_shapes
:
a
train/Momentum/learning_rateConst*
valueB
 *
�#<*
dtype0*
_output_shapes
: 
\
train/Momentum/momentumConst*
valueB
 *fff?*
dtype0*
_output_shapes
: 
�
2train/Momentum/update_hidden1/kernel/ApplyMomentumApplyMomentumhidden1/kernelhidden1/kernel/Momentumtrain/Momentum/learning_rateBtrain/gradients/dnn/hidden1/MatMul_grad/tuple/control_dependency_1train/Momentum/momentum*
use_locking( *
T0*!
_class
loc:@hidden1/kernel*
use_nesterov( *
_output_shapes
:	�d
�
0train/Momentum/update_hidden1/bias/ApplyMomentumApplyMomentumhidden1/biashidden1/bias/Momentumtrain/Momentum/learning_rateCtrain/gradients/dnn/hidden1/BiasAdd_grad/tuple/control_dependency_1train/Momentum/momentum*
use_locking( *
T0*
_class
loc:@hidden1/bias*
use_nesterov( *
_output_shapes
:d
�
2train/Momentum/update_hidden2/kernel/ApplyMomentumApplyMomentumhidden2/kernelhidden2/kernel/Momentumtrain/Momentum/learning_rateBtrain/gradients/dnn/hidden2/MatMul_grad/tuple/control_dependency_1train/Momentum/momentum*
use_locking( *
T0*!
_class
loc:@hidden2/kernel*
use_nesterov( *
_output_shapes

:d
�
0train/Momentum/update_hidden2/bias/ApplyMomentumApplyMomentumhidden2/biashidden2/bias/Momentumtrain/Momentum/learning_rateCtrain/gradients/dnn/hidden2/BiasAdd_grad/tuple/control_dependency_1train/Momentum/momentum*
use_nesterov( *
_output_shapes
:*
use_locking( *
T0*
_class
loc:@hidden2/bias
�
1train/Momentum/update_output/kernel/ApplyMomentumApplyMomentumoutput/kerneloutput/kernel/Momentumtrain/Momentum/learning_rate=train/gradients/output/MatMul_grad/tuple/control_dependency_1train/Momentum/momentum*
use_nesterov( *
_output_shapes

:*
use_locking( *
T0* 
_class
loc:@output/kernel
�
/train/Momentum/update_output/bias/ApplyMomentumApplyMomentumoutput/biasoutput/bias/Momentumtrain/Momentum/learning_rate>train/gradients/output/BiasAdd_grad/tuple/control_dependency_1train/Momentum/momentum*
use_nesterov( *
_output_shapes
:*
use_locking( *
T0*
_class
loc:@output/bias
�
train/MomentumNoOp1^train/Momentum/update_hidden1/bias/ApplyMomentum3^train/Momentum/update_hidden1/kernel/ApplyMomentum1^train/Momentum/update_hidden2/bias/ApplyMomentum3^train/Momentum/update_hidden2/kernel/ApplyMomentum0^train/Momentum/update_output/bias/ApplyMomentum2^train/Momentum/update_output/kernel/ApplyMomentum
T
SoftmaxSoftmaxoutput/BiasAdd*
T0*'
_output_shapes
:���������
S
ShapeShapeoutput/BiasAdd*
T0*
out_type0*
_output_shapes
:
]
strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
_
strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
_
strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
�
strided_sliceStridedSliceShapestrided_slice/stackstrided_slice/stack_1strided_slice/stack_2*
end_mask *
_output_shapes
: *
Index0*
T0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask 
M
range/startConst*
value	B : *
dtype0*
_output_shapes
: 
M
range/deltaConst*
dtype0*
_output_shapes
: *
value	B :
h
rangeRangerange/startstrided_slicerange/delta*

Tidx0*#
_output_shapes
:���������
U
Shape_1Shapeoutput/BiasAdd*
T0*
out_type0*
_output_shapes
:
_
strided_slice_1/stackConst*
valueB:*
dtype0*
_output_shapes
:
a
strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
a
strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
�
strided_slice_1StridedSliceShape_1strided_slice_1/stackstrided_slice_1/stack_1strided_slice_1/stack_2*
T0*
Index0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
P
mulMulrangestrided_slice_1*#
_output_shapes
:���������*
T0
L
addAddmulPlaceholder_2*#
_output_shapes
:���������*
T0
`
Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB:
���������
f
ReshapeReshapeSoftmaxReshape/shape*
T0*
Tshape0*#
_output_shapes
:���������
O
GatherV2/axisConst*
dtype0*
_output_shapes
: *
value	B : 
�
GatherV2GatherV2ReshapeaddGatherV2/axis*
Tparams0*#
_output_shapes
:���������*
Taxis0*
Tindices0
B
LogLogGatherV2*
T0*#
_output_shapes
:���������
N
mul_1MulLogPlaceholder_3*
T0*#
_output_shapes
:���������
Q
Const_1Const*
valueB: *
dtype0*
_output_shapes
:
\
Mean_1Meanmul_1Const_1*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
3
NegNegMean_1*
T0*
_output_shapes
: 
R
gradients/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
X
gradients/grad_ys_0Const*
valueB
 *  �?*
dtype0*
_output_shapes
: 
o
gradients/FillFillgradients/Shapegradients/grad_ys_0*
T0*

index_type0*
_output_shapes
: 
N
gradients/Neg_grad/NegNeggradients/Fill*
T0*
_output_shapes
: 
m
#gradients/Mean_1_grad/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:
�
gradients/Mean_1_grad/ReshapeReshapegradients/Neg_grad/Neg#gradients/Mean_1_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:
`
gradients/Mean_1_grad/ShapeShapemul_1*
T0*
out_type0*
_output_shapes
:
�
gradients/Mean_1_grad/TileTilegradients/Mean_1_grad/Reshapegradients/Mean_1_grad/Shape*

Tmultiples0*
T0*#
_output_shapes
:���������
b
gradients/Mean_1_grad/Shape_1Shapemul_1*
T0*
out_type0*
_output_shapes
:
`
gradients/Mean_1_grad/Shape_2Const*
valueB *
dtype0*
_output_shapes
: 
e
gradients/Mean_1_grad/ConstConst*
dtype0*
_output_shapes
:*
valueB: 
�
gradients/Mean_1_grad/ProdProdgradients/Mean_1_grad/Shape_1gradients/Mean_1_grad/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
g
gradients/Mean_1_grad/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
�
gradients/Mean_1_grad/Prod_1Prodgradients/Mean_1_grad/Shape_2gradients/Mean_1_grad/Const_1*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
a
gradients/Mean_1_grad/Maximum/yConst*
value	B :*
dtype0*
_output_shapes
: 
�
gradients/Mean_1_grad/MaximumMaximumgradients/Mean_1_grad/Prod_1gradients/Mean_1_grad/Maximum/y*
T0*
_output_shapes
: 
�
gradients/Mean_1_grad/floordivFloorDivgradients/Mean_1_grad/Prodgradients/Mean_1_grad/Maximum*
_output_shapes
: *
T0
r
gradients/Mean_1_grad/CastCastgradients/Mean_1_grad/floordiv*

SrcT0*
_output_shapes
: *

DstT0
�
gradients/Mean_1_grad/truedivRealDivgradients/Mean_1_grad/Tilegradients/Mean_1_grad/Cast*
T0*#
_output_shapes
:���������
]
gradients/mul_1_grad/ShapeShapeLog*
_output_shapes
:*
T0*
out_type0
i
gradients/mul_1_grad/Shape_1ShapePlaceholder_3*
T0*
out_type0*
_output_shapes
:
�
*gradients/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_1_grad/Shapegradients/mul_1_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
{
gradients/mul_1_grad/MulMulgradients/Mean_1_grad/truedivPlaceholder_3*
T0*#
_output_shapes
:���������
�
gradients/mul_1_grad/SumSumgradients/mul_1_grad/Mul*gradients/mul_1_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
�
gradients/mul_1_grad/ReshapeReshapegradients/mul_1_grad/Sumgradients/mul_1_grad/Shape*
T0*
Tshape0*#
_output_shapes
:���������
s
gradients/mul_1_grad/Mul_1MulLoggradients/Mean_1_grad/truediv*#
_output_shapes
:���������*
T0
�
gradients/mul_1_grad/Sum_1Sumgradients/mul_1_grad/Mul_1,gradients/mul_1_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
�
gradients/mul_1_grad/Reshape_1Reshapegradients/mul_1_grad/Sum_1gradients/mul_1_grad/Shape_1*#
_output_shapes
:���������*
T0*
Tshape0
m
%gradients/mul_1_grad/tuple/group_depsNoOp^gradients/mul_1_grad/Reshape^gradients/mul_1_grad/Reshape_1
�
-gradients/mul_1_grad/tuple/control_dependencyIdentitygradients/mul_1_grad/Reshape&^gradients/mul_1_grad/tuple/group_deps*#
_output_shapes
:���������*
T0*/
_class%
#!loc:@gradients/mul_1_grad/Reshape
�
/gradients/mul_1_grad/tuple/control_dependency_1Identitygradients/mul_1_grad/Reshape_1&^gradients/mul_1_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/mul_1_grad/Reshape_1*#
_output_shapes
:���������
�
gradients/Log_grad/Reciprocal
ReciprocalGatherV2.^gradients/mul_1_grad/tuple/control_dependency*
T0*#
_output_shapes
:���������
�
gradients/Log_grad/mulMul-gradients/mul_1_grad/tuple/control_dependencygradients/Log_grad/Reciprocal*#
_output_shapes
:���������*
T0
�
gradients/GatherV2_grad/ShapeShapeReshape*
T0*
_class
loc:@Reshape*
out_type0	*
_output_shapes
:
�
gradients/GatherV2_grad/ToInt32Castgradients/GatherV2_grad/Shape*
_output_shapes
:*

DstT0*

SrcT0	*
_class
loc:@Reshape
Z
gradients/GatherV2_grad/SizeSizeadd*
T0*
out_type0*
_output_shapes
: 
h
&gradients/GatherV2_grad/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
�
"gradients/GatherV2_grad/ExpandDims
ExpandDimsgradients/GatherV2_grad/Size&gradients/GatherV2_grad/ExpandDims/dim*
_output_shapes
:*

Tdim0*
T0
u
+gradients/GatherV2_grad/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB:
w
-gradients/GatherV2_grad/strided_slice/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
w
-gradients/GatherV2_grad/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
�
%gradients/GatherV2_grad/strided_sliceStridedSlicegradients/GatherV2_grad/ToInt32+gradients/GatherV2_grad/strided_slice/stack-gradients/GatherV2_grad/strided_slice/stack_1-gradients/GatherV2_grad/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes
: 
e
#gradients/GatherV2_grad/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�
gradients/GatherV2_grad/concatConcatV2"gradients/GatherV2_grad/ExpandDims%gradients/GatherV2_grad/strided_slice#gradients/GatherV2_grad/concat/axis*
T0*
N*
_output_shapes
:*

Tidx0
�
gradients/GatherV2_grad/ReshapeReshapegradients/Log_grad/mulgradients/GatherV2_grad/concat*#
_output_shapes
:���������*
T0*
Tshape0
�
!gradients/GatherV2_grad/Reshape_1Reshapeadd"gradients/GatherV2_grad/ExpandDims*
T0*
Tshape0*#
_output_shapes
:���������
c
gradients/Reshape_grad/ShapeShapeSoftmax*
_output_shapes
:*
T0*
out_type0
|
2gradients/Reshape_grad/Reshape/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
~
4gradients/Reshape_grad/Reshape/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
~
4gradients/Reshape_grad/Reshape/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
�
,gradients/Reshape_grad/Reshape/strided_sliceStridedSlicegradients/GatherV2_grad/ToInt322gradients/Reshape_grad/Reshape/strided_slice/stack4gradients/Reshape_grad/Reshape/strided_slice/stack_14gradients/Reshape_grad/Reshape/strided_slice/stack_2*
end_mask *
_output_shapes
: *
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask 
�
%gradients/Reshape_grad/Reshape/tensorUnsortedSegmentSumgradients/GatherV2_grad/Reshape!gradients/GatherV2_grad/Reshape_1,gradients/Reshape_grad/Reshape/strided_slice*
Tnumsegments0*
Tindices0*
T0*#
_output_shapes
:���������
�
gradients/Reshape_grad/ReshapeReshape%gradients/Reshape_grad/Reshape/tensorgradients/Reshape_grad/Shape*
T0*
Tshape0*'
_output_shapes
:���������
|
gradients/Softmax_grad/mulMulgradients/Reshape_grad/ReshapeSoftmax*
T0*'
_output_shapes
:���������
v
,gradients/Softmax_grad/Sum/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
�
gradients/Softmax_grad/SumSumgradients/Softmax_grad/mul,gradients/Softmax_grad/Sum/reduction_indices*
	keep_dims( *

Tidx0*
T0*#
_output_shapes
:���������
u
$gradients/Softmax_grad/Reshape/shapeConst*
valueB"����   *
dtype0*
_output_shapes
:
�
gradients/Softmax_grad/ReshapeReshapegradients/Softmax_grad/Sum$gradients/Softmax_grad/Reshape/shape*'
_output_shapes
:���������*
T0*
Tshape0
�
gradients/Softmax_grad/subSubgradients/Reshape_grad/Reshapegradients/Softmax_grad/Reshape*
T0*'
_output_shapes
:���������
z
gradients/Softmax_grad/mul_1Mulgradients/Softmax_grad/subSoftmax*
T0*'
_output_shapes
:���������
�
)gradients/output/BiasAdd_grad/BiasAddGradBiasAddGradgradients/Softmax_grad/mul_1*
T0*
data_formatNHWC*
_output_shapes
:
�
.gradients/output/BiasAdd_grad/tuple/group_depsNoOp^gradients/Softmax_grad/mul_1*^gradients/output/BiasAdd_grad/BiasAddGrad
�
6gradients/output/BiasAdd_grad/tuple/control_dependencyIdentitygradients/Softmax_grad/mul_1/^gradients/output/BiasAdd_grad/tuple/group_deps*'
_output_shapes
:���������*
T0*/
_class%
#!loc:@gradients/Softmax_grad/mul_1
�
8gradients/output/BiasAdd_grad/tuple/control_dependency_1Identity)gradients/output/BiasAdd_grad/BiasAddGrad/^gradients/output/BiasAdd_grad/tuple/group_deps*
T0*<
_class2
0.loc:@gradients/output/BiasAdd_grad/BiasAddGrad*
_output_shapes
:
�
#gradients/output/MatMul_grad/MatMulMatMul6gradients/output/BiasAdd_grad/tuple/control_dependencyoutput/kernel/read*
T0*'
_output_shapes
:���������*
transpose_a( *
transpose_b(
�
%gradients/output/MatMul_grad/MatMul_1MatMuldnn/hidden2/Relu6gradients/output/BiasAdd_grad/tuple/control_dependency*
T0*
_output_shapes

:*
transpose_a(*
transpose_b( 
�
-gradients/output/MatMul_grad/tuple/group_depsNoOp$^gradients/output/MatMul_grad/MatMul&^gradients/output/MatMul_grad/MatMul_1
�
5gradients/output/MatMul_grad/tuple/control_dependencyIdentity#gradients/output/MatMul_grad/MatMul.^gradients/output/MatMul_grad/tuple/group_deps*
T0*6
_class,
*(loc:@gradients/output/MatMul_grad/MatMul*'
_output_shapes
:���������
�
7gradients/output/MatMul_grad/tuple/control_dependency_1Identity%gradients/output/MatMul_grad/MatMul_1.^gradients/output/MatMul_grad/tuple/group_deps*
T0*8
_class.
,*loc:@gradients/output/MatMul_grad/MatMul_1*
_output_shapes

:
�
(gradients/dnn/hidden2/Relu_grad/ReluGradReluGrad5gradients/output/MatMul_grad/tuple/control_dependencydnn/hidden2/Relu*
T0*'
_output_shapes
:���������
�
.gradients/dnn/hidden2/BiasAdd_grad/BiasAddGradBiasAddGrad(gradients/dnn/hidden2/Relu_grad/ReluGrad*
data_formatNHWC*
_output_shapes
:*
T0
�
3gradients/dnn/hidden2/BiasAdd_grad/tuple/group_depsNoOp/^gradients/dnn/hidden2/BiasAdd_grad/BiasAddGrad)^gradients/dnn/hidden2/Relu_grad/ReluGrad
�
;gradients/dnn/hidden2/BiasAdd_grad/tuple/control_dependencyIdentity(gradients/dnn/hidden2/Relu_grad/ReluGrad4^gradients/dnn/hidden2/BiasAdd_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients/dnn/hidden2/Relu_grad/ReluGrad*'
_output_shapes
:���������
�
=gradients/dnn/hidden2/BiasAdd_grad/tuple/control_dependency_1Identity.gradients/dnn/hidden2/BiasAdd_grad/BiasAddGrad4^gradients/dnn/hidden2/BiasAdd_grad/tuple/group_deps*
T0*A
_class7
53loc:@gradients/dnn/hidden2/BiasAdd_grad/BiasAddGrad*
_output_shapes
:
�
(gradients/dnn/hidden2/MatMul_grad/MatMulMatMul;gradients/dnn/hidden2/BiasAdd_grad/tuple/control_dependencyhidden2/kernel/read*'
_output_shapes
:���������d*
transpose_a( *
transpose_b(*
T0
�
*gradients/dnn/hidden2/MatMul_grad/MatMul_1MatMuldnn/hidden1/Relu;gradients/dnn/hidden2/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*
_output_shapes

:d*
transpose_a(
�
2gradients/dnn/hidden2/MatMul_grad/tuple/group_depsNoOp)^gradients/dnn/hidden2/MatMul_grad/MatMul+^gradients/dnn/hidden2/MatMul_grad/MatMul_1
�
:gradients/dnn/hidden2/MatMul_grad/tuple/control_dependencyIdentity(gradients/dnn/hidden2/MatMul_grad/MatMul3^gradients/dnn/hidden2/MatMul_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients/dnn/hidden2/MatMul_grad/MatMul*'
_output_shapes
:���������d
�
<gradients/dnn/hidden2/MatMul_grad/tuple/control_dependency_1Identity*gradients/dnn/hidden2/MatMul_grad/MatMul_13^gradients/dnn/hidden2/MatMul_grad/tuple/group_deps*
_output_shapes

:d*
T0*=
_class3
1/loc:@gradients/dnn/hidden2/MatMul_grad/MatMul_1
�
(gradients/dnn/hidden1/Relu_grad/ReluGradReluGrad:gradients/dnn/hidden2/MatMul_grad/tuple/control_dependencydnn/hidden1/Relu*
T0*'
_output_shapes
:���������d
�
.gradients/dnn/hidden1/BiasAdd_grad/BiasAddGradBiasAddGrad(gradients/dnn/hidden1/Relu_grad/ReluGrad*
data_formatNHWC*
_output_shapes
:d*
T0
�
3gradients/dnn/hidden1/BiasAdd_grad/tuple/group_depsNoOp/^gradients/dnn/hidden1/BiasAdd_grad/BiasAddGrad)^gradients/dnn/hidden1/Relu_grad/ReluGrad
�
;gradients/dnn/hidden1/BiasAdd_grad/tuple/control_dependencyIdentity(gradients/dnn/hidden1/Relu_grad/ReluGrad4^gradients/dnn/hidden1/BiasAdd_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients/dnn/hidden1/Relu_grad/ReluGrad*'
_output_shapes
:���������d
�
=gradients/dnn/hidden1/BiasAdd_grad/tuple/control_dependency_1Identity.gradients/dnn/hidden1/BiasAdd_grad/BiasAddGrad4^gradients/dnn/hidden1/BiasAdd_grad/tuple/group_deps*
T0*A
_class7
53loc:@gradients/dnn/hidden1/BiasAdd_grad/BiasAddGrad*
_output_shapes
:d
�
(gradients/dnn/hidden1/MatMul_grad/MatMulMatMul;gradients/dnn/hidden1/BiasAdd_grad/tuple/control_dependencyhidden1/kernel/read*
T0*(
_output_shapes
:����������*
transpose_a( *
transpose_b(
�
*gradients/dnn/hidden1/MatMul_grad/MatMul_1MatMulPlaceholder;gradients/dnn/hidden1/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*
_output_shapes
:	�d*
transpose_a(
�
2gradients/dnn/hidden1/MatMul_grad/tuple/group_depsNoOp)^gradients/dnn/hidden1/MatMul_grad/MatMul+^gradients/dnn/hidden1/MatMul_grad/MatMul_1
�
:gradients/dnn/hidden1/MatMul_grad/tuple/control_dependencyIdentity(gradients/dnn/hidden1/MatMul_grad/MatMul3^gradients/dnn/hidden1/MatMul_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients/dnn/hidden1/MatMul_grad/MatMul*(
_output_shapes
:����������
�
<gradients/dnn/hidden1/MatMul_grad/tuple/control_dependency_1Identity*gradients/dnn/hidden1/MatMul_grad/MatMul_13^gradients/dnn/hidden1/MatMul_grad/tuple/group_deps*
_output_shapes
:	�d*
T0*=
_class3
1/loc:@gradients/dnn/hidden1/MatMul_grad/MatMul_1

beta1_power/initial_valueConst*
_class
loc:@hidden1/bias*
valueB
 *fff?*
dtype0*
_output_shapes
: 
�
beta1_power
VariableV2*
shape: *
dtype0*
_output_shapes
: *
shared_name *
_class
loc:@hidden1/bias*
	container 
�
beta1_power/AssignAssignbeta1_powerbeta1_power/initial_value*
use_locking(*
T0*
_class
loc:@hidden1/bias*
validate_shape(*
_output_shapes
: 
k
beta1_power/readIdentitybeta1_power*
T0*
_class
loc:@hidden1/bias*
_output_shapes
: 

beta2_power/initial_valueConst*
_class
loc:@hidden1/bias*
valueB
 *w�?*
dtype0*
_output_shapes
: 
�
beta2_power
VariableV2*
dtype0*
_output_shapes
: *
shared_name *
_class
loc:@hidden1/bias*
	container *
shape: 
�
beta2_power/AssignAssignbeta2_powerbeta2_power/initial_value*
use_locking(*
T0*
_class
loc:@hidden1/bias*
validate_shape(*
_output_shapes
: 
k
beta2_power/readIdentitybeta2_power*
T0*
_class
loc:@hidden1/bias*
_output_shapes
: 
�
5hidden1/kernel/Adam/Initializer/zeros/shape_as_tensorConst*!
_class
loc:@hidden1/kernel*
valueB"@  d   *
dtype0*
_output_shapes
:
�
+hidden1/kernel/Adam/Initializer/zeros/ConstConst*!
_class
loc:@hidden1/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
�
%hidden1/kernel/Adam/Initializer/zerosFill5hidden1/kernel/Adam/Initializer/zeros/shape_as_tensor+hidden1/kernel/Adam/Initializer/zeros/Const*
T0*!
_class
loc:@hidden1/kernel*

index_type0*
_output_shapes
:	�d
�
hidden1/kernel/Adam
VariableV2*
dtype0*
_output_shapes
:	�d*
shared_name *!
_class
loc:@hidden1/kernel*
	container *
shape:	�d
�
hidden1/kernel/Adam/AssignAssignhidden1/kernel/Adam%hidden1/kernel/Adam/Initializer/zeros*
use_locking(*
T0*!
_class
loc:@hidden1/kernel*
validate_shape(*
_output_shapes
:	�d
�
hidden1/kernel/Adam/readIdentityhidden1/kernel/Adam*
T0*!
_class
loc:@hidden1/kernel*
_output_shapes
:	�d
�
7hidden1/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*!
_class
loc:@hidden1/kernel*
valueB"@  d   
�
-hidden1/kernel/Adam_1/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *!
_class
loc:@hidden1/kernel*
valueB
 *    
�
'hidden1/kernel/Adam_1/Initializer/zerosFill7hidden1/kernel/Adam_1/Initializer/zeros/shape_as_tensor-hidden1/kernel/Adam_1/Initializer/zeros/Const*
T0*!
_class
loc:@hidden1/kernel*

index_type0*
_output_shapes
:	�d
�
hidden1/kernel/Adam_1
VariableV2*
	container *
shape:	�d*
dtype0*
_output_shapes
:	�d*
shared_name *!
_class
loc:@hidden1/kernel
�
hidden1/kernel/Adam_1/AssignAssignhidden1/kernel/Adam_1'hidden1/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*!
_class
loc:@hidden1/kernel*
validate_shape(*
_output_shapes
:	�d
�
hidden1/kernel/Adam_1/readIdentityhidden1/kernel/Adam_1*
T0*!
_class
loc:@hidden1/kernel*
_output_shapes
:	�d
�
#hidden1/bias/Adam/Initializer/zerosConst*
_class
loc:@hidden1/bias*
valueBd*    *
dtype0*
_output_shapes
:d
�
hidden1/bias/Adam
VariableV2*
dtype0*
_output_shapes
:d*
shared_name *
_class
loc:@hidden1/bias*
	container *
shape:d
�
hidden1/bias/Adam/AssignAssignhidden1/bias/Adam#hidden1/bias/Adam/Initializer/zeros*
validate_shape(*
_output_shapes
:d*
use_locking(*
T0*
_class
loc:@hidden1/bias
{
hidden1/bias/Adam/readIdentityhidden1/bias/Adam*
T0*
_class
loc:@hidden1/bias*
_output_shapes
:d
�
%hidden1/bias/Adam_1/Initializer/zerosConst*
_class
loc:@hidden1/bias*
valueBd*    *
dtype0*
_output_shapes
:d
�
hidden1/bias/Adam_1
VariableV2*
dtype0*
_output_shapes
:d*
shared_name *
_class
loc:@hidden1/bias*
	container *
shape:d
�
hidden1/bias/Adam_1/AssignAssignhidden1/bias/Adam_1%hidden1/bias/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@hidden1/bias*
validate_shape(*
_output_shapes
:d

hidden1/bias/Adam_1/readIdentityhidden1/bias/Adam_1*
T0*
_class
loc:@hidden1/bias*
_output_shapes
:d
�
5hidden2/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*!
_class
loc:@hidden2/kernel*
valueB"d      
�
+hidden2/kernel/Adam/Initializer/zeros/ConstConst*!
_class
loc:@hidden2/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
�
%hidden2/kernel/Adam/Initializer/zerosFill5hidden2/kernel/Adam/Initializer/zeros/shape_as_tensor+hidden2/kernel/Adam/Initializer/zeros/Const*
T0*!
_class
loc:@hidden2/kernel*

index_type0*
_output_shapes

:d
�
hidden2/kernel/Adam
VariableV2*
shared_name *!
_class
loc:@hidden2/kernel*
	container *
shape
:d*
dtype0*
_output_shapes

:d
�
hidden2/kernel/Adam/AssignAssignhidden2/kernel/Adam%hidden2/kernel/Adam/Initializer/zeros*
T0*!
_class
loc:@hidden2/kernel*
validate_shape(*
_output_shapes

:d*
use_locking(
�
hidden2/kernel/Adam/readIdentityhidden2/kernel/Adam*
T0*!
_class
loc:@hidden2/kernel*
_output_shapes

:d
�
7hidden2/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*!
_class
loc:@hidden2/kernel*
valueB"d      *
dtype0*
_output_shapes
:
�
-hidden2/kernel/Adam_1/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *!
_class
loc:@hidden2/kernel*
valueB
 *    
�
'hidden2/kernel/Adam_1/Initializer/zerosFill7hidden2/kernel/Adam_1/Initializer/zeros/shape_as_tensor-hidden2/kernel/Adam_1/Initializer/zeros/Const*
_output_shapes

:d*
T0*!
_class
loc:@hidden2/kernel*

index_type0
�
hidden2/kernel/Adam_1
VariableV2*
shape
:d*
dtype0*
_output_shapes

:d*
shared_name *!
_class
loc:@hidden2/kernel*
	container 
�
hidden2/kernel/Adam_1/AssignAssignhidden2/kernel/Adam_1'hidden2/kernel/Adam_1/Initializer/zeros*
validate_shape(*
_output_shapes

:d*
use_locking(*
T0*!
_class
loc:@hidden2/kernel
�
hidden2/kernel/Adam_1/readIdentityhidden2/kernel/Adam_1*
_output_shapes

:d*
T0*!
_class
loc:@hidden2/kernel
�
#hidden2/bias/Adam/Initializer/zerosConst*
_class
loc:@hidden2/bias*
valueB*    *
dtype0*
_output_shapes
:
�
hidden2/bias/Adam
VariableV2*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name *
_class
loc:@hidden2/bias
�
hidden2/bias/Adam/AssignAssignhidden2/bias/Adam#hidden2/bias/Adam/Initializer/zeros*
T0*
_class
loc:@hidden2/bias*
validate_shape(*
_output_shapes
:*
use_locking(
{
hidden2/bias/Adam/readIdentityhidden2/bias/Adam*
T0*
_class
loc:@hidden2/bias*
_output_shapes
:
�
%hidden2/bias/Adam_1/Initializer/zerosConst*
_class
loc:@hidden2/bias*
valueB*    *
dtype0*
_output_shapes
:
�
hidden2/bias/Adam_1
VariableV2*
shared_name *
_class
loc:@hidden2/bias*
	container *
shape:*
dtype0*
_output_shapes
:
�
hidden2/bias/Adam_1/AssignAssignhidden2/bias/Adam_1%hidden2/bias/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@hidden2/bias*
validate_shape(*
_output_shapes
:

hidden2/bias/Adam_1/readIdentityhidden2/bias/Adam_1*
T0*
_class
loc:@hidden2/bias*
_output_shapes
:
�
$output/kernel/Adam/Initializer/zerosConst*
dtype0*
_output_shapes

:* 
_class
loc:@output/kernel*
valueB*    
�
output/kernel/Adam
VariableV2*
dtype0*
_output_shapes

:*
shared_name * 
_class
loc:@output/kernel*
	container *
shape
:
�
output/kernel/Adam/AssignAssignoutput/kernel/Adam$output/kernel/Adam/Initializer/zeros*
validate_shape(*
_output_shapes

:*
use_locking(*
T0* 
_class
loc:@output/kernel
�
output/kernel/Adam/readIdentityoutput/kernel/Adam*
_output_shapes

:*
T0* 
_class
loc:@output/kernel
�
&output/kernel/Adam_1/Initializer/zerosConst*
dtype0*
_output_shapes

:* 
_class
loc:@output/kernel*
valueB*    
�
output/kernel/Adam_1
VariableV2*
shared_name * 
_class
loc:@output/kernel*
	container *
shape
:*
dtype0*
_output_shapes

:
�
output/kernel/Adam_1/AssignAssignoutput/kernel/Adam_1&output/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0* 
_class
loc:@output/kernel*
validate_shape(*
_output_shapes

:
�
output/kernel/Adam_1/readIdentityoutput/kernel/Adam_1*
T0* 
_class
loc:@output/kernel*
_output_shapes

:
�
"output/bias/Adam/Initializer/zerosConst*
dtype0*
_output_shapes
:*
_class
loc:@output/bias*
valueB*    
�
output/bias/Adam
VariableV2*
dtype0*
_output_shapes
:*
shared_name *
_class
loc:@output/bias*
	container *
shape:
�
output/bias/Adam/AssignAssignoutput/bias/Adam"output/bias/Adam/Initializer/zeros*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@output/bias
x
output/bias/Adam/readIdentityoutput/bias/Adam*
T0*
_class
loc:@output/bias*
_output_shapes
:
�
$output/bias/Adam_1/Initializer/zerosConst*
_class
loc:@output/bias*
valueB*    *
dtype0*
_output_shapes
:
�
output/bias/Adam_1
VariableV2*
dtype0*
_output_shapes
:*
shared_name *
_class
loc:@output/bias*
	container *
shape:
�
output/bias/Adam_1/AssignAssignoutput/bias/Adam_1$output/bias/Adam_1/Initializer/zeros*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@output/bias
|
output/bias/Adam_1/readIdentityoutput/bias/Adam_1*
_output_shapes
:*
T0*
_class
loc:@output/bias
W
Adam/learning_rateConst*
valueB
 *
�#<*
dtype0*
_output_shapes
: 
O

Adam/beta1Const*
valueB
 *fff?*
dtype0*
_output_shapes
: 
O

Adam/beta2Const*
valueB
 *w�?*
dtype0*
_output_shapes
: 
Q
Adam/epsilonConst*
valueB
 *w�+2*
dtype0*
_output_shapes
: 
�
$Adam/update_hidden1/kernel/ApplyAdam	ApplyAdamhidden1/kernelhidden1/kernel/Adamhidden1/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon<gradients/dnn/hidden1/MatMul_grad/tuple/control_dependency_1*
T0*!
_class
loc:@hidden1/kernel*
use_nesterov( *
_output_shapes
:	�d*
use_locking( 
�
"Adam/update_hidden1/bias/ApplyAdam	ApplyAdamhidden1/biashidden1/bias/Adamhidden1/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon=gradients/dnn/hidden1/BiasAdd_grad/tuple/control_dependency_1*
T0*
_class
loc:@hidden1/bias*
use_nesterov( *
_output_shapes
:d*
use_locking( 
�
$Adam/update_hidden2/kernel/ApplyAdam	ApplyAdamhidden2/kernelhidden2/kernel/Adamhidden2/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon<gradients/dnn/hidden2/MatMul_grad/tuple/control_dependency_1*
T0*!
_class
loc:@hidden2/kernel*
use_nesterov( *
_output_shapes

:d*
use_locking( 
�
"Adam/update_hidden2/bias/ApplyAdam	ApplyAdamhidden2/biashidden2/bias/Adamhidden2/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon=gradients/dnn/hidden2/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@hidden2/bias*
use_nesterov( *
_output_shapes
:
�
#Adam/update_output/kernel/ApplyAdam	ApplyAdamoutput/kerneloutput/kernel/Adamoutput/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon7gradients/output/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0* 
_class
loc:@output/kernel*
use_nesterov( *
_output_shapes

:
�
!Adam/update_output/bias/ApplyAdam	ApplyAdamoutput/biasoutput/bias/Adamoutput/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon8gradients/output/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@output/bias*
use_nesterov( *
_output_shapes
:
�
Adam/mulMulbeta1_power/read
Adam/beta1#^Adam/update_hidden1/bias/ApplyAdam%^Adam/update_hidden1/kernel/ApplyAdam#^Adam/update_hidden2/bias/ApplyAdam%^Adam/update_hidden2/kernel/ApplyAdam"^Adam/update_output/bias/ApplyAdam$^Adam/update_output/kernel/ApplyAdam*
T0*
_class
loc:@hidden1/bias*
_output_shapes
: 
�
Adam/AssignAssignbeta1_powerAdam/mul*
validate_shape(*
_output_shapes
: *
use_locking( *
T0*
_class
loc:@hidden1/bias
�

Adam/mul_1Mulbeta2_power/read
Adam/beta2#^Adam/update_hidden1/bias/ApplyAdam%^Adam/update_hidden1/kernel/ApplyAdam#^Adam/update_hidden2/bias/ApplyAdam%^Adam/update_hidden2/kernel/ApplyAdam"^Adam/update_output/bias/ApplyAdam$^Adam/update_output/kernel/ApplyAdam*
T0*
_class
loc:@hidden1/bias*
_output_shapes
: 
�
Adam/Assign_1Assignbeta2_power
Adam/mul_1*
validate_shape(*
_output_shapes
: *
use_locking( *
T0*
_class
loc:@hidden1/bias
�
AdamNoOp^Adam/Assign^Adam/Assign_1#^Adam/update_hidden1/bias/ApplyAdam%^Adam/update_hidden1/kernel/ApplyAdam#^Adam/update_hidden2/bias/ApplyAdam%^Adam/update_hidden2/kernel/ApplyAdam"^Adam/update_output/bias/ApplyAdam$^Adam/update_output/kernel/ApplyAdam
P

save/ConstConst*
dtype0*
_output_shapes
: *
valueB Bmodel
�
save/SaveV2/tensor_namesConst*�
value�B�Bbeta1_powerBbeta2_powerBhidden1/biasBhidden1/bias/AdamBhidden1/bias/Adam_1Bhidden1/bias/MomentumBhidden1/kernelBhidden1/kernel/AdamBhidden1/kernel/Adam_1Bhidden1/kernel/MomentumBhidden2/biasBhidden2/bias/AdamBhidden2/bias/Adam_1Bhidden2/bias/MomentumBhidden2/kernelBhidden2/kernel/AdamBhidden2/kernel/Adam_1Bhidden2/kernel/MomentumBoutput/biasBoutput/bias/AdamBoutput/bias/Adam_1Boutput/bias/MomentumBoutput/kernelBoutput/kernel/AdamBoutput/kernel/Adam_1Boutput/kernel/Momentum*
dtype0*
_output_shapes
:
�
save/SaveV2/shape_and_slicesConst*G
value>B<B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
�
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesbeta1_powerbeta2_powerhidden1/biashidden1/bias/Adamhidden1/bias/Adam_1hidden1/bias/Momentumhidden1/kernelhidden1/kernel/Adamhidden1/kernel/Adam_1hidden1/kernel/Momentumhidden2/biashidden2/bias/Adamhidden2/bias/Adam_1hidden2/bias/Momentumhidden2/kernelhidden2/kernel/Adamhidden2/kernel/Adam_1hidden2/kernel/Momentumoutput/biasoutput/bias/Adamoutput/bias/Adam_1output/bias/Momentumoutput/kerneloutput/kernel/Adamoutput/kernel/Adam_1output/kernel/Momentum*(
dtypes
2
}
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_class
loc:@save/Const*
_output_shapes
: 
�
save/RestoreV2/tensor_namesConst"/device:CPU:0*�
value�B�Bbeta1_powerBbeta2_powerBhidden1/biasBhidden1/bias/AdamBhidden1/bias/Adam_1Bhidden1/bias/MomentumBhidden1/kernelBhidden1/kernel/AdamBhidden1/kernel/Adam_1Bhidden1/kernel/MomentumBhidden2/biasBhidden2/bias/AdamBhidden2/bias/Adam_1Bhidden2/bias/MomentumBhidden2/kernelBhidden2/kernel/AdamBhidden2/kernel/Adam_1Bhidden2/kernel/MomentumBoutput/biasBoutput/bias/AdamBoutput/bias/Adam_1Boutput/bias/MomentumBoutput/kernelBoutput/kernel/AdamBoutput/kernel/Adam_1Boutput/kernel/Momentum*
dtype0*
_output_shapes
:
�
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*G
value>B<B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
�
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*|
_output_shapesj
h::::::::::::::::::::::::::*(
dtypes
2
�
save/AssignAssignbeta1_powersave/RestoreV2*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@hidden1/bias
�
save/Assign_1Assignbeta2_powersave/RestoreV2:1*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@hidden1/bias
�
save/Assign_2Assignhidden1/biassave/RestoreV2:2*
use_locking(*
T0*
_class
loc:@hidden1/bias*
validate_shape(*
_output_shapes
:d
�
save/Assign_3Assignhidden1/bias/Adamsave/RestoreV2:3*
validate_shape(*
_output_shapes
:d*
use_locking(*
T0*
_class
loc:@hidden1/bias
�
save/Assign_4Assignhidden1/bias/Adam_1save/RestoreV2:4*
T0*
_class
loc:@hidden1/bias*
validate_shape(*
_output_shapes
:d*
use_locking(
�
save/Assign_5Assignhidden1/bias/Momentumsave/RestoreV2:5*
T0*
_class
loc:@hidden1/bias*
validate_shape(*
_output_shapes
:d*
use_locking(
�
save/Assign_6Assignhidden1/kernelsave/RestoreV2:6*
T0*!
_class
loc:@hidden1/kernel*
validate_shape(*
_output_shapes
:	�d*
use_locking(
�
save/Assign_7Assignhidden1/kernel/Adamsave/RestoreV2:7*
validate_shape(*
_output_shapes
:	�d*
use_locking(*
T0*!
_class
loc:@hidden1/kernel
�
save/Assign_8Assignhidden1/kernel/Adam_1save/RestoreV2:8*
T0*!
_class
loc:@hidden1/kernel*
validate_shape(*
_output_shapes
:	�d*
use_locking(
�
save/Assign_9Assignhidden1/kernel/Momentumsave/RestoreV2:9*
validate_shape(*
_output_shapes
:	�d*
use_locking(*
T0*!
_class
loc:@hidden1/kernel
�
save/Assign_10Assignhidden2/biassave/RestoreV2:10*
T0*
_class
loc:@hidden2/bias*
validate_shape(*
_output_shapes
:*
use_locking(
�
save/Assign_11Assignhidden2/bias/Adamsave/RestoreV2:11*
use_locking(*
T0*
_class
loc:@hidden2/bias*
validate_shape(*
_output_shapes
:
�
save/Assign_12Assignhidden2/bias/Adam_1save/RestoreV2:12*
T0*
_class
loc:@hidden2/bias*
validate_shape(*
_output_shapes
:*
use_locking(
�
save/Assign_13Assignhidden2/bias/Momentumsave/RestoreV2:13*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@hidden2/bias
�
save/Assign_14Assignhidden2/kernelsave/RestoreV2:14*
T0*!
_class
loc:@hidden2/kernel*
validate_shape(*
_output_shapes

:d*
use_locking(
�
save/Assign_15Assignhidden2/kernel/Adamsave/RestoreV2:15*
use_locking(*
T0*!
_class
loc:@hidden2/kernel*
validate_shape(*
_output_shapes

:d
�
save/Assign_16Assignhidden2/kernel/Adam_1save/RestoreV2:16*
use_locking(*
T0*!
_class
loc:@hidden2/kernel*
validate_shape(*
_output_shapes

:d
�
save/Assign_17Assignhidden2/kernel/Momentumsave/RestoreV2:17*
use_locking(*
T0*!
_class
loc:@hidden2/kernel*
validate_shape(*
_output_shapes

:d
�
save/Assign_18Assignoutput/biassave/RestoreV2:18*
T0*
_class
loc:@output/bias*
validate_shape(*
_output_shapes
:*
use_locking(
�
save/Assign_19Assignoutput/bias/Adamsave/RestoreV2:19*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@output/bias
�
save/Assign_20Assignoutput/bias/Adam_1save/RestoreV2:20*
use_locking(*
T0*
_class
loc:@output/bias*
validate_shape(*
_output_shapes
:
�
save/Assign_21Assignoutput/bias/Momentumsave/RestoreV2:21*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@output/bias
�
save/Assign_22Assignoutput/kernelsave/RestoreV2:22*
T0* 
_class
loc:@output/kernel*
validate_shape(*
_output_shapes

:*
use_locking(
�
save/Assign_23Assignoutput/kernel/Adamsave/RestoreV2:23*
validate_shape(*
_output_shapes

:*
use_locking(*
T0* 
_class
loc:@output/kernel
�
save/Assign_24Assignoutput/kernel/Adam_1save/RestoreV2:24*
use_locking(*
T0* 
_class
loc:@output/kernel*
validate_shape(*
_output_shapes

:
�
save/Assign_25Assignoutput/kernel/Momentumsave/RestoreV2:25*
validate_shape(*
_output_shapes

:*
use_locking(*
T0* 
_class
loc:@output/kernel
�
save/restore_allNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_2^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_23^save/Assign_24^save/Assign_25^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9
Z
avg_reward/tagsConst*
dtype0*
_output_shapes
: *
valueB B
avg_reward
S

avg_rewardScalarSummaryavg_reward/tagsMean*
T0*
_output_shapes
: 
N
	xent/tagsConst*
valueB
 Bxent*
dtype0*
_output_shapes
: 
F
xentScalarSummary	xent/tagsNeg*
_output_shapes
: *
T0
_
hidden_1/ConstConst*
dtype0*
_output_shapes
:*
valueB"       
u
hidden_1/MeanMeandnn/hidden1/Reluhidden_1/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
a
hidden_1/count_nonzero/zerosConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
hidden_1/count_nonzero/NotEqualNotEqualdnn/hidden1/Reluhidden_1/count_nonzero/zeros*
T0*'
_output_shapes
:���������d
�
hidden_1/count_nonzero/ToInt64Casthidden_1/count_nonzero/NotEqual*

SrcT0
*'
_output_shapes
:���������d*

DstT0	
m
hidden_1/count_nonzero/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
�
hidden_1/count_nonzero/SumSumhidden_1/count_nonzero/ToInt64hidden_1/count_nonzero/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0	
o
hidden_1/count_nonzero/CastCasthidden_1/count_nonzero/Sum*

SrcT0	*
_output_shapes
: *

DstT0
X
hidden_1/SizeSizednn/hidden1/Relu*
T0*
out_type0*
_output_shapes
: 
j
hidden_1/truediv/CastCasthidden_1/count_nonzero/Cast*

SrcT0*
_output_shapes
: *

DstT0
^
hidden_1/truediv/Cast_1Casthidden_1/Size*
_output_shapes
: *

DstT0*

SrcT0
l
hidden_1/truedivRealDivhidden_1/truediv/Casthidden_1/truediv/Cast_1*
_output_shapes
: *
T0
d
hidden_1/mean_1/tagsConst*
dtype0*
_output_shapes
: * 
valueB Bhidden_1/mean_1
f
hidden_1/mean_1ScalarSummaryhidden_1/mean_1/tagshidden_1/Mean*
T0*
_output_shapes
: 
m
hidden_1/stddev/subSubdnn/hidden1/Reluhidden_1/Mean*
T0*'
_output_shapes
:���������d
g
hidden_1/stddev/SquareSquarehidden_1/stddev/sub*'
_output_shapes
:���������d*
T0
f
hidden_1/stddev/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
�
hidden_1/stddev/MeanMeanhidden_1/stddev/Squarehidden_1/stddev/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
S
hidden_1/stddev/SqrtSqrthidden_1/stddev/Mean*
_output_shapes
: *
T0
h
hidden_1/stddev_1/tagsConst*"
valueB Bhidden_1/stddev_1*
dtype0*
_output_shapes
: 
q
hidden_1/stddev_1ScalarSummaryhidden_1/stddev_1/tagshidden_1/stddev/Sqrt*
T0*
_output_shapes
: 
a
hidden_1/Const_1Const*
valueB"       *
dtype0*
_output_shapes
:
u
hidden_1/MaxMaxdnn/hidden1/Reluhidden_1/Const_1*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
b
hidden_1/max_1/tagsConst*
valueB Bhidden_1/max_1*
dtype0*
_output_shapes
: 
c
hidden_1/max_1ScalarSummaryhidden_1/max_1/tagshidden_1/Max*
T0*
_output_shapes
: 
a
hidden_1/Const_2Const*
valueB"       *
dtype0*
_output_shapes
:
u
hidden_1/MinMindnn/hidden1/Reluhidden_1/Const_2*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
b
hidden_1/min_1/tagsConst*
valueB Bhidden_1/min_1*
dtype0*
_output_shapes
: 
c
hidden_1/min_1ScalarSummaryhidden_1/min_1/tagshidden_1/Min*
_output_shapes
: *
T0
n
hidden_1/per_nonzero/tagsConst*%
valueB Bhidden_1/per_nonzero*
dtype0*
_output_shapes
: 
s
hidden_1/per_nonzeroScalarSummaryhidden_1/per_nonzero/tagshidden_1/truediv*
T0*
_output_shapes
: 
i
hidden_1/histogram/tagConst*#
valueB Bhidden_1/histogram*
dtype0*
_output_shapes
: 
q
hidden_1/histogramHistogramSummaryhidden_1/histogram/tagdnn/hidden1/Relu*
_output_shapes
: *
T0
_
hidden_2/ConstConst*
dtype0*
_output_shapes
:*
valueB"       
u
hidden_2/MeanMeandnn/hidden1/Reluhidden_2/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
a
hidden_2/count_nonzero/zerosConst*
dtype0*
_output_shapes
: *
valueB
 *    
�
hidden_2/count_nonzero/NotEqualNotEqualdnn/hidden1/Reluhidden_2/count_nonzero/zeros*
T0*'
_output_shapes
:���������d
�
hidden_2/count_nonzero/ToInt64Casthidden_2/count_nonzero/NotEqual*

SrcT0
*'
_output_shapes
:���������d*

DstT0	
m
hidden_2/count_nonzero/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
�
hidden_2/count_nonzero/SumSumhidden_2/count_nonzero/ToInt64hidden_2/count_nonzero/Const*
T0	*
_output_shapes
: *
	keep_dims( *

Tidx0
o
hidden_2/count_nonzero/CastCasthidden_2/count_nonzero/Sum*

SrcT0	*
_output_shapes
: *

DstT0
X
hidden_2/SizeSizednn/hidden1/Relu*
T0*
out_type0*
_output_shapes
: 
j
hidden_2/truediv/CastCasthidden_2/count_nonzero/Cast*

SrcT0*
_output_shapes
: *

DstT0
^
hidden_2/truediv/Cast_1Casthidden_2/Size*

SrcT0*
_output_shapes
: *

DstT0
l
hidden_2/truedivRealDivhidden_2/truediv/Casthidden_2/truediv/Cast_1*
T0*
_output_shapes
: 
d
hidden_2/mean_1/tagsConst* 
valueB Bhidden_2/mean_1*
dtype0*
_output_shapes
: 
f
hidden_2/mean_1ScalarSummaryhidden_2/mean_1/tagshidden_2/Mean*
T0*
_output_shapes
: 
m
hidden_2/stddev/subSubdnn/hidden1/Reluhidden_2/Mean*'
_output_shapes
:���������d*
T0
g
hidden_2/stddev/SquareSquarehidden_2/stddev/sub*'
_output_shapes
:���������d*
T0
f
hidden_2/stddev/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
�
hidden_2/stddev/MeanMeanhidden_2/stddev/Squarehidden_2/stddev/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
S
hidden_2/stddev/SqrtSqrthidden_2/stddev/Mean*
T0*
_output_shapes
: 
h
hidden_2/stddev_1/tagsConst*"
valueB Bhidden_2/stddev_1*
dtype0*
_output_shapes
: 
q
hidden_2/stddev_1ScalarSummaryhidden_2/stddev_1/tagshidden_2/stddev/Sqrt*
T0*
_output_shapes
: 
a
hidden_2/Const_1Const*
valueB"       *
dtype0*
_output_shapes
:
u
hidden_2/MaxMaxdnn/hidden1/Reluhidden_2/Const_1*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
b
hidden_2/max_1/tagsConst*
valueB Bhidden_2/max_1*
dtype0*
_output_shapes
: 
c
hidden_2/max_1ScalarSummaryhidden_2/max_1/tagshidden_2/Max*
T0*
_output_shapes
: 
a
hidden_2/Const_2Const*
valueB"       *
dtype0*
_output_shapes
:
u
hidden_2/MinMindnn/hidden1/Reluhidden_2/Const_2*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
b
hidden_2/min_1/tagsConst*
valueB Bhidden_2/min_1*
dtype0*
_output_shapes
: 
c
hidden_2/min_1ScalarSummaryhidden_2/min_1/tagshidden_2/Min*
T0*
_output_shapes
: 
n
hidden_2/per_nonzero/tagsConst*%
valueB Bhidden_2/per_nonzero*
dtype0*
_output_shapes
: 
s
hidden_2/per_nonzeroScalarSummaryhidden_2/per_nonzero/tagshidden_2/truediv*
T0*
_output_shapes
: 
i
hidden_2/histogram/tagConst*
dtype0*
_output_shapes
: *#
valueB Bhidden_2/histogram
q
hidden_2/histogramHistogramSummaryhidden_2/histogram/tagdnn/hidden1/Relu*
T0*
_output_shapes
: 
�
Merge/MergeSummaryMergeSummary
avg_rewardxenthidden_1/mean_1hidden_1/stddev_1hidden_1/max_1hidden_1/min_1hidden_1/per_nonzerohidden_1/histogramhidden_2/mean_1hidden_2/stddev_1hidden_2/max_1hidden_2/min_1hidden_2/per_nonzerohidden_2/histogram*
N*
_output_shapes
: "n~л�N     �h��	u�����AJ��
�(�(
:
Add
x"T
y"T
z"T"
Ttype:
2	
�
	ApplyAdam
var"T�	
m"T�	
v"T�
beta1_power"T
beta2_power"T
lr"T

beta1"T

beta2"T
epsilon"T	
grad"T
out"T�" 
Ttype:
2	"
use_lockingbool( "
use_nesterovbool( 
�
ApplyMomentum
var"T�
accum"T�
lr"T	
grad"T
momentum"T
out"T�" 
Ttype:
2	"
use_lockingbool( "
use_nesterovbool( 
x
Assign
ref"T�

value"T

output_ref"T�"	
Ttype"
validate_shapebool("
use_lockingbool(�
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
~
BiasAddGrad
out_backprop"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
8
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype
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
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
?
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
�
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
V
HistogramSummary
tag
values"T
summary"
Ttype0:
2	
.
Identity

input"T
output"T"	
Ttype
,
Log
x"T
y"T"
Ttype:

2
p
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
	2
�
Max

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
;
Maximum
x"T
y"T
z"T"
Ttype:

2	�
�
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
8
MergeSummary
inputs*N
summary"
Nint(0
�
Min

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
=
Mul
x"T
y"T
z"T"
Ttype:
2	�
.
Neg
x"T
y"T"
Ttype:

2	

NoOp
E
NotEqual
x"T
y"T
z
"
Ttype:
2	
�
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
L
PreventGradient

input"T
output"T"	
Ttype"
messagestring 
�
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	�
a
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:	
2	
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
5

Reciprocal
x"T
y"T"
Ttype:

2	
D
Relu
features"T
activations"T"
Ttype:
2	
V
ReluGrad
	gradients"T
features"T
	backprops"T"
Ttype:
2	
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
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
P
ScalarSummary
tags
values"T
summary"
Ttype:
2	
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
O
Size

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
9
Softmax
logits"T
softmax"T"
Ttype:
2
�
#SparseSoftmaxCrossEntropyWithLogits
features"T
labels"Tlabels	
loss"T
backprop"T"
Ttype:
2"
Tlabelstype0	:
2	
-
Sqrt
x"T
y"T"
Ttype:

2
1
Square
x"T
y"T"
Ttype:

2	
�
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
:
Sub
x"T
y"T
z"T"
Ttype:
2	
�
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
�
UnsortedSegmentSum	
data"T
segment_ids"Tindices
num_segments"Tnumsegments
output"T" 
Ttype:
2	"
Tindicestype:
2	" 
Tnumsegmentstype0:
2	
s

VariableV2
ref"dtype�"
shapeshape"
dtypetype"
	containerstring "
shared_namestring �
&
	ZerosLike
x"T
y"T"	
Ttype*1.10.12v1.10.0-12-g4dcfddc5d1��
p
PlaceholderPlaceholder*
dtype0*(
_output_shapes
:����������*
shape:����������
R
Placeholder_1Placeholder*
shape:*
dtype0*
_output_shapes
:
h
Placeholder_2Placeholder*
dtype0*#
_output_shapes
:���������*
shape:���������
h
Placeholder_3Placeholder*
dtype0*#
_output_shapes
:���������*
shape:���������
h
Placeholder_4Placeholder*
dtype0*#
_output_shapes
:���������*
shape:���������
O
ConstConst*
dtype0*
_output_shapes
:*
valueB: 
`
MeanMeanPlaceholder_4Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
�
/hidden1/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*
valueB"@  d   *!
_class
loc:@hidden1/kernel
�
-hidden1/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *g���*!
_class
loc:@hidden1/kernel
�
-hidden1/kernel/Initializer/random_uniform/maxConst*
valueB
 *g��=*!
_class
loc:@hidden1/kernel*
dtype0*
_output_shapes
: 
�
7hidden1/kernel/Initializer/random_uniform/RandomUniformRandomUniform/hidden1/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes
:	�d*

seed *
T0*!
_class
loc:@hidden1/kernel*
seed2 
�
-hidden1/kernel/Initializer/random_uniform/subSub-hidden1/kernel/Initializer/random_uniform/max-hidden1/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@hidden1/kernel*
_output_shapes
: 
�
-hidden1/kernel/Initializer/random_uniform/mulMul7hidden1/kernel/Initializer/random_uniform/RandomUniform-hidden1/kernel/Initializer/random_uniform/sub*
T0*!
_class
loc:@hidden1/kernel*
_output_shapes
:	�d
�
)hidden1/kernel/Initializer/random_uniformAdd-hidden1/kernel/Initializer/random_uniform/mul-hidden1/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@hidden1/kernel*
_output_shapes
:	�d
�
hidden1/kernel
VariableV2*
shape:	�d*
dtype0*
_output_shapes
:	�d*
shared_name *!
_class
loc:@hidden1/kernel*
	container 
�
hidden1/kernel/AssignAssignhidden1/kernel)hidden1/kernel/Initializer/random_uniform*
T0*!
_class
loc:@hidden1/kernel*
validate_shape(*
_output_shapes
:	�d*
use_locking(
|
hidden1/kernel/readIdentityhidden1/kernel*
T0*!
_class
loc:@hidden1/kernel*
_output_shapes
:	�d
�
hidden1/bias/Initializer/zerosConst*
dtype0*
_output_shapes
:d*
valueBd*    *
_class
loc:@hidden1/bias
�
hidden1/bias
VariableV2*
	container *
shape:d*
dtype0*
_output_shapes
:d*
shared_name *
_class
loc:@hidden1/bias
�
hidden1/bias/AssignAssignhidden1/biashidden1/bias/Initializer/zeros*
validate_shape(*
_output_shapes
:d*
use_locking(*
T0*
_class
loc:@hidden1/bias
q
hidden1/bias/readIdentityhidden1/bias*
T0*
_class
loc:@hidden1/bias*
_output_shapes
:d
�
dnn/hidden1/MatMulMatMulPlaceholderhidden1/kernel/read*
T0*
transpose_a( *'
_output_shapes
:���������d*
transpose_b( 
�
dnn/hidden1/BiasAddBiasAdddnn/hidden1/MatMulhidden1/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:���������d
_
dnn/hidden1/ReluReludnn/hidden1/BiasAdd*
T0*'
_output_shapes
:���������d
�
/hidden2/kernel/Initializer/random_uniform/shapeConst*
valueB"d      *!
_class
loc:@hidden2/kernel*
dtype0*
_output_shapes
:
�
-hidden2/kernel/Initializer/random_uniform/minConst*
valueB
 *��[�*!
_class
loc:@hidden2/kernel*
dtype0*
_output_shapes
: 
�
-hidden2/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *��[>*!
_class
loc:@hidden2/kernel
�
7hidden2/kernel/Initializer/random_uniform/RandomUniformRandomUniform/hidden2/kernel/Initializer/random_uniform/shape*
seed2 *
dtype0*
_output_shapes

:d*

seed *
T0*!
_class
loc:@hidden2/kernel
�
-hidden2/kernel/Initializer/random_uniform/subSub-hidden2/kernel/Initializer/random_uniform/max-hidden2/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*!
_class
loc:@hidden2/kernel
�
-hidden2/kernel/Initializer/random_uniform/mulMul7hidden2/kernel/Initializer/random_uniform/RandomUniform-hidden2/kernel/Initializer/random_uniform/sub*
_output_shapes

:d*
T0*!
_class
loc:@hidden2/kernel
�
)hidden2/kernel/Initializer/random_uniformAdd-hidden2/kernel/Initializer/random_uniform/mul-hidden2/kernel/Initializer/random_uniform/min*
_output_shapes

:d*
T0*!
_class
loc:@hidden2/kernel
�
hidden2/kernel
VariableV2*
dtype0*
_output_shapes

:d*
shared_name *!
_class
loc:@hidden2/kernel*
	container *
shape
:d
�
hidden2/kernel/AssignAssignhidden2/kernel)hidden2/kernel/Initializer/random_uniform*
use_locking(*
T0*!
_class
loc:@hidden2/kernel*
validate_shape(*
_output_shapes

:d
{
hidden2/kernel/readIdentityhidden2/kernel*
T0*!
_class
loc:@hidden2/kernel*
_output_shapes

:d
�
hidden2/bias/Initializer/zerosConst*
dtype0*
_output_shapes
:*
valueB*    *
_class
loc:@hidden2/bias
�
hidden2/bias
VariableV2*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name *
_class
loc:@hidden2/bias
�
hidden2/bias/AssignAssignhidden2/biashidden2/bias/Initializer/zeros*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@hidden2/bias
q
hidden2/bias/readIdentityhidden2/bias*
_output_shapes
:*
T0*
_class
loc:@hidden2/bias
�
dnn/hidden2/MatMulMatMuldnn/hidden1/Reluhidden2/kernel/read*
T0*
transpose_a( *'
_output_shapes
:���������*
transpose_b( 
�
dnn/hidden2/BiasAddBiasAdddnn/hidden2/MatMulhidden2/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:���������
_
dnn/hidden2/ReluReludnn/hidden2/BiasAdd*
T0*'
_output_shapes
:���������
�
.output/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*
valueB"      * 
_class
loc:@output/kernel
�
,output/kernel/Initializer/random_uniform/minConst*
valueB
 *A׾* 
_class
loc:@output/kernel*
dtype0*
_output_shapes
: 
�
,output/kernel/Initializer/random_uniform/maxConst*
valueB
 *A�>* 
_class
loc:@output/kernel*
dtype0*
_output_shapes
: 
�
6output/kernel/Initializer/random_uniform/RandomUniformRandomUniform.output/kernel/Initializer/random_uniform/shape*
seed2 *
dtype0*
_output_shapes

:*

seed *
T0* 
_class
loc:@output/kernel
�
,output/kernel/Initializer/random_uniform/subSub,output/kernel/Initializer/random_uniform/max,output/kernel/Initializer/random_uniform/min*
T0* 
_class
loc:@output/kernel*
_output_shapes
: 
�
,output/kernel/Initializer/random_uniform/mulMul6output/kernel/Initializer/random_uniform/RandomUniform,output/kernel/Initializer/random_uniform/sub*
T0* 
_class
loc:@output/kernel*
_output_shapes

:
�
(output/kernel/Initializer/random_uniformAdd,output/kernel/Initializer/random_uniform/mul,output/kernel/Initializer/random_uniform/min*
T0* 
_class
loc:@output/kernel*
_output_shapes

:
�
output/kernel
VariableV2*
	container *
shape
:*
dtype0*
_output_shapes

:*
shared_name * 
_class
loc:@output/kernel
�
output/kernel/AssignAssignoutput/kernel(output/kernel/Initializer/random_uniform*
use_locking(*
T0* 
_class
loc:@output/kernel*
validate_shape(*
_output_shapes

:
x
output/kernel/readIdentityoutput/kernel*
_output_shapes

:*
T0* 
_class
loc:@output/kernel
�
output/bias/Initializer/zerosConst*
valueB*    *
_class
loc:@output/bias*
dtype0*
_output_shapes
:
�
output/bias
VariableV2*
shared_name *
_class
loc:@output/bias*
	container *
shape:*
dtype0*
_output_shapes
:
�
output/bias/AssignAssignoutput/biasoutput/bias/Initializer/zeros*
T0*
_class
loc:@output/bias*
validate_shape(*
_output_shapes
:*
use_locking(
n
output/bias/readIdentityoutput/bias*
T0*
_class
loc:@output/bias*
_output_shapes
:
�
output/MatMulMatMuldnn/hidden2/Reluoutput/kernel/read*
T0*
transpose_a( *'
_output_shapes
:���������*
transpose_b( 
�
output/BiasAddBiasAddoutput/MatMuloutput/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:���������
�
.loss/SparseSoftmaxCrossEntropyWithLogits/ShapeShapePlaceholder_1*
T0*
out_type0*#
_output_shapes
:���������
�
Lloss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsoutput/BiasAddPlaceholder_1*
Tlabels0*6
_output_shapes$
":���������:���������*
T0
T

loss/ConstConst*
valueB: *
dtype0*
_output_shapes
:
�
	loss/lossMeanLloss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits
loss/Const*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
X
train/gradients/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
^
train/gradients/grad_ys_0Const*
valueB
 *  �?*
dtype0*
_output_shapes
: 
�
train/gradients/FillFilltrain/gradients/Shapetrain/gradients/grad_ys_0*
T0*

index_type0*
_output_shapes
: 
v
,train/gradients/loss/loss_grad/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:
�
&train/gradients/loss/loss_grad/ReshapeReshapetrain/gradients/Fill,train/gradients/loss/loss_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:
�
$train/gradients/loss/loss_grad/ShapeShapeLloss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
T0*
out_type0*
_output_shapes
:
�
#train/gradients/loss/loss_grad/TileTile&train/gradients/loss/loss_grad/Reshape$train/gradients/loss/loss_grad/Shape*

Tmultiples0*
T0*#
_output_shapes
:���������
�
&train/gradients/loss/loss_grad/Shape_1ShapeLloss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
T0*
out_type0*
_output_shapes
:
i
&train/gradients/loss/loss_grad/Shape_2Const*
valueB *
dtype0*
_output_shapes
: 
n
$train/gradients/loss/loss_grad/ConstConst*
valueB: *
dtype0*
_output_shapes
:
�
#train/gradients/loss/loss_grad/ProdProd&train/gradients/loss/loss_grad/Shape_1$train/gradients/loss/loss_grad/Const*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
p
&train/gradients/loss/loss_grad/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
�
%train/gradients/loss/loss_grad/Prod_1Prod&train/gradients/loss/loss_grad/Shape_2&train/gradients/loss/loss_grad/Const_1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
j
(train/gradients/loss/loss_grad/Maximum/yConst*
value	B :*
dtype0*
_output_shapes
: 
�
&train/gradients/loss/loss_grad/MaximumMaximum%train/gradients/loss/loss_grad/Prod_1(train/gradients/loss/loss_grad/Maximum/y*
T0*
_output_shapes
: 
�
'train/gradients/loss/loss_grad/floordivFloorDiv#train/gradients/loss/loss_grad/Prod&train/gradients/loss/loss_grad/Maximum*
_output_shapes
: *
T0
�
#train/gradients/loss/loss_grad/CastCast'train/gradients/loss/loss_grad/floordiv*

DstT0*
_output_shapes
: *

SrcT0
�
&train/gradients/loss/loss_grad/truedivRealDiv#train/gradients/loss/loss_grad/Tile#train/gradients/loss/loss_grad/Cast*#
_output_shapes
:���������*
T0
�
train/gradients/zeros_like	ZerosLikeNloss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*'
_output_shapes
:���������*
T0
�
qtrain/gradients/loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientNloss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*
T0*'
_output_shapes
:���������*�
message��Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()
�
ptrain/gradients/loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
valueB :
���������*
dtype0*
_output_shapes
: 
�
ltrain/gradients/loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims&train/gradients/loss/loss_grad/truedivptrain/gradients/loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*
T0*'
_output_shapes
:���������*

Tdim0
�
etrain/gradients/loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mulMulltrain/gradients/loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimsqtrain/gradients/loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
T0*'
_output_shapes
:���������
�
/train/gradients/output/BiasAdd_grad/BiasAddGradBiasAddGradetrain/gradients/loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mul*
data_formatNHWC*
_output_shapes
:*
T0
�
4train/gradients/output/BiasAdd_grad/tuple/group_depsNoOpf^train/gradients/loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mul0^train/gradients/output/BiasAdd_grad/BiasAddGrad
�
<train/gradients/output/BiasAdd_grad/tuple/control_dependencyIdentityetrain/gradients/loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mul5^train/gradients/output/BiasAdd_grad/tuple/group_deps*
T0*x
_classn
ljloc:@train/gradients/loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mul*'
_output_shapes
:���������
�
>train/gradients/output/BiasAdd_grad/tuple/control_dependency_1Identity/train/gradients/output/BiasAdd_grad/BiasAddGrad5^train/gradients/output/BiasAdd_grad/tuple/group_deps*
T0*B
_class8
64loc:@train/gradients/output/BiasAdd_grad/BiasAddGrad*
_output_shapes
:
�
)train/gradients/output/MatMul_grad/MatMulMatMul<train/gradients/output/BiasAdd_grad/tuple/control_dependencyoutput/kernel/read*
T0*
transpose_a( *'
_output_shapes
:���������*
transpose_b(
�
+train/gradients/output/MatMul_grad/MatMul_1MatMuldnn/hidden2/Relu<train/gradients/output/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*
transpose_a(*
_output_shapes

:
�
3train/gradients/output/MatMul_grad/tuple/group_depsNoOp*^train/gradients/output/MatMul_grad/MatMul,^train/gradients/output/MatMul_grad/MatMul_1
�
;train/gradients/output/MatMul_grad/tuple/control_dependencyIdentity)train/gradients/output/MatMul_grad/MatMul4^train/gradients/output/MatMul_grad/tuple/group_deps*
T0*<
_class2
0.loc:@train/gradients/output/MatMul_grad/MatMul*'
_output_shapes
:���������
�
=train/gradients/output/MatMul_grad/tuple/control_dependency_1Identity+train/gradients/output/MatMul_grad/MatMul_14^train/gradients/output/MatMul_grad/tuple/group_deps*
_output_shapes

:*
T0*>
_class4
20loc:@train/gradients/output/MatMul_grad/MatMul_1
�
.train/gradients/dnn/hidden2/Relu_grad/ReluGradReluGrad;train/gradients/output/MatMul_grad/tuple/control_dependencydnn/hidden2/Relu*
T0*'
_output_shapes
:���������
�
4train/gradients/dnn/hidden2/BiasAdd_grad/BiasAddGradBiasAddGrad.train/gradients/dnn/hidden2/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
:
�
9train/gradients/dnn/hidden2/BiasAdd_grad/tuple/group_depsNoOp5^train/gradients/dnn/hidden2/BiasAdd_grad/BiasAddGrad/^train/gradients/dnn/hidden2/Relu_grad/ReluGrad
�
Atrain/gradients/dnn/hidden2/BiasAdd_grad/tuple/control_dependencyIdentity.train/gradients/dnn/hidden2/Relu_grad/ReluGrad:^train/gradients/dnn/hidden2/BiasAdd_grad/tuple/group_deps*
T0*A
_class7
53loc:@train/gradients/dnn/hidden2/Relu_grad/ReluGrad*'
_output_shapes
:���������
�
Ctrain/gradients/dnn/hidden2/BiasAdd_grad/tuple/control_dependency_1Identity4train/gradients/dnn/hidden2/BiasAdd_grad/BiasAddGrad:^train/gradients/dnn/hidden2/BiasAdd_grad/tuple/group_deps*
T0*G
_class=
;9loc:@train/gradients/dnn/hidden2/BiasAdd_grad/BiasAddGrad*
_output_shapes
:
�
.train/gradients/dnn/hidden2/MatMul_grad/MatMulMatMulAtrain/gradients/dnn/hidden2/BiasAdd_grad/tuple/control_dependencyhidden2/kernel/read*
T0*
transpose_a( *'
_output_shapes
:���������d*
transpose_b(
�
0train/gradients/dnn/hidden2/MatMul_grad/MatMul_1MatMuldnn/hidden1/ReluAtrain/gradients/dnn/hidden2/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*
transpose_a(*
_output_shapes

:d
�
8train/gradients/dnn/hidden2/MatMul_grad/tuple/group_depsNoOp/^train/gradients/dnn/hidden2/MatMul_grad/MatMul1^train/gradients/dnn/hidden2/MatMul_grad/MatMul_1
�
@train/gradients/dnn/hidden2/MatMul_grad/tuple/control_dependencyIdentity.train/gradients/dnn/hidden2/MatMul_grad/MatMul9^train/gradients/dnn/hidden2/MatMul_grad/tuple/group_deps*'
_output_shapes
:���������d*
T0*A
_class7
53loc:@train/gradients/dnn/hidden2/MatMul_grad/MatMul
�
Btrain/gradients/dnn/hidden2/MatMul_grad/tuple/control_dependency_1Identity0train/gradients/dnn/hidden2/MatMul_grad/MatMul_19^train/gradients/dnn/hidden2/MatMul_grad/tuple/group_deps*
T0*C
_class9
75loc:@train/gradients/dnn/hidden2/MatMul_grad/MatMul_1*
_output_shapes

:d
�
.train/gradients/dnn/hidden1/Relu_grad/ReluGradReluGrad@train/gradients/dnn/hidden2/MatMul_grad/tuple/control_dependencydnn/hidden1/Relu*
T0*'
_output_shapes
:���������d
�
4train/gradients/dnn/hidden1/BiasAdd_grad/BiasAddGradBiasAddGrad.train/gradients/dnn/hidden1/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
:d
�
9train/gradients/dnn/hidden1/BiasAdd_grad/tuple/group_depsNoOp5^train/gradients/dnn/hidden1/BiasAdd_grad/BiasAddGrad/^train/gradients/dnn/hidden1/Relu_grad/ReluGrad
�
Atrain/gradients/dnn/hidden1/BiasAdd_grad/tuple/control_dependencyIdentity.train/gradients/dnn/hidden1/Relu_grad/ReluGrad:^train/gradients/dnn/hidden1/BiasAdd_grad/tuple/group_deps*'
_output_shapes
:���������d*
T0*A
_class7
53loc:@train/gradients/dnn/hidden1/Relu_grad/ReluGrad
�
Ctrain/gradients/dnn/hidden1/BiasAdd_grad/tuple/control_dependency_1Identity4train/gradients/dnn/hidden1/BiasAdd_grad/BiasAddGrad:^train/gradients/dnn/hidden1/BiasAdd_grad/tuple/group_deps*
T0*G
_class=
;9loc:@train/gradients/dnn/hidden1/BiasAdd_grad/BiasAddGrad*
_output_shapes
:d
�
.train/gradients/dnn/hidden1/MatMul_grad/MatMulMatMulAtrain/gradients/dnn/hidden1/BiasAdd_grad/tuple/control_dependencyhidden1/kernel/read*
T0*
transpose_a( *(
_output_shapes
:����������*
transpose_b(
�
0train/gradients/dnn/hidden1/MatMul_grad/MatMul_1MatMulPlaceholderAtrain/gradients/dnn/hidden1/BiasAdd_grad/tuple/control_dependency*
transpose_a(*
_output_shapes
:	�d*
transpose_b( *
T0
�
8train/gradients/dnn/hidden1/MatMul_grad/tuple/group_depsNoOp/^train/gradients/dnn/hidden1/MatMul_grad/MatMul1^train/gradients/dnn/hidden1/MatMul_grad/MatMul_1
�
@train/gradients/dnn/hidden1/MatMul_grad/tuple/control_dependencyIdentity.train/gradients/dnn/hidden1/MatMul_grad/MatMul9^train/gradients/dnn/hidden1/MatMul_grad/tuple/group_deps*(
_output_shapes
:����������*
T0*A
_class7
53loc:@train/gradients/dnn/hidden1/MatMul_grad/MatMul
�
Btrain/gradients/dnn/hidden1/MatMul_grad/tuple/control_dependency_1Identity0train/gradients/dnn/hidden1/MatMul_grad/MatMul_19^train/gradients/dnn/hidden1/MatMul_grad/tuple/group_deps*
T0*C
_class9
75loc:@train/gradients/dnn/hidden1/MatMul_grad/MatMul_1*
_output_shapes
:	�d
�
9hidden1/kernel/Momentum/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB"@  d   *!
_class
loc:@hidden1/kernel
�
/hidden1/kernel/Momentum/Initializer/zeros/ConstConst*
valueB
 *    *!
_class
loc:@hidden1/kernel*
dtype0*
_output_shapes
: 
�
)hidden1/kernel/Momentum/Initializer/zerosFill9hidden1/kernel/Momentum/Initializer/zeros/shape_as_tensor/hidden1/kernel/Momentum/Initializer/zeros/Const*
T0*

index_type0*!
_class
loc:@hidden1/kernel*
_output_shapes
:	�d
�
hidden1/kernel/Momentum
VariableV2*
shared_name *!
_class
loc:@hidden1/kernel*
	container *
shape:	�d*
dtype0*
_output_shapes
:	�d
�
hidden1/kernel/Momentum/AssignAssignhidden1/kernel/Momentum)hidden1/kernel/Momentum/Initializer/zeros*
use_locking(*
T0*!
_class
loc:@hidden1/kernel*
validate_shape(*
_output_shapes
:	�d
�
hidden1/kernel/Momentum/readIdentityhidden1/kernel/Momentum*
T0*!
_class
loc:@hidden1/kernel*
_output_shapes
:	�d
�
'hidden1/bias/Momentum/Initializer/zerosConst*
valueBd*    *
_class
loc:@hidden1/bias*
dtype0*
_output_shapes
:d
�
hidden1/bias/Momentum
VariableV2*
shared_name *
_class
loc:@hidden1/bias*
	container *
shape:d*
dtype0*
_output_shapes
:d
�
hidden1/bias/Momentum/AssignAssignhidden1/bias/Momentum'hidden1/bias/Momentum/Initializer/zeros*
use_locking(*
T0*
_class
loc:@hidden1/bias*
validate_shape(*
_output_shapes
:d
�
hidden1/bias/Momentum/readIdentityhidden1/bias/Momentum*
T0*
_class
loc:@hidden1/bias*
_output_shapes
:d
�
9hidden2/kernel/Momentum/Initializer/zeros/shape_as_tensorConst*
valueB"d      *!
_class
loc:@hidden2/kernel*
dtype0*
_output_shapes
:
�
/hidden2/kernel/Momentum/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    *!
_class
loc:@hidden2/kernel
�
)hidden2/kernel/Momentum/Initializer/zerosFill9hidden2/kernel/Momentum/Initializer/zeros/shape_as_tensor/hidden2/kernel/Momentum/Initializer/zeros/Const*
T0*

index_type0*!
_class
loc:@hidden2/kernel*
_output_shapes

:d
�
hidden2/kernel/Momentum
VariableV2*
shared_name *!
_class
loc:@hidden2/kernel*
	container *
shape
:d*
dtype0*
_output_shapes

:d
�
hidden2/kernel/Momentum/AssignAssignhidden2/kernel/Momentum)hidden2/kernel/Momentum/Initializer/zeros*
use_locking(*
T0*!
_class
loc:@hidden2/kernel*
validate_shape(*
_output_shapes

:d
�
hidden2/kernel/Momentum/readIdentityhidden2/kernel/Momentum*
T0*!
_class
loc:@hidden2/kernel*
_output_shapes

:d
�
'hidden2/bias/Momentum/Initializer/zerosConst*
valueB*    *
_class
loc:@hidden2/bias*
dtype0*
_output_shapes
:
�
hidden2/bias/Momentum
VariableV2*
dtype0*
_output_shapes
:*
shared_name *
_class
loc:@hidden2/bias*
	container *
shape:
�
hidden2/bias/Momentum/AssignAssignhidden2/bias/Momentum'hidden2/bias/Momentum/Initializer/zeros*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@hidden2/bias
�
hidden2/bias/Momentum/readIdentityhidden2/bias/Momentum*
T0*
_class
loc:@hidden2/bias*
_output_shapes
:
�
(output/kernel/Momentum/Initializer/zerosConst*
valueB*    * 
_class
loc:@output/kernel*
dtype0*
_output_shapes

:
�
output/kernel/Momentum
VariableV2*
shared_name * 
_class
loc:@output/kernel*
	container *
shape
:*
dtype0*
_output_shapes

:
�
output/kernel/Momentum/AssignAssignoutput/kernel/Momentum(output/kernel/Momentum/Initializer/zeros*
use_locking(*
T0* 
_class
loc:@output/kernel*
validate_shape(*
_output_shapes

:
�
output/kernel/Momentum/readIdentityoutput/kernel/Momentum*
_output_shapes

:*
T0* 
_class
loc:@output/kernel
�
&output/bias/Momentum/Initializer/zerosConst*
valueB*    *
_class
loc:@output/bias*
dtype0*
_output_shapes
:
�
output/bias/Momentum
VariableV2*
_class
loc:@output/bias*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name 
�
output/bias/Momentum/AssignAssignoutput/bias/Momentum&output/bias/Momentum/Initializer/zeros*
use_locking(*
T0*
_class
loc:@output/bias*
validate_shape(*
_output_shapes
:
�
output/bias/Momentum/readIdentityoutput/bias/Momentum*
_output_shapes
:*
T0*
_class
loc:@output/bias
a
train/Momentum/learning_rateConst*
valueB
 *
�#<*
dtype0*
_output_shapes
: 
\
train/Momentum/momentumConst*
valueB
 *fff?*
dtype0*
_output_shapes
: 
�
2train/Momentum/update_hidden1/kernel/ApplyMomentumApplyMomentumhidden1/kernelhidden1/kernel/Momentumtrain/Momentum/learning_rateBtrain/gradients/dnn/hidden1/MatMul_grad/tuple/control_dependency_1train/Momentum/momentum*
use_locking( *
T0*!
_class
loc:@hidden1/kernel*
use_nesterov( *
_output_shapes
:	�d
�
0train/Momentum/update_hidden1/bias/ApplyMomentumApplyMomentumhidden1/biashidden1/bias/Momentumtrain/Momentum/learning_rateCtrain/gradients/dnn/hidden1/BiasAdd_grad/tuple/control_dependency_1train/Momentum/momentum*
use_nesterov( *
_output_shapes
:d*
use_locking( *
T0*
_class
loc:@hidden1/bias
�
2train/Momentum/update_hidden2/kernel/ApplyMomentumApplyMomentumhidden2/kernelhidden2/kernel/Momentumtrain/Momentum/learning_rateBtrain/gradients/dnn/hidden2/MatMul_grad/tuple/control_dependency_1train/Momentum/momentum*
use_nesterov( *
_output_shapes

:d*
use_locking( *
T0*!
_class
loc:@hidden2/kernel
�
0train/Momentum/update_hidden2/bias/ApplyMomentumApplyMomentumhidden2/biashidden2/bias/Momentumtrain/Momentum/learning_rateCtrain/gradients/dnn/hidden2/BiasAdd_grad/tuple/control_dependency_1train/Momentum/momentum*
use_locking( *
T0*
_class
loc:@hidden2/bias*
use_nesterov( *
_output_shapes
:
�
1train/Momentum/update_output/kernel/ApplyMomentumApplyMomentumoutput/kerneloutput/kernel/Momentumtrain/Momentum/learning_rate=train/gradients/output/MatMul_grad/tuple/control_dependency_1train/Momentum/momentum*
use_nesterov( *
_output_shapes

:*
use_locking( *
T0* 
_class
loc:@output/kernel
�
/train/Momentum/update_output/bias/ApplyMomentumApplyMomentumoutput/biasoutput/bias/Momentumtrain/Momentum/learning_rate>train/gradients/output/BiasAdd_grad/tuple/control_dependency_1train/Momentum/momentum*
use_nesterov( *
_output_shapes
:*
use_locking( *
T0*
_class
loc:@output/bias
�
train/MomentumNoOp1^train/Momentum/update_hidden1/bias/ApplyMomentum3^train/Momentum/update_hidden1/kernel/ApplyMomentum1^train/Momentum/update_hidden2/bias/ApplyMomentum3^train/Momentum/update_hidden2/kernel/ApplyMomentum0^train/Momentum/update_output/bias/ApplyMomentum2^train/Momentum/update_output/kernel/ApplyMomentum
T
SoftmaxSoftmaxoutput/BiasAdd*
T0*'
_output_shapes
:���������
S
ShapeShapeoutput/BiasAdd*
T0*
out_type0*
_output_shapes
:
]
strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
_
strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
_
strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
�
strided_sliceStridedSliceShapestrided_slice/stackstrided_slice/stack_1strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
M
range/startConst*
value	B : *
dtype0*
_output_shapes
: 
M
range/deltaConst*
dtype0*
_output_shapes
: *
value	B :
h
rangeRangerange/startstrided_slicerange/delta*#
_output_shapes
:���������*

Tidx0
U
Shape_1Shapeoutput/BiasAdd*
_output_shapes
:*
T0*
out_type0
_
strided_slice_1/stackConst*
valueB:*
dtype0*
_output_shapes
:
a
strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
a
strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
�
strided_slice_1StridedSliceShape_1strided_slice_1/stackstrided_slice_1/stack_1strided_slice_1/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0
P
mulMulrangestrided_slice_1*#
_output_shapes
:���������*
T0
L
addAddmulPlaceholder_2*
T0*#
_output_shapes
:���������
`
Reshape/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
f
ReshapeReshapeSoftmaxReshape/shape*
T0*
Tshape0*#
_output_shapes
:���������
O
GatherV2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�
GatherV2GatherV2ReshapeaddGatherV2/axis*
Taxis0*
Tindices0*
Tparams0*#
_output_shapes
:���������
B
LogLogGatherV2*
T0*#
_output_shapes
:���������
N
mul_1MulLogPlaceholder_3*
T0*#
_output_shapes
:���������
Q
Const_1Const*
dtype0*
_output_shapes
:*
valueB: 
\
Mean_1Meanmul_1Const_1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
3
NegNegMean_1*
T0*
_output_shapes
: 
R
gradients/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
X
gradients/grad_ys_0Const*
valueB
 *  �?*
dtype0*
_output_shapes
: 
o
gradients/FillFillgradients/Shapegradients/grad_ys_0*
T0*

index_type0*
_output_shapes
: 
N
gradients/Neg_grad/NegNeggradients/Fill*
_output_shapes
: *
T0
m
#gradients/Mean_1_grad/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:
�
gradients/Mean_1_grad/ReshapeReshapegradients/Neg_grad/Neg#gradients/Mean_1_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:
`
gradients/Mean_1_grad/ShapeShapemul_1*
T0*
out_type0*
_output_shapes
:
�
gradients/Mean_1_grad/TileTilegradients/Mean_1_grad/Reshapegradients/Mean_1_grad/Shape*#
_output_shapes
:���������*

Tmultiples0*
T0
b
gradients/Mean_1_grad/Shape_1Shapemul_1*
T0*
out_type0*
_output_shapes
:
`
gradients/Mean_1_grad/Shape_2Const*
dtype0*
_output_shapes
: *
valueB 
e
gradients/Mean_1_grad/ConstConst*
valueB: *
dtype0*
_output_shapes
:
�
gradients/Mean_1_grad/ProdProdgradients/Mean_1_grad/Shape_1gradients/Mean_1_grad/Const*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
g
gradients/Mean_1_grad/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
�
gradients/Mean_1_grad/Prod_1Prodgradients/Mean_1_grad/Shape_2gradients/Mean_1_grad/Const_1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
a
gradients/Mean_1_grad/Maximum/yConst*
value	B :*
dtype0*
_output_shapes
: 
�
gradients/Mean_1_grad/MaximumMaximumgradients/Mean_1_grad/Prod_1gradients/Mean_1_grad/Maximum/y*
T0*
_output_shapes
: 
�
gradients/Mean_1_grad/floordivFloorDivgradients/Mean_1_grad/Prodgradients/Mean_1_grad/Maximum*
T0*
_output_shapes
: 
r
gradients/Mean_1_grad/CastCastgradients/Mean_1_grad/floordiv*

SrcT0*

DstT0*
_output_shapes
: 
�
gradients/Mean_1_grad/truedivRealDivgradients/Mean_1_grad/Tilegradients/Mean_1_grad/Cast*
T0*#
_output_shapes
:���������
]
gradients/mul_1_grad/ShapeShapeLog*
T0*
out_type0*
_output_shapes
:
i
gradients/mul_1_grad/Shape_1ShapePlaceholder_3*
T0*
out_type0*
_output_shapes
:
�
*gradients/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_1_grad/Shapegradients/mul_1_grad/Shape_1*2
_output_shapes 
:���������:���������*
T0
{
gradients/mul_1_grad/MulMulgradients/Mean_1_grad/truedivPlaceholder_3*
T0*#
_output_shapes
:���������
�
gradients/mul_1_grad/SumSumgradients/mul_1_grad/Mul*gradients/mul_1_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
�
gradients/mul_1_grad/ReshapeReshapegradients/mul_1_grad/Sumgradients/mul_1_grad/Shape*
T0*
Tshape0*#
_output_shapes
:���������
s
gradients/mul_1_grad/Mul_1MulLoggradients/Mean_1_grad/truediv*
T0*#
_output_shapes
:���������
�
gradients/mul_1_grad/Sum_1Sumgradients/mul_1_grad/Mul_1,gradients/mul_1_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
�
gradients/mul_1_grad/Reshape_1Reshapegradients/mul_1_grad/Sum_1gradients/mul_1_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:���������
m
%gradients/mul_1_grad/tuple/group_depsNoOp^gradients/mul_1_grad/Reshape^gradients/mul_1_grad/Reshape_1
�
-gradients/mul_1_grad/tuple/control_dependencyIdentitygradients/mul_1_grad/Reshape&^gradients/mul_1_grad/tuple/group_deps*#
_output_shapes
:���������*
T0*/
_class%
#!loc:@gradients/mul_1_grad/Reshape
�
/gradients/mul_1_grad/tuple/control_dependency_1Identitygradients/mul_1_grad/Reshape_1&^gradients/mul_1_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/mul_1_grad/Reshape_1*#
_output_shapes
:���������
�
gradients/Log_grad/Reciprocal
ReciprocalGatherV2.^gradients/mul_1_grad/tuple/control_dependency*#
_output_shapes
:���������*
T0
�
gradients/Log_grad/mulMul-gradients/mul_1_grad/tuple/control_dependencygradients/Log_grad/Reciprocal*#
_output_shapes
:���������*
T0
�
gradients/GatherV2_grad/ShapeShapeReshape*
T0*
out_type0	*
_class
loc:@Reshape*
_output_shapes
:
�
gradients/GatherV2_grad/ToInt32Castgradients/GatherV2_grad/Shape*

SrcT0	*
_class
loc:@Reshape*

DstT0*
_output_shapes
:
Z
gradients/GatherV2_grad/SizeSizeadd*
T0*
out_type0*
_output_shapes
: 
h
&gradients/GatherV2_grad/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
�
"gradients/GatherV2_grad/ExpandDims
ExpandDimsgradients/GatherV2_grad/Size&gradients/GatherV2_grad/ExpandDims/dim*

Tdim0*
T0*
_output_shapes
:
u
+gradients/GatherV2_grad/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
w
-gradients/GatherV2_grad/strided_slice/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
w
-gradients/GatherV2_grad/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
�
%gradients/GatherV2_grad/strided_sliceStridedSlicegradients/GatherV2_grad/ToInt32+gradients/GatherV2_grad/strided_slice/stack-gradients/GatherV2_grad/strided_slice/stack_1-gradients/GatherV2_grad/strided_slice/stack_2*
shrink_axis_mask *
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask*
_output_shapes
: *
T0*
Index0
e
#gradients/GatherV2_grad/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�
gradients/GatherV2_grad/concatConcatV2"gradients/GatherV2_grad/ExpandDims%gradients/GatherV2_grad/strided_slice#gradients/GatherV2_grad/concat/axis*
T0*
N*
_output_shapes
:*

Tidx0
�
gradients/GatherV2_grad/ReshapeReshapegradients/Log_grad/mulgradients/GatherV2_grad/concat*#
_output_shapes
:���������*
T0*
Tshape0
�
!gradients/GatherV2_grad/Reshape_1Reshapeadd"gradients/GatherV2_grad/ExpandDims*
T0*
Tshape0*#
_output_shapes
:���������
c
gradients/Reshape_grad/ShapeShapeSoftmax*
T0*
out_type0*
_output_shapes
:
|
2gradients/Reshape_grad/Reshape/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
~
4gradients/Reshape_grad/Reshape/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
~
4gradients/Reshape_grad/Reshape/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
�
,gradients/Reshape_grad/Reshape/strided_sliceStridedSlicegradients/GatherV2_grad/ToInt322gradients/Reshape_grad/Reshape/strided_slice/stack4gradients/Reshape_grad/Reshape/strided_slice/stack_14gradients/Reshape_grad/Reshape/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
�
%gradients/Reshape_grad/Reshape/tensorUnsortedSegmentSumgradients/GatherV2_grad/Reshape!gradients/GatherV2_grad/Reshape_1,gradients/Reshape_grad/Reshape/strided_slice*
T0*#
_output_shapes
:���������*
Tnumsegments0*
Tindices0
�
gradients/Reshape_grad/ReshapeReshape%gradients/Reshape_grad/Reshape/tensorgradients/Reshape_grad/Shape*
T0*
Tshape0*'
_output_shapes
:���������
|
gradients/Softmax_grad/mulMulgradients/Reshape_grad/ReshapeSoftmax*
T0*'
_output_shapes
:���������
v
,gradients/Softmax_grad/Sum/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
�
gradients/Softmax_grad/SumSumgradients/Softmax_grad/mul,gradients/Softmax_grad/Sum/reduction_indices*

Tidx0*
	keep_dims( *
T0*#
_output_shapes
:���������
u
$gradients/Softmax_grad/Reshape/shapeConst*
valueB"����   *
dtype0*
_output_shapes
:
�
gradients/Softmax_grad/ReshapeReshapegradients/Softmax_grad/Sum$gradients/Softmax_grad/Reshape/shape*
T0*
Tshape0*'
_output_shapes
:���������
�
gradients/Softmax_grad/subSubgradients/Reshape_grad/Reshapegradients/Softmax_grad/Reshape*
T0*'
_output_shapes
:���������
z
gradients/Softmax_grad/mul_1Mulgradients/Softmax_grad/subSoftmax*
T0*'
_output_shapes
:���������
�
)gradients/output/BiasAdd_grad/BiasAddGradBiasAddGradgradients/Softmax_grad/mul_1*
data_formatNHWC*
_output_shapes
:*
T0
�
.gradients/output/BiasAdd_grad/tuple/group_depsNoOp^gradients/Softmax_grad/mul_1*^gradients/output/BiasAdd_grad/BiasAddGrad
�
6gradients/output/BiasAdd_grad/tuple/control_dependencyIdentitygradients/Softmax_grad/mul_1/^gradients/output/BiasAdd_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/Softmax_grad/mul_1*'
_output_shapes
:���������
�
8gradients/output/BiasAdd_grad/tuple/control_dependency_1Identity)gradients/output/BiasAdd_grad/BiasAddGrad/^gradients/output/BiasAdd_grad/tuple/group_deps*
T0*<
_class2
0.loc:@gradients/output/BiasAdd_grad/BiasAddGrad*
_output_shapes
:
�
#gradients/output/MatMul_grad/MatMulMatMul6gradients/output/BiasAdd_grad/tuple/control_dependencyoutput/kernel/read*
transpose_b(*
T0*
transpose_a( *'
_output_shapes
:���������
�
%gradients/output/MatMul_grad/MatMul_1MatMuldnn/hidden2/Relu6gradients/output/BiasAdd_grad/tuple/control_dependency*
T0*
transpose_a(*
_output_shapes

:*
transpose_b( 
�
-gradients/output/MatMul_grad/tuple/group_depsNoOp$^gradients/output/MatMul_grad/MatMul&^gradients/output/MatMul_grad/MatMul_1
�
5gradients/output/MatMul_grad/tuple/control_dependencyIdentity#gradients/output/MatMul_grad/MatMul.^gradients/output/MatMul_grad/tuple/group_deps*'
_output_shapes
:���������*
T0*6
_class,
*(loc:@gradients/output/MatMul_grad/MatMul
�
7gradients/output/MatMul_grad/tuple/control_dependency_1Identity%gradients/output/MatMul_grad/MatMul_1.^gradients/output/MatMul_grad/tuple/group_deps*
_output_shapes

:*
T0*8
_class.
,*loc:@gradients/output/MatMul_grad/MatMul_1
�
(gradients/dnn/hidden2/Relu_grad/ReluGradReluGrad5gradients/output/MatMul_grad/tuple/control_dependencydnn/hidden2/Relu*
T0*'
_output_shapes
:���������
�
.gradients/dnn/hidden2/BiasAdd_grad/BiasAddGradBiasAddGrad(gradients/dnn/hidden2/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
:
�
3gradients/dnn/hidden2/BiasAdd_grad/tuple/group_depsNoOp/^gradients/dnn/hidden2/BiasAdd_grad/BiasAddGrad)^gradients/dnn/hidden2/Relu_grad/ReluGrad
�
;gradients/dnn/hidden2/BiasAdd_grad/tuple/control_dependencyIdentity(gradients/dnn/hidden2/Relu_grad/ReluGrad4^gradients/dnn/hidden2/BiasAdd_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients/dnn/hidden2/Relu_grad/ReluGrad*'
_output_shapes
:���������
�
=gradients/dnn/hidden2/BiasAdd_grad/tuple/control_dependency_1Identity.gradients/dnn/hidden2/BiasAdd_grad/BiasAddGrad4^gradients/dnn/hidden2/BiasAdd_grad/tuple/group_deps*
_output_shapes
:*
T0*A
_class7
53loc:@gradients/dnn/hidden2/BiasAdd_grad/BiasAddGrad
�
(gradients/dnn/hidden2/MatMul_grad/MatMulMatMul;gradients/dnn/hidden2/BiasAdd_grad/tuple/control_dependencyhidden2/kernel/read*
T0*
transpose_a( *'
_output_shapes
:���������d*
transpose_b(
�
*gradients/dnn/hidden2/MatMul_grad/MatMul_1MatMuldnn/hidden1/Relu;gradients/dnn/hidden2/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*
transpose_a(*
_output_shapes

:d
�
2gradients/dnn/hidden2/MatMul_grad/tuple/group_depsNoOp)^gradients/dnn/hidden2/MatMul_grad/MatMul+^gradients/dnn/hidden2/MatMul_grad/MatMul_1
�
:gradients/dnn/hidden2/MatMul_grad/tuple/control_dependencyIdentity(gradients/dnn/hidden2/MatMul_grad/MatMul3^gradients/dnn/hidden2/MatMul_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients/dnn/hidden2/MatMul_grad/MatMul*'
_output_shapes
:���������d
�
<gradients/dnn/hidden2/MatMul_grad/tuple/control_dependency_1Identity*gradients/dnn/hidden2/MatMul_grad/MatMul_13^gradients/dnn/hidden2/MatMul_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients/dnn/hidden2/MatMul_grad/MatMul_1*
_output_shapes

:d
�
(gradients/dnn/hidden1/Relu_grad/ReluGradReluGrad:gradients/dnn/hidden2/MatMul_grad/tuple/control_dependencydnn/hidden1/Relu*
T0*'
_output_shapes
:���������d
�
.gradients/dnn/hidden1/BiasAdd_grad/BiasAddGradBiasAddGrad(gradients/dnn/hidden1/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
:d
�
3gradients/dnn/hidden1/BiasAdd_grad/tuple/group_depsNoOp/^gradients/dnn/hidden1/BiasAdd_grad/BiasAddGrad)^gradients/dnn/hidden1/Relu_grad/ReluGrad
�
;gradients/dnn/hidden1/BiasAdd_grad/tuple/control_dependencyIdentity(gradients/dnn/hidden1/Relu_grad/ReluGrad4^gradients/dnn/hidden1/BiasAdd_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients/dnn/hidden1/Relu_grad/ReluGrad*'
_output_shapes
:���������d
�
=gradients/dnn/hidden1/BiasAdd_grad/tuple/control_dependency_1Identity.gradients/dnn/hidden1/BiasAdd_grad/BiasAddGrad4^gradients/dnn/hidden1/BiasAdd_grad/tuple/group_deps*
T0*A
_class7
53loc:@gradients/dnn/hidden1/BiasAdd_grad/BiasAddGrad*
_output_shapes
:d
�
(gradients/dnn/hidden1/MatMul_grad/MatMulMatMul;gradients/dnn/hidden1/BiasAdd_grad/tuple/control_dependencyhidden1/kernel/read*
transpose_a( *(
_output_shapes
:����������*
transpose_b(*
T0
�
*gradients/dnn/hidden1/MatMul_grad/MatMul_1MatMulPlaceholder;gradients/dnn/hidden1/BiasAdd_grad/tuple/control_dependency*
transpose_a(*
_output_shapes
:	�d*
transpose_b( *
T0
�
2gradients/dnn/hidden1/MatMul_grad/tuple/group_depsNoOp)^gradients/dnn/hidden1/MatMul_grad/MatMul+^gradients/dnn/hidden1/MatMul_grad/MatMul_1
�
:gradients/dnn/hidden1/MatMul_grad/tuple/control_dependencyIdentity(gradients/dnn/hidden1/MatMul_grad/MatMul3^gradients/dnn/hidden1/MatMul_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients/dnn/hidden1/MatMul_grad/MatMul*(
_output_shapes
:����������
�
<gradients/dnn/hidden1/MatMul_grad/tuple/control_dependency_1Identity*gradients/dnn/hidden1/MatMul_grad/MatMul_13^gradients/dnn/hidden1/MatMul_grad/tuple/group_deps*
_output_shapes
:	�d*
T0*=
_class3
1/loc:@gradients/dnn/hidden1/MatMul_grad/MatMul_1

beta1_power/initial_valueConst*
valueB
 *fff?*
_class
loc:@hidden1/bias*
dtype0*
_output_shapes
: 
�
beta1_power
VariableV2*
shared_name *
_class
loc:@hidden1/bias*
	container *
shape: *
dtype0*
_output_shapes
: 
�
beta1_power/AssignAssignbeta1_powerbeta1_power/initial_value*
T0*
_class
loc:@hidden1/bias*
validate_shape(*
_output_shapes
: *
use_locking(
k
beta1_power/readIdentitybeta1_power*
T0*
_class
loc:@hidden1/bias*
_output_shapes
: 

beta2_power/initial_valueConst*
valueB
 *w�?*
_class
loc:@hidden1/bias*
dtype0*
_output_shapes
: 
�
beta2_power
VariableV2*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name *
_class
loc:@hidden1/bias
�
beta2_power/AssignAssignbeta2_powerbeta2_power/initial_value*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@hidden1/bias
k
beta2_power/readIdentitybeta2_power*
T0*
_class
loc:@hidden1/bias*
_output_shapes
: 
�
5hidden1/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB"@  d   *!
_class
loc:@hidden1/kernel
�
+hidden1/kernel/Adam/Initializer/zeros/ConstConst*
valueB
 *    *!
_class
loc:@hidden1/kernel*
dtype0*
_output_shapes
: 
�
%hidden1/kernel/Adam/Initializer/zerosFill5hidden1/kernel/Adam/Initializer/zeros/shape_as_tensor+hidden1/kernel/Adam/Initializer/zeros/Const*
T0*

index_type0*!
_class
loc:@hidden1/kernel*
_output_shapes
:	�d
�
hidden1/kernel/Adam
VariableV2*
shape:	�d*
dtype0*
_output_shapes
:	�d*
shared_name *!
_class
loc:@hidden1/kernel*
	container 
�
hidden1/kernel/Adam/AssignAssignhidden1/kernel/Adam%hidden1/kernel/Adam/Initializer/zeros*
use_locking(*
T0*!
_class
loc:@hidden1/kernel*
validate_shape(*
_output_shapes
:	�d
�
hidden1/kernel/Adam/readIdentityhidden1/kernel/Adam*
T0*!
_class
loc:@hidden1/kernel*
_output_shapes
:	�d
�
7hidden1/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB"@  d   *!
_class
loc:@hidden1/kernel
�
-hidden1/kernel/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *!
_class
loc:@hidden1/kernel*
dtype0*
_output_shapes
: 
�
'hidden1/kernel/Adam_1/Initializer/zerosFill7hidden1/kernel/Adam_1/Initializer/zeros/shape_as_tensor-hidden1/kernel/Adam_1/Initializer/zeros/Const*
_output_shapes
:	�d*
T0*

index_type0*!
_class
loc:@hidden1/kernel
�
hidden1/kernel/Adam_1
VariableV2*!
_class
loc:@hidden1/kernel*
	container *
shape:	�d*
dtype0*
_output_shapes
:	�d*
shared_name 
�
hidden1/kernel/Adam_1/AssignAssignhidden1/kernel/Adam_1'hidden1/kernel/Adam_1/Initializer/zeros*
T0*!
_class
loc:@hidden1/kernel*
validate_shape(*
_output_shapes
:	�d*
use_locking(
�
hidden1/kernel/Adam_1/readIdentityhidden1/kernel/Adam_1*
T0*!
_class
loc:@hidden1/kernel*
_output_shapes
:	�d
�
#hidden1/bias/Adam/Initializer/zerosConst*
valueBd*    *
_class
loc:@hidden1/bias*
dtype0*
_output_shapes
:d
�
hidden1/bias/Adam
VariableV2*
shared_name *
_class
loc:@hidden1/bias*
	container *
shape:d*
dtype0*
_output_shapes
:d
�
hidden1/bias/Adam/AssignAssignhidden1/bias/Adam#hidden1/bias/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@hidden1/bias*
validate_shape(*
_output_shapes
:d
{
hidden1/bias/Adam/readIdentityhidden1/bias/Adam*
T0*
_class
loc:@hidden1/bias*
_output_shapes
:d
�
%hidden1/bias/Adam_1/Initializer/zerosConst*
valueBd*    *
_class
loc:@hidden1/bias*
dtype0*
_output_shapes
:d
�
hidden1/bias/Adam_1
VariableV2*
dtype0*
_output_shapes
:d*
shared_name *
_class
loc:@hidden1/bias*
	container *
shape:d
�
hidden1/bias/Adam_1/AssignAssignhidden1/bias/Adam_1%hidden1/bias/Adam_1/Initializer/zeros*
T0*
_class
loc:@hidden1/bias*
validate_shape(*
_output_shapes
:d*
use_locking(

hidden1/bias/Adam_1/readIdentityhidden1/bias/Adam_1*
T0*
_class
loc:@hidden1/bias*
_output_shapes
:d
�
5hidden2/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"d      *!
_class
loc:@hidden2/kernel*
dtype0*
_output_shapes
:
�
+hidden2/kernel/Adam/Initializer/zeros/ConstConst*
valueB
 *    *!
_class
loc:@hidden2/kernel*
dtype0*
_output_shapes
: 
�
%hidden2/kernel/Adam/Initializer/zerosFill5hidden2/kernel/Adam/Initializer/zeros/shape_as_tensor+hidden2/kernel/Adam/Initializer/zeros/Const*
T0*

index_type0*!
_class
loc:@hidden2/kernel*
_output_shapes

:d
�
hidden2/kernel/Adam
VariableV2*
	container *
shape
:d*
dtype0*
_output_shapes

:d*
shared_name *!
_class
loc:@hidden2/kernel
�
hidden2/kernel/Adam/AssignAssignhidden2/kernel/Adam%hidden2/kernel/Adam/Initializer/zeros*
use_locking(*
T0*!
_class
loc:@hidden2/kernel*
validate_shape(*
_output_shapes

:d
�
hidden2/kernel/Adam/readIdentityhidden2/kernel/Adam*
T0*!
_class
loc:@hidden2/kernel*
_output_shapes

:d
�
7hidden2/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"d      *!
_class
loc:@hidden2/kernel*
dtype0*
_output_shapes
:
�
-hidden2/kernel/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *!
_class
loc:@hidden2/kernel*
dtype0*
_output_shapes
: 
�
'hidden2/kernel/Adam_1/Initializer/zerosFill7hidden2/kernel/Adam_1/Initializer/zeros/shape_as_tensor-hidden2/kernel/Adam_1/Initializer/zeros/Const*
T0*

index_type0*!
_class
loc:@hidden2/kernel*
_output_shapes

:d
�
hidden2/kernel/Adam_1
VariableV2*
shared_name *!
_class
loc:@hidden2/kernel*
	container *
shape
:d*
dtype0*
_output_shapes

:d
�
hidden2/kernel/Adam_1/AssignAssignhidden2/kernel/Adam_1'hidden2/kernel/Adam_1/Initializer/zeros*
validate_shape(*
_output_shapes

:d*
use_locking(*
T0*!
_class
loc:@hidden2/kernel
�
hidden2/kernel/Adam_1/readIdentityhidden2/kernel/Adam_1*
T0*!
_class
loc:@hidden2/kernel*
_output_shapes

:d
�
#hidden2/bias/Adam/Initializer/zerosConst*
valueB*    *
_class
loc:@hidden2/bias*
dtype0*
_output_shapes
:
�
hidden2/bias/Adam
VariableV2*
shape:*
dtype0*
_output_shapes
:*
shared_name *
_class
loc:@hidden2/bias*
	container 
�
hidden2/bias/Adam/AssignAssignhidden2/bias/Adam#hidden2/bias/Adam/Initializer/zeros*
T0*
_class
loc:@hidden2/bias*
validate_shape(*
_output_shapes
:*
use_locking(
{
hidden2/bias/Adam/readIdentityhidden2/bias/Adam*
_output_shapes
:*
T0*
_class
loc:@hidden2/bias
�
%hidden2/bias/Adam_1/Initializer/zerosConst*
valueB*    *
_class
loc:@hidden2/bias*
dtype0*
_output_shapes
:
�
hidden2/bias/Adam_1
VariableV2*
shared_name *
_class
loc:@hidden2/bias*
	container *
shape:*
dtype0*
_output_shapes
:
�
hidden2/bias/Adam_1/AssignAssignhidden2/bias/Adam_1%hidden2/bias/Adam_1/Initializer/zeros*
T0*
_class
loc:@hidden2/bias*
validate_shape(*
_output_shapes
:*
use_locking(

hidden2/bias/Adam_1/readIdentityhidden2/bias/Adam_1*
T0*
_class
loc:@hidden2/bias*
_output_shapes
:
�
$output/kernel/Adam/Initializer/zerosConst*
valueB*    * 
_class
loc:@output/kernel*
dtype0*
_output_shapes

:
�
output/kernel/Adam
VariableV2*
dtype0*
_output_shapes

:*
shared_name * 
_class
loc:@output/kernel*
	container *
shape
:
�
output/kernel/Adam/AssignAssignoutput/kernel/Adam$output/kernel/Adam/Initializer/zeros*
validate_shape(*
_output_shapes

:*
use_locking(*
T0* 
_class
loc:@output/kernel
�
output/kernel/Adam/readIdentityoutput/kernel/Adam*
T0* 
_class
loc:@output/kernel*
_output_shapes

:
�
&output/kernel/Adam_1/Initializer/zerosConst*
dtype0*
_output_shapes

:*
valueB*    * 
_class
loc:@output/kernel
�
output/kernel/Adam_1
VariableV2*
dtype0*
_output_shapes

:*
shared_name * 
_class
loc:@output/kernel*
	container *
shape
:
�
output/kernel/Adam_1/AssignAssignoutput/kernel/Adam_1&output/kernel/Adam_1/Initializer/zeros*
T0* 
_class
loc:@output/kernel*
validate_shape(*
_output_shapes

:*
use_locking(
�
output/kernel/Adam_1/readIdentityoutput/kernel/Adam_1*
T0* 
_class
loc:@output/kernel*
_output_shapes

:
�
"output/bias/Adam/Initializer/zerosConst*
valueB*    *
_class
loc:@output/bias*
dtype0*
_output_shapes
:
�
output/bias/Adam
VariableV2*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name *
_class
loc:@output/bias
�
output/bias/Adam/AssignAssignoutput/bias/Adam"output/bias/Adam/Initializer/zeros*
T0*
_class
loc:@output/bias*
validate_shape(*
_output_shapes
:*
use_locking(
x
output/bias/Adam/readIdentityoutput/bias/Adam*
T0*
_class
loc:@output/bias*
_output_shapes
:
�
$output/bias/Adam_1/Initializer/zerosConst*
valueB*    *
_class
loc:@output/bias*
dtype0*
_output_shapes
:
�
output/bias/Adam_1
VariableV2*
dtype0*
_output_shapes
:*
shared_name *
_class
loc:@output/bias*
	container *
shape:
�
output/bias/Adam_1/AssignAssignoutput/bias/Adam_1$output/bias/Adam_1/Initializer/zeros*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@output/bias
|
output/bias/Adam_1/readIdentityoutput/bias/Adam_1*
_output_shapes
:*
T0*
_class
loc:@output/bias
W
Adam/learning_rateConst*
valueB
 *
�#<*
dtype0*
_output_shapes
: 
O

Adam/beta1Const*
valueB
 *fff?*
dtype0*
_output_shapes
: 
O

Adam/beta2Const*
valueB
 *w�?*
dtype0*
_output_shapes
: 
Q
Adam/epsilonConst*
dtype0*
_output_shapes
: *
valueB
 *w�+2
�
$Adam/update_hidden1/kernel/ApplyAdam	ApplyAdamhidden1/kernelhidden1/kernel/Adamhidden1/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon<gradients/dnn/hidden1/MatMul_grad/tuple/control_dependency_1*
use_nesterov( *
_output_shapes
:	�d*
use_locking( *
T0*!
_class
loc:@hidden1/kernel
�
"Adam/update_hidden1/bias/ApplyAdam	ApplyAdamhidden1/biashidden1/bias/Adamhidden1/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon=gradients/dnn/hidden1/BiasAdd_grad/tuple/control_dependency_1*
T0*
_class
loc:@hidden1/bias*
use_nesterov( *
_output_shapes
:d*
use_locking( 
�
$Adam/update_hidden2/kernel/ApplyAdam	ApplyAdamhidden2/kernelhidden2/kernel/Adamhidden2/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon<gradients/dnn/hidden2/MatMul_grad/tuple/control_dependency_1*
T0*!
_class
loc:@hidden2/kernel*
use_nesterov( *
_output_shapes

:d*
use_locking( 
�
"Adam/update_hidden2/bias/ApplyAdam	ApplyAdamhidden2/biashidden2/bias/Adamhidden2/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon=gradients/dnn/hidden2/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@hidden2/bias*
use_nesterov( *
_output_shapes
:
�
#Adam/update_output/kernel/ApplyAdam	ApplyAdamoutput/kerneloutput/kernel/Adamoutput/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon7gradients/output/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0* 
_class
loc:@output/kernel*
use_nesterov( *
_output_shapes

:
�
!Adam/update_output/bias/ApplyAdam	ApplyAdamoutput/biasoutput/bias/Adamoutput/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon8gradients/output/BiasAdd_grad/tuple/control_dependency_1*
T0*
_class
loc:@output/bias*
use_nesterov( *
_output_shapes
:*
use_locking( 
�
Adam/mulMulbeta1_power/read
Adam/beta1#^Adam/update_hidden1/bias/ApplyAdam%^Adam/update_hidden1/kernel/ApplyAdam#^Adam/update_hidden2/bias/ApplyAdam%^Adam/update_hidden2/kernel/ApplyAdam"^Adam/update_output/bias/ApplyAdam$^Adam/update_output/kernel/ApplyAdam*
T0*
_class
loc:@hidden1/bias*
_output_shapes
: 
�
Adam/AssignAssignbeta1_powerAdam/mul*
validate_shape(*
_output_shapes
: *
use_locking( *
T0*
_class
loc:@hidden1/bias
�

Adam/mul_1Mulbeta2_power/read
Adam/beta2#^Adam/update_hidden1/bias/ApplyAdam%^Adam/update_hidden1/kernel/ApplyAdam#^Adam/update_hidden2/bias/ApplyAdam%^Adam/update_hidden2/kernel/ApplyAdam"^Adam/update_output/bias/ApplyAdam$^Adam/update_output/kernel/ApplyAdam*
_output_shapes
: *
T0*
_class
loc:@hidden1/bias
�
Adam/Assign_1Assignbeta2_power
Adam/mul_1*
use_locking( *
T0*
_class
loc:@hidden1/bias*
validate_shape(*
_output_shapes
: 
�
AdamNoOp^Adam/Assign^Adam/Assign_1#^Adam/update_hidden1/bias/ApplyAdam%^Adam/update_hidden1/kernel/ApplyAdam#^Adam/update_hidden2/bias/ApplyAdam%^Adam/update_hidden2/kernel/ApplyAdam"^Adam/update_output/bias/ApplyAdam$^Adam/update_output/kernel/ApplyAdam
P

save/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
�
save/SaveV2/tensor_namesConst*�
value�B�Bbeta1_powerBbeta2_powerBhidden1/biasBhidden1/bias/AdamBhidden1/bias/Adam_1Bhidden1/bias/MomentumBhidden1/kernelBhidden1/kernel/AdamBhidden1/kernel/Adam_1Bhidden1/kernel/MomentumBhidden2/biasBhidden2/bias/AdamBhidden2/bias/Adam_1Bhidden2/bias/MomentumBhidden2/kernelBhidden2/kernel/AdamBhidden2/kernel/Adam_1Bhidden2/kernel/MomentumBoutput/biasBoutput/bias/AdamBoutput/bias/Adam_1Boutput/bias/MomentumBoutput/kernelBoutput/kernel/AdamBoutput/kernel/Adam_1Boutput/kernel/Momentum*
dtype0*
_output_shapes
:
�
save/SaveV2/shape_and_slicesConst*
dtype0*
_output_shapes
:*G
value>B<B B B B B B B B B B B B B B B B B B B B B B B B B B 
�
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesbeta1_powerbeta2_powerhidden1/biashidden1/bias/Adamhidden1/bias/Adam_1hidden1/bias/Momentumhidden1/kernelhidden1/kernel/Adamhidden1/kernel/Adam_1hidden1/kernel/Momentumhidden2/biashidden2/bias/Adamhidden2/bias/Adam_1hidden2/bias/Momentumhidden2/kernelhidden2/kernel/Adamhidden2/kernel/Adam_1hidden2/kernel/Momentumoutput/biasoutput/bias/Adamoutput/bias/Adam_1output/bias/Momentumoutput/kerneloutput/kernel/Adamoutput/kernel/Adam_1output/kernel/Momentum*(
dtypes
2
}
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_class
loc:@save/Const*
_output_shapes
: 
�
save/RestoreV2/tensor_namesConst"/device:CPU:0*�
value�B�Bbeta1_powerBbeta2_powerBhidden1/biasBhidden1/bias/AdamBhidden1/bias/Adam_1Bhidden1/bias/MomentumBhidden1/kernelBhidden1/kernel/AdamBhidden1/kernel/Adam_1Bhidden1/kernel/MomentumBhidden2/biasBhidden2/bias/AdamBhidden2/bias/Adam_1Bhidden2/bias/MomentumBhidden2/kernelBhidden2/kernel/AdamBhidden2/kernel/Adam_1Bhidden2/kernel/MomentumBoutput/biasBoutput/bias/AdamBoutput/bias/Adam_1Boutput/bias/MomentumBoutput/kernelBoutput/kernel/AdamBoutput/kernel/Adam_1Boutput/kernel/Momentum*
dtype0*
_output_shapes
:
�
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*G
value>B<B B B B B B B B B B B B B B B B B B B B B B B B B B 
�
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*(
dtypes
2*|
_output_shapesj
h::::::::::::::::::::::::::
�
save/AssignAssignbeta1_powersave/RestoreV2*
use_locking(*
T0*
_class
loc:@hidden1/bias*
validate_shape(*
_output_shapes
: 
�
save/Assign_1Assignbeta2_powersave/RestoreV2:1*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@hidden1/bias
�
save/Assign_2Assignhidden1/biassave/RestoreV2:2*
use_locking(*
T0*
_class
loc:@hidden1/bias*
validate_shape(*
_output_shapes
:d
�
save/Assign_3Assignhidden1/bias/Adamsave/RestoreV2:3*
use_locking(*
T0*
_class
loc:@hidden1/bias*
validate_shape(*
_output_shapes
:d
�
save/Assign_4Assignhidden1/bias/Adam_1save/RestoreV2:4*
validate_shape(*
_output_shapes
:d*
use_locking(*
T0*
_class
loc:@hidden1/bias
�
save/Assign_5Assignhidden1/bias/Momentumsave/RestoreV2:5*
T0*
_class
loc:@hidden1/bias*
validate_shape(*
_output_shapes
:d*
use_locking(
�
save/Assign_6Assignhidden1/kernelsave/RestoreV2:6*
use_locking(*
T0*!
_class
loc:@hidden1/kernel*
validate_shape(*
_output_shapes
:	�d
�
save/Assign_7Assignhidden1/kernel/Adamsave/RestoreV2:7*
use_locking(*
T0*!
_class
loc:@hidden1/kernel*
validate_shape(*
_output_shapes
:	�d
�
save/Assign_8Assignhidden1/kernel/Adam_1save/RestoreV2:8*
T0*!
_class
loc:@hidden1/kernel*
validate_shape(*
_output_shapes
:	�d*
use_locking(
�
save/Assign_9Assignhidden1/kernel/Momentumsave/RestoreV2:9*
validate_shape(*
_output_shapes
:	�d*
use_locking(*
T0*!
_class
loc:@hidden1/kernel
�
save/Assign_10Assignhidden2/biassave/RestoreV2:10*
use_locking(*
T0*
_class
loc:@hidden2/bias*
validate_shape(*
_output_shapes
:
�
save/Assign_11Assignhidden2/bias/Adamsave/RestoreV2:11*
use_locking(*
T0*
_class
loc:@hidden2/bias*
validate_shape(*
_output_shapes
:
�
save/Assign_12Assignhidden2/bias/Adam_1save/RestoreV2:12*
use_locking(*
T0*
_class
loc:@hidden2/bias*
validate_shape(*
_output_shapes
:
�
save/Assign_13Assignhidden2/bias/Momentumsave/RestoreV2:13*
use_locking(*
T0*
_class
loc:@hidden2/bias*
validate_shape(*
_output_shapes
:
�
save/Assign_14Assignhidden2/kernelsave/RestoreV2:14*
use_locking(*
T0*!
_class
loc:@hidden2/kernel*
validate_shape(*
_output_shapes

:d
�
save/Assign_15Assignhidden2/kernel/Adamsave/RestoreV2:15*
T0*!
_class
loc:@hidden2/kernel*
validate_shape(*
_output_shapes

:d*
use_locking(
�
save/Assign_16Assignhidden2/kernel/Adam_1save/RestoreV2:16*
use_locking(*
T0*!
_class
loc:@hidden2/kernel*
validate_shape(*
_output_shapes

:d
�
save/Assign_17Assignhidden2/kernel/Momentumsave/RestoreV2:17*
T0*!
_class
loc:@hidden2/kernel*
validate_shape(*
_output_shapes

:d*
use_locking(
�
save/Assign_18Assignoutput/biassave/RestoreV2:18*
use_locking(*
T0*
_class
loc:@output/bias*
validate_shape(*
_output_shapes
:
�
save/Assign_19Assignoutput/bias/Adamsave/RestoreV2:19*
use_locking(*
T0*
_class
loc:@output/bias*
validate_shape(*
_output_shapes
:
�
save/Assign_20Assignoutput/bias/Adam_1save/RestoreV2:20*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@output/bias
�
save/Assign_21Assignoutput/bias/Momentumsave/RestoreV2:21*
use_locking(*
T0*
_class
loc:@output/bias*
validate_shape(*
_output_shapes
:
�
save/Assign_22Assignoutput/kernelsave/RestoreV2:22*
validate_shape(*
_output_shapes

:*
use_locking(*
T0* 
_class
loc:@output/kernel
�
save/Assign_23Assignoutput/kernel/Adamsave/RestoreV2:23*
use_locking(*
T0* 
_class
loc:@output/kernel*
validate_shape(*
_output_shapes

:
�
save/Assign_24Assignoutput/kernel/Adam_1save/RestoreV2:24*
T0* 
_class
loc:@output/kernel*
validate_shape(*
_output_shapes

:*
use_locking(
�
save/Assign_25Assignoutput/kernel/Momentumsave/RestoreV2:25*
validate_shape(*
_output_shapes

:*
use_locking(*
T0* 
_class
loc:@output/kernel
�
save/restore_allNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_2^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_23^save/Assign_24^save/Assign_25^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9
Z
avg_reward/tagsConst*
valueB B
avg_reward*
dtype0*
_output_shapes
: 
S

avg_rewardScalarSummaryavg_reward/tagsMean*
_output_shapes
: *
T0
N
	xent/tagsConst*
valueB
 Bxent*
dtype0*
_output_shapes
: 
F
xentScalarSummary	xent/tagsNeg*
T0*
_output_shapes
: 
_
hidden_1/ConstConst*
dtype0*
_output_shapes
:*
valueB"       
u
hidden_1/MeanMeandnn/hidden1/Reluhidden_1/Const*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
a
hidden_1/count_nonzero/zerosConst*
dtype0*
_output_shapes
: *
valueB
 *    
�
hidden_1/count_nonzero/NotEqualNotEqualdnn/hidden1/Reluhidden_1/count_nonzero/zeros*
T0*'
_output_shapes
:���������d
�
hidden_1/count_nonzero/ToInt64Casthidden_1/count_nonzero/NotEqual*

DstT0	*'
_output_shapes
:���������d*

SrcT0

m
hidden_1/count_nonzero/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
�
hidden_1/count_nonzero/SumSumhidden_1/count_nonzero/ToInt64hidden_1/count_nonzero/Const*

Tidx0*
	keep_dims( *
T0	*
_output_shapes
: 
o
hidden_1/count_nonzero/CastCasthidden_1/count_nonzero/Sum*

SrcT0	*

DstT0*
_output_shapes
: 
X
hidden_1/SizeSizednn/hidden1/Relu*
T0*
out_type0*
_output_shapes
: 
j
hidden_1/truediv/CastCasthidden_1/count_nonzero/Cast*

SrcT0*

DstT0*
_output_shapes
: 
^
hidden_1/truediv/Cast_1Casthidden_1/Size*

DstT0*
_output_shapes
: *

SrcT0
l
hidden_1/truedivRealDivhidden_1/truediv/Casthidden_1/truediv/Cast_1*
_output_shapes
: *
T0
d
hidden_1/mean_1/tagsConst* 
valueB Bhidden_1/mean_1*
dtype0*
_output_shapes
: 
f
hidden_1/mean_1ScalarSummaryhidden_1/mean_1/tagshidden_1/Mean*
T0*
_output_shapes
: 
m
hidden_1/stddev/subSubdnn/hidden1/Reluhidden_1/Mean*
T0*'
_output_shapes
:���������d
g
hidden_1/stddev/SquareSquarehidden_1/stddev/sub*'
_output_shapes
:���������d*
T0
f
hidden_1/stddev/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
�
hidden_1/stddev/MeanMeanhidden_1/stddev/Squarehidden_1/stddev/Const*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
S
hidden_1/stddev/SqrtSqrthidden_1/stddev/Mean*
_output_shapes
: *
T0
h
hidden_1/stddev_1/tagsConst*
dtype0*
_output_shapes
: *"
valueB Bhidden_1/stddev_1
q
hidden_1/stddev_1ScalarSummaryhidden_1/stddev_1/tagshidden_1/stddev/Sqrt*
T0*
_output_shapes
: 
a
hidden_1/Const_1Const*
valueB"       *
dtype0*
_output_shapes
:
u
hidden_1/MaxMaxdnn/hidden1/Reluhidden_1/Const_1*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
b
hidden_1/max_1/tagsConst*
valueB Bhidden_1/max_1*
dtype0*
_output_shapes
: 
c
hidden_1/max_1ScalarSummaryhidden_1/max_1/tagshidden_1/Max*
_output_shapes
: *
T0
a
hidden_1/Const_2Const*
valueB"       *
dtype0*
_output_shapes
:
u
hidden_1/MinMindnn/hidden1/Reluhidden_1/Const_2*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
b
hidden_1/min_1/tagsConst*
valueB Bhidden_1/min_1*
dtype0*
_output_shapes
: 
c
hidden_1/min_1ScalarSummaryhidden_1/min_1/tagshidden_1/Min*
_output_shapes
: *
T0
n
hidden_1/per_nonzero/tagsConst*%
valueB Bhidden_1/per_nonzero*
dtype0*
_output_shapes
: 
s
hidden_1/per_nonzeroScalarSummaryhidden_1/per_nonzero/tagshidden_1/truediv*
T0*
_output_shapes
: 
i
hidden_1/histogram/tagConst*#
valueB Bhidden_1/histogram*
dtype0*
_output_shapes
: 
q
hidden_1/histogramHistogramSummaryhidden_1/histogram/tagdnn/hidden1/Relu*
_output_shapes
: *
T0
_
hidden_2/ConstConst*
dtype0*
_output_shapes
:*
valueB"       
u
hidden_2/MeanMeandnn/hidden1/Reluhidden_2/Const*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
a
hidden_2/count_nonzero/zerosConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
hidden_2/count_nonzero/NotEqualNotEqualdnn/hidden1/Reluhidden_2/count_nonzero/zeros*
T0*'
_output_shapes
:���������d
�
hidden_2/count_nonzero/ToInt64Casthidden_2/count_nonzero/NotEqual*

SrcT0
*

DstT0	*'
_output_shapes
:���������d
m
hidden_2/count_nonzero/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
�
hidden_2/count_nonzero/SumSumhidden_2/count_nonzero/ToInt64hidden_2/count_nonzero/Const*

Tidx0*
	keep_dims( *
T0	*
_output_shapes
: 
o
hidden_2/count_nonzero/CastCasthidden_2/count_nonzero/Sum*

SrcT0	*

DstT0*
_output_shapes
: 
X
hidden_2/SizeSizednn/hidden1/Relu*
T0*
out_type0*
_output_shapes
: 
j
hidden_2/truediv/CastCasthidden_2/count_nonzero/Cast*

DstT0*
_output_shapes
: *

SrcT0
^
hidden_2/truediv/Cast_1Casthidden_2/Size*

DstT0*
_output_shapes
: *

SrcT0
l
hidden_2/truedivRealDivhidden_2/truediv/Casthidden_2/truediv/Cast_1*
T0*
_output_shapes
: 
d
hidden_2/mean_1/tagsConst*
dtype0*
_output_shapes
: * 
valueB Bhidden_2/mean_1
f
hidden_2/mean_1ScalarSummaryhidden_2/mean_1/tagshidden_2/Mean*
T0*
_output_shapes
: 
m
hidden_2/stddev/subSubdnn/hidden1/Reluhidden_2/Mean*
T0*'
_output_shapes
:���������d
g
hidden_2/stddev/SquareSquarehidden_2/stddev/sub*
T0*'
_output_shapes
:���������d
f
hidden_2/stddev/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
�
hidden_2/stddev/MeanMeanhidden_2/stddev/Squarehidden_2/stddev/Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
S
hidden_2/stddev/SqrtSqrthidden_2/stddev/Mean*
T0*
_output_shapes
: 
h
hidden_2/stddev_1/tagsConst*"
valueB Bhidden_2/stddev_1*
dtype0*
_output_shapes
: 
q
hidden_2/stddev_1ScalarSummaryhidden_2/stddev_1/tagshidden_2/stddev/Sqrt*
T0*
_output_shapes
: 
a
hidden_2/Const_1Const*
valueB"       *
dtype0*
_output_shapes
:
u
hidden_2/MaxMaxdnn/hidden1/Reluhidden_2/Const_1*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
b
hidden_2/max_1/tagsConst*
dtype0*
_output_shapes
: *
valueB Bhidden_2/max_1
c
hidden_2/max_1ScalarSummaryhidden_2/max_1/tagshidden_2/Max*
T0*
_output_shapes
: 
a
hidden_2/Const_2Const*
dtype0*
_output_shapes
:*
valueB"       
u
hidden_2/MinMindnn/hidden1/Reluhidden_2/Const_2*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
b
hidden_2/min_1/tagsConst*
valueB Bhidden_2/min_1*
dtype0*
_output_shapes
: 
c
hidden_2/min_1ScalarSummaryhidden_2/min_1/tagshidden_2/Min*
T0*
_output_shapes
: 
n
hidden_2/per_nonzero/tagsConst*
dtype0*
_output_shapes
: *%
valueB Bhidden_2/per_nonzero
s
hidden_2/per_nonzeroScalarSummaryhidden_2/per_nonzero/tagshidden_2/truediv*
T0*
_output_shapes
: 
i
hidden_2/histogram/tagConst*
dtype0*
_output_shapes
: *#
valueB Bhidden_2/histogram
q
hidden_2/histogramHistogramSummaryhidden_2/histogram/tagdnn/hidden1/Relu*
T0*
_output_shapes
: 
�
Merge/MergeSummaryMergeSummary
avg_rewardxenthidden_1/mean_1hidden_1/stddev_1hidden_1/max_1hidden_1/min_1hidden_1/per_nonzerohidden_1/histogramhidden_2/mean_1hidden_2/stddev_1hidden_2/max_1hidden_2/min_1hidden_2/per_nonzerohidden_2/histogram*
N*
_output_shapes
: ""$
train_op

train/Momentum
Adam"�
	variables��
o
hidden1/kernel:0hidden1/kernel/Assignhidden1/kernel/read:02+hidden1/kernel/Initializer/random_uniform:08
^
hidden1/bias:0hidden1/bias/Assignhidden1/bias/read:02 hidden1/bias/Initializer/zeros:08
o
hidden2/kernel:0hidden2/kernel/Assignhidden2/kernel/read:02+hidden2/kernel/Initializer/random_uniform:08
^
hidden2/bias:0hidden2/bias/Assignhidden2/bias/read:02 hidden2/bias/Initializer/zeros:08
k
output/kernel:0output/kernel/Assignoutput/kernel/read:02*output/kernel/Initializer/random_uniform:08
Z
output/bias:0output/bias/Assignoutput/bias/read:02output/bias/Initializer/zeros:08
�
hidden1/kernel/Momentum:0hidden1/kernel/Momentum/Assignhidden1/kernel/Momentum/read:02+hidden1/kernel/Momentum/Initializer/zeros:0
�
hidden1/bias/Momentum:0hidden1/bias/Momentum/Assignhidden1/bias/Momentum/read:02)hidden1/bias/Momentum/Initializer/zeros:0
�
hidden2/kernel/Momentum:0hidden2/kernel/Momentum/Assignhidden2/kernel/Momentum/read:02+hidden2/kernel/Momentum/Initializer/zeros:0
�
hidden2/bias/Momentum:0hidden2/bias/Momentum/Assignhidden2/bias/Momentum/read:02)hidden2/bias/Momentum/Initializer/zeros:0
�
output/kernel/Momentum:0output/kernel/Momentum/Assignoutput/kernel/Momentum/read:02*output/kernel/Momentum/Initializer/zeros:0
|
output/bias/Momentum:0output/bias/Momentum/Assignoutput/bias/Momentum/read:02(output/bias/Momentum/Initializer/zeros:0
T
beta1_power:0beta1_power/Assignbeta1_power/read:02beta1_power/initial_value:0
T
beta2_power:0beta2_power/Assignbeta2_power/read:02beta2_power/initial_value:0
x
hidden1/kernel/Adam:0hidden1/kernel/Adam/Assignhidden1/kernel/Adam/read:02'hidden1/kernel/Adam/Initializer/zeros:0
�
hidden1/kernel/Adam_1:0hidden1/kernel/Adam_1/Assignhidden1/kernel/Adam_1/read:02)hidden1/kernel/Adam_1/Initializer/zeros:0
p
hidden1/bias/Adam:0hidden1/bias/Adam/Assignhidden1/bias/Adam/read:02%hidden1/bias/Adam/Initializer/zeros:0
x
hidden1/bias/Adam_1:0hidden1/bias/Adam_1/Assignhidden1/bias/Adam_1/read:02'hidden1/bias/Adam_1/Initializer/zeros:0
x
hidden2/kernel/Adam:0hidden2/kernel/Adam/Assignhidden2/kernel/Adam/read:02'hidden2/kernel/Adam/Initializer/zeros:0
�
hidden2/kernel/Adam_1:0hidden2/kernel/Adam_1/Assignhidden2/kernel/Adam_1/read:02)hidden2/kernel/Adam_1/Initializer/zeros:0
p
hidden2/bias/Adam:0hidden2/bias/Adam/Assignhidden2/bias/Adam/read:02%hidden2/bias/Adam/Initializer/zeros:0
x
hidden2/bias/Adam_1:0hidden2/bias/Adam_1/Assignhidden2/bias/Adam_1/read:02'hidden2/bias/Adam_1/Initializer/zeros:0
t
output/kernel/Adam:0output/kernel/Adam/Assignoutput/kernel/Adam/read:02&output/kernel/Adam/Initializer/zeros:0
|
output/kernel/Adam_1:0output/kernel/Adam_1/Assignoutput/kernel/Adam_1/read:02(output/kernel/Adam_1/Initializer/zeros:0
l
output/bias/Adam:0output/bias/Adam/Assignoutput/bias/Adam/read:02$output/bias/Adam/Initializer/zeros:0
t
output/bias/Adam_1:0output/bias/Adam_1/Assignoutput/bias/Adam_1/read:02&output/bias/Adam_1/Initializer/zeros:0"�
	summaries�
�
avg_reward:0
xent:0
hidden_1/mean_1:0
hidden_1/stddev_1:0
hidden_1/max_1:0
hidden_1/min_1:0
hidden_1/per_nonzero:0
hidden_1/histogram:0
hidden_2/mean_1:0
hidden_2/stddev_1:0
hidden_2/max_1:0
hidden_2/min_1:0
hidden_2/per_nonzero:0
hidden_2/histogram:0"�
trainable_variables��
o
hidden1/kernel:0hidden1/kernel/Assignhidden1/kernel/read:02+hidden1/kernel/Initializer/random_uniform:08
^
hidden1/bias:0hidden1/bias/Assignhidden1/bias/read:02 hidden1/bias/Initializer/zeros:08
o
hidden2/kernel:0hidden2/kernel/Assignhidden2/kernel/read:02+hidden2/kernel/Initializer/random_uniform:08
^
hidden2/bias:0hidden2/bias/Assignhidden2/bias/read:02 hidden2/bias/Initializer/zeros:08
k
output/kernel:0output/kernel/Assignoutput/kernel/read:02*output/kernel/Initializer/random_uniform:08
Z
output/bias:0output/bias/Assignoutput/bias/read:02output/bias/Initializer/zeros:08?LnÐ      ���	�����A*�'


avg_rewardH*�A

xentT�3>

hidden_1/mean_17@�>

hidden_1/stddev_1���>

hidden_1/max_1A{@

hidden_1/min_1    

hidden_1/per_nonzero�X�>
�
hidden_1/histogram*�   @#h@    `�!A!�>b�DA)GQ���A2�        �-���q=�_�T�l�>�iD*L��>�ѩ�-�>���%�>�uE����>�f����>a�Ϭ(�>8K�ߝ�>�ߊ4F��>})�l a�>pz�w�7�>I��P=�>��Zr[v�>O�ʗ��>>�?�s��>�FF�G ?��[�?1��a˲?6�]��?����?f�ʜ�7
?>h�'�?x?�x�?��d�r?�5�i}1?�T7��?�vV�R9?��ڋ?�.�?ji6�9�?�S�F !?�[^:��"?U�4@@�$?+A�F�&?I�I�)�(?�7Kaa+?��VlQ.?��bȬ�0?��82?�u�w74?��%�V6?uܬ�@8?��%>��:?d�\D�X=?���#@?�!�A?�T���C?a�$��{E?
����G?�qU���I?IcD���L?k�1^�sO?nK���LQ?�lDZrS?<DKc��T?ܗ�SsW?��bB�SY?�m9�H�[?E��{��^?�l�P�`?���%��b?5Ucv0ed?Tw��Nof?P}���h?ߤ�(g%k?�N�W�m?;8�clp?uWy��r?hyO�s?&b՞
�u?*QH�x?o��5sz?���T}?>	� �?����=��?���J�\�?-Ա�L�?eiS�m�?#�+(�ŉ?�7c_XY�?�#�h/�?���&�?�Rc�ݒ?^�S���?�"�uԖ?}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�Z�_���?����?_&A�o��?�Ca�G��?��7��?�^��h��?W�i�b�?��Z%��?�1%�?\l�9�?+Se*8�?uo�p�?2g�G�A�?������?�iZ�?+�;$�?cI���?�P�1���?3?��|�?�E̟���?yL�����?S�Fi��?ܔ�.�u�?��tM@w`<f@�6v��@h�5�@�Š)U	@u�rʭ�@�DK��@{2�.��@�������:�            �A              �?              �?              �?              �?              @      �?              �?              �?              �?       @               @              �?       @      �?      @      @      �?      @       @      @      @       @      @      @       @      @       @      @      *@      &@      (@      @      $@      &@      (@      4@      7@      4@      ?@      @@      >@     �G@      L@     �D@     �H@     �L@     �H@      H@     �J@     �S@     �V@     �Q@     �V@      W@     �`@     ``@     @_@     �b@     �e@     �e@     �k@     �o@     @m@     �r@     Ps@     @s@     @v@      |@     �}@     �|@     ��@     ��@     x�@     �@     H�@     X�@     P�@     ��@     ��@     Ԓ@     �@      �@     ��@     4�@     H�@     �@     �@     ��@     2�@     ��@     *�@     �@     C�@     g�@     Z�@     �@     ζ@     T�@     ��@     ��@     �@     �@     9�@    ���@     i�@    ��@    ���@    �1�@    ���@    ��@     ��@     ��@     -�@     ?�@    ���@     w�@     ��@     u�@     :�@     ��@     �@     ��@     X�@      �@     h�@     }@     �j@     @Q@      $@       @        

hidden_2/mean_17@�>

hidden_2/stddev_1���>

hidden_2/max_1A{@

hidden_2/min_1    

hidden_2/per_nonzero�X�>
�
hidden_2/histogram*�   @#h@    `�!A!�>b�DA)GQ���A2�        �-���q=�_�T�l�>�iD*L��>�ѩ�-�>���%�>�uE����>�f����>a�Ϭ(�>8K�ߝ�>�ߊ4F��>})�l a�>pz�w�7�>I��P=�>��Zr[v�>O�ʗ��>>�?�s��>�FF�G ?��[�?1��a˲?6�]��?����?f�ʜ�7
?>h�'�?x?�x�?��d�r?�5�i}1?�T7��?�vV�R9?��ڋ?�.�?ji6�9�?�S�F !?�[^:��"?U�4@@�$?+A�F�&?I�I�)�(?�7Kaa+?��VlQ.?��bȬ�0?��82?�u�w74?��%�V6?uܬ�@8?��%>��:?d�\D�X=?���#@?�!�A?�T���C?a�$��{E?
����G?�qU���I?IcD���L?k�1^�sO?nK���LQ?�lDZrS?<DKc��T?ܗ�SsW?��bB�SY?�m9�H�[?E��{��^?�l�P�`?���%��b?5Ucv0ed?Tw��Nof?P}���h?ߤ�(g%k?�N�W�m?;8�clp?uWy��r?hyO�s?&b՞
�u?*QH�x?o��5sz?���T}?>	� �?����=��?���J�\�?-Ա�L�?eiS�m�?#�+(�ŉ?�7c_XY�?�#�h/�?���&�?�Rc�ݒ?^�S���?�"�uԖ?}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�Z�_���?����?_&A�o��?�Ca�G��?��7��?�^��h��?W�i�b�?��Z%��?�1%�?\l�9�?+Se*8�?uo�p�?2g�G�A�?������?�iZ�?+�;$�?cI���?�P�1���?3?��|�?�E̟���?yL�����?S�Fi��?ܔ�.�u�?��tM@w`<f@�6v��@h�5�@�Š)U	@u�rʭ�@�DK��@{2�.��@�������:�            �A              �?              �?              �?              �?              @      �?              �?              �?              �?       @               @              �?       @      �?      @      @      �?      @       @      @      @       @      @      @       @      @       @      @      *@      &@      (@      @      $@      &@      (@      4@      7@      4@      ?@      @@      >@     �G@      L@     �D@     �H@     �L@     �H@      H@     �J@     �S@     �V@     �Q@     �V@      W@     �`@     ``@     @_@     �b@     �e@     �e@     �k@     �o@     @m@     �r@     Ps@     @s@     @v@      |@     �}@     �|@     ��@     ��@     x�@     �@     H�@     X�@     P�@     ��@     ��@     Ԓ@     �@      �@     ��@     4�@     H�@     �@     �@     ��@     2�@     ��@     *�@     �@     C�@     g�@     Z�@     �@     ζ@     T�@     ��@     ��@     �@     �@     9�@    ���@     i�@    ��@    ���@    �1�@    ���@    ��@     ��@     ��@     -�@     ?�@    ���@     w�@     ��@     u�@     :�@     ��@     �@     ��@     X�@      �@     h�@     }@     �j@     @Q@      $@       @        U�dZ�      ܸ�	�������A2*�%


avg_reward�C�A

xentZ8_>

hidden_1/mean_1"�>

hidden_1/stddev_1K�>

hidden_1/max_1���@

hidden_1/min_1    

hidden_1/per_nonzero��>
�
hidden_1/histogram*�   `�@    � A!`�L��c�@)ȕC� �@2�        �-���q=0�6�/n�>5�"�g��>�iD*L��>E��a�W�>})�l a�>pz�w�7�>I��P=�>��Zr[v�>�FF�G ?��[�?1��a˲?6�]��?����?f�ʜ�7
?>h�'�?x?�x�?��d�r?�5�i}1?�T7��?�vV�R9?��ڋ?�.�?ji6�9�?�S�F !?�[^:��"?U�4@@�$?+A�F�&?I�I�)�(?�7Kaa+?��VlQ.?��bȬ�0?��82?�u�w74?��%�V6?uܬ�@8?��%>��:?d�\D�X=?���#@?�!�A?�T���C?a�$��{E?
����G?�qU���I?IcD���L?k�1^�sO?nK���LQ?�lDZrS?<DKc��T?ܗ�SsW?��bB�SY?�m9�H�[?E��{��^?�l�P�`?���%��b?5Ucv0ed?Tw��Nof?P}���h?ߤ�(g%k?�N�W�m?;8�clp?uWy��r?hyO�s?&b՞
�u?*QH�x?o��5sz?���T}?>	� �?����=��?���J�\�?-Ա�L�?eiS�m�?#�+(�ŉ?�7c_XY�?�#�h/�?���&�?�Rc�ݒ?^�S���?�"�uԖ?}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�Z�_���?����?_&A�o��?�Ca�G��?��7��?�^��h��?W�i�b�?��Z%��?�1%�?\l�9�?+Se*8�?uo�p�?2g�G�A�?������?�iZ�?+�;$�?cI���?�P�1���?3?��|�?�E̟���?yL�����?S�Fi��?ܔ�.�u�?��tM@w`<f@�6v��@h�5�@�Š)U	@u�rʭ�@�DK��@{2�.��@!��v�@زv�5f@�������:�            PA              �?              �?              �?              �?              �?               @       @       @      @      @       @              �?      @       @       @              @      @       @      @              @      @      @      @      @      @      @      @      @      @      &@      "@      "@      0@      *@      7@      *@      3@      6@      4@     �B@      :@      @@      @@      >@     �A@     �D@     �L@      H@     �J@      I@     @Q@     @P@      Q@     @S@     �[@     �]@     �V@     �`@     �c@     @b@     �h@      k@     �n@     �j@      q@     �u@     s@     t@     �v@     pz@      �@     ��@     �@     ��@     `�@     ȅ@     �@      �@      �@     �@     8�@     �@     ��@     �@     �@     4�@     ��@     ��@     �@     ��@     ��@     ��@     ��@     �@     4�@     ��@     c�@     g�@     ��@     ̲@     ��@     )�@     ��@     �@     д@     ��@     �@     ��@     B�@     ��@     �@     ګ@     ��@     b�@     Ԣ@     h�@     ��@     �@     X�@     ��@     �y@     `p@     �`@      J@      .@      �?        

hidden_2/mean_1"�>

hidden_2/stddev_1K�>

hidden_2/max_1���@

hidden_2/min_1    

hidden_2/per_nonzero��>
�
hidden_2/histogram*�   `�@    � A!`�L��c�@)ȕC� �@2�        �-���q=0�6�/n�>5�"�g��>�iD*L��>E��a�W�>})�l a�>pz�w�7�>I��P=�>��Zr[v�>�FF�G ?��[�?1��a˲?6�]��?����?f�ʜ�7
?>h�'�?x?�x�?��d�r?�5�i}1?�T7��?�vV�R9?��ڋ?�.�?ji6�9�?�S�F !?�[^:��"?U�4@@�$?+A�F�&?I�I�)�(?�7Kaa+?��VlQ.?��bȬ�0?��82?�u�w74?��%�V6?uܬ�@8?��%>��:?d�\D�X=?���#@?�!�A?�T���C?a�$��{E?
����G?�qU���I?IcD���L?k�1^�sO?nK���LQ?�lDZrS?<DKc��T?ܗ�SsW?��bB�SY?�m9�H�[?E��{��^?�l�P�`?���%��b?5Ucv0ed?Tw��Nof?P}���h?ߤ�(g%k?�N�W�m?;8�clp?uWy��r?hyO�s?&b՞
�u?*QH�x?o��5sz?���T}?>	� �?����=��?���J�\�?-Ա�L�?eiS�m�?#�+(�ŉ?�7c_XY�?�#�h/�?���&�?�Rc�ݒ?^�S���?�"�uԖ?}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�Z�_���?����?_&A�o��?�Ca�G��?��7��?�^��h��?W�i�b�?��Z%��?�1%�?\l�9�?+Se*8�?uo�p�?2g�G�A�?������?�iZ�?+�;$�?cI���?�P�1���?3?��|�?�E̟���?yL�����?S�Fi��?ܔ�.�u�?��tM@w`<f@�6v��@h�5�@�Š)U	@u�rʭ�@�DK��@{2�.��@!��v�@زv�5f@�������:�            PA              �?              �?              �?              �?              �?               @       @       @      @      @       @              �?      @       @       @              @      @       @      @              @      @      @      @      @      @      @      @      @      @      &@      "@      "@      0@      *@      7@      *@      3@      6@      4@     �B@      :@      @@      @@      >@     �A@     �D@     �L@      H@     �J@      I@     @Q@     @P@      Q@     @S@     �[@     �]@     �V@     �`@     �c@     @b@     �h@      k@     �n@     �j@      q@     �u@     s@     t@     �v@     pz@      �@     ��@     �@     ��@     `�@     ȅ@     �@      �@      �@     �@     8�@     �@     ��@     �@     �@     4�@     ��@     ��@     �@     ��@     ��@     ��@     ��@     �@     4�@     ��@     c�@     g�@     ��@     ̲@     ��@     )�@     ��@     �@     д@     ��@     �@     ��@     B�@     ��@     �@     ګ@     ��@     b�@     Ԣ@     h�@     ��@     �@     X�@     ��@     �y@     `p@     �`@      J@      .@      �?        E��0      �,5E	�������AK*�&


avg_reward�<�

xent�F̽

hidden_1/mean_1���>

hidden_1/stddev_1�?

hidden_1/max_1�J�@

hidden_1/min_1    

hidden_1/per_nonzero���>
�
hidden_1/histogram*�   �]�@    �
A!�)�~Dn A)��ss��A2�        �-���q=��n����>�u`P+d�>5�"�g��>G&�$�>jqs&\��>��~]�[�>pz�w�7�>I��P=�>>�?�s��>�FF�G ?��[�?1��a˲?6�]��?����?f�ʜ�7
?>h�'�?x?�x�?��d�r?�5�i}1?�T7��?�vV�R9?��ڋ?�.�?ji6�9�?�S�F !?�[^:��"?U�4@@�$?+A�F�&?I�I�)�(?�7Kaa+?��VlQ.?��bȬ�0?��82?�u�w74?��%�V6?uܬ�@8?��%>��:?d�\D�X=?���#@?�!�A?�T���C?a�$��{E?
����G?�qU���I?IcD���L?k�1^�sO?nK���LQ?�lDZrS?<DKc��T?ܗ�SsW?��bB�SY?�m9�H�[?E��{��^?�l�P�`?���%��b?5Ucv0ed?Tw��Nof?P}���h?ߤ�(g%k?�N�W�m?;8�clp?uWy��r?hyO�s?&b՞
�u?*QH�x?o��5sz?���T}?>	� �?����=��?���J�\�?-Ա�L�?eiS�m�?#�+(�ŉ?�7c_XY�?�#�h/�?���&�?�Rc�ݒ?^�S���?�"�uԖ?}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�Z�_���?����?_&A�o��?�Ca�G��?��7��?�^��h��?W�i�b�?��Z%��?�1%�?\l�9�?+Se*8�?uo�p�?2g�G�A�?������?�iZ�?+�;$�?cI���?�P�1���?3?��|�?�E̟���?yL�����?S�Fi��?ܔ�.�u�?��tM@w`<f@�6v��@h�5�@�Š)U	@u�rʭ�@�DK��@{2�.��@!��v�@زv�5f@��h:np@�������:�            A              �?              �?              �?              �?              �?              �?      �?              �?               @      @               @      �?      @      @              @       @      @      @      $@      �?       @      $@      (@      $@      @      $@       @      &@      @      (@      6@      5@      @      (@      3@      2@      3@      4@      .@      8@      =@      3@      F@     @U@     �L@     �G@      N@     �F@      J@     @S@     �O@     �S@     @Y@     �W@      U@     �W@     �_@     @\@     `g@      g@     �d@     �k@      p@     @m@      r@     Ps@     Pt@     �u@     �z@     �y@      @     �~@     ��@     �@     0�@     ��@     ��@     ؋@     P�@     �@     ��@     ��@     �@     X�@     ��@     �@     �@     ��@     ��@     |�@     ��@     
�@     ��@     ��@     �@     ��@     f�@     ��@     �@     �@     �@     �@     �@     �@     ��@     B�@     )�@     ��@     K�@     ��@     г@     7�@     ,�@     w�@     v�@     ��@     <�@     v�@     �@     L�@     X�@     �@     (�@     ��@     �o@     �J@      9@        

hidden_2/mean_1���>

hidden_2/stddev_1�?

hidden_2/max_1�J�@

hidden_2/min_1    

hidden_2/per_nonzero���>
�
hidden_2/histogram*�   �]�@    �
A!�)�~Dn A)��ss��A2�        �-���q=��n����>�u`P+d�>5�"�g��>G&�$�>jqs&\��>��~]�[�>pz�w�7�>I��P=�>>�?�s��>�FF�G ?��[�?1��a˲?6�]��?����?f�ʜ�7
?>h�'�?x?�x�?��d�r?�5�i}1?�T7��?�vV�R9?��ڋ?�.�?ji6�9�?�S�F !?�[^:��"?U�4@@�$?+A�F�&?I�I�)�(?�7Kaa+?��VlQ.?��bȬ�0?��82?�u�w74?��%�V6?uܬ�@8?��%>��:?d�\D�X=?���#@?�!�A?�T���C?a�$��{E?
����G?�qU���I?IcD���L?k�1^�sO?nK���LQ?�lDZrS?<DKc��T?ܗ�SsW?��bB�SY?�m9�H�[?E��{��^?�l�P�`?���%��b?5Ucv0ed?Tw��Nof?P}���h?ߤ�(g%k?�N�W�m?;8�clp?uWy��r?hyO�s?&b՞
�u?*QH�x?o��5sz?���T}?>	� �?����=��?���J�\�?-Ա�L�?eiS�m�?#�+(�ŉ?�7c_XY�?�#�h/�?���&�?�Rc�ݒ?^�S���?�"�uԖ?}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�Z�_���?����?_&A�o��?�Ca�G��?��7��?�^��h��?W�i�b�?��Z%��?�1%�?\l�9�?+Se*8�?uo�p�?2g�G�A�?������?�iZ�?+�;$�?cI���?�P�1���?3?��|�?�E̟���?yL�����?S�Fi��?ܔ�.�u�?��tM@w`<f@�6v��@h�5�@�Š)U	@u�rʭ�@�DK��@{2�.��@!��v�@زv�5f@��h:np@�������:�            A              �?              �?              �?              �?              �?              �?      �?              �?               @      @               @      �?      @      @              @       @      @      @      $@      �?       @      $@      (@      $@      @      $@       @      &@      @      (@      6@      5@      @      (@      3@      2@      3@      4@      .@      8@      =@      3@      F@     @U@     �L@     �G@      N@     �F@      J@     @S@     �O@     �S@     @Y@     �W@      U@     �W@     �_@     @\@     `g@      g@     �d@     �k@      p@     @m@      r@     Ps@     Pt@     �u@     �z@     �y@      @     �~@     ��@     �@     0�@     ��@     ��@     ؋@     P�@     �@     ��@     ��@     �@     X�@     ��@     �@     �@     ��@     ��@     |�@     ��@     
�@     ��@     ��@     �@     ��@     f�@     ��@     �@     �@     �@     �@     �@     �@     ��@     B�@     )�@     ��@     K�@     ��@     г@     7�@     ,�@     w�@     v�@     ��@     <�@     v�@     �@     L�@     X�@     �@     (�@     ��@     �o@     �J@      9@        ι��p      ߐ�	&������Ad*�$


avg_reward  ��

xent}z�

hidden_1/mean_1d��>

hidden_1/stddev_1]S?

hidden_1/max_1���@

hidden_1/min_1    

hidden_1/per_nonzero��>
�
hidden_1/histogram*�   �^t@    �w9A!��Ni'A)-�w�6A2�        �-���q=K+�E���>jqs&\��>E��a�W�>�ѩ�-�>��(���>a�Ϭ(�>})�l a�>pz�w�7�>����?f�ʜ�7
?x?�x�?��d�r?�T7��?�vV�R9?��ڋ?�.�?ji6�9�?�S�F !?�[^:��"?U�4@@�$?+A�F�&?I�I�)�(?�7Kaa+?��VlQ.?��bȬ�0?��82?�u�w74?��%�V6?uܬ�@8?��%>��:?d�\D�X=?���#@?�!�A?�T���C?a�$��{E?
����G?�qU���I?IcD���L?k�1^�sO?nK���LQ?�lDZrS?<DKc��T?ܗ�SsW?��bB�SY?�m9�H�[?E��{��^?�l�P�`?���%��b?5Ucv0ed?Tw��Nof?P}���h?ߤ�(g%k?�N�W�m?;8�clp?uWy��r?hyO�s?&b՞
�u?*QH�x?o��5sz?���T}?>	� �?����=��?���J�\�?-Ա�L�?eiS�m�?#�+(�ŉ?�7c_XY�?�#�h/�?���&�?�Rc�ݒ?^�S���?�"�uԖ?}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�Z�_���?����?_&A�o��?�Ca�G��?��7��?�^��h��?W�i�b�?��Z%��?�1%�?\l�9�?+Se*8�?uo�p�?2g�G�A�?������?�iZ�?+�;$�?cI���?�P�1���?3?��|�?�E̟���?yL�����?S�Fi��?ܔ�.�u�?��tM@w`<f@�6v��@h�5�@�Š)U	@u�rʭ�@�DK��@{2�.��@!��v�@زv�5f@��h:np@S���߮@�������:�            �/A              �?             �h@              @              .@              �?             �f@              @      @      @      �?      4@      @              @      @              @       @      @      @              5@      1@       @      F@      $@      <@      @      9@      &@      4@      *@      ?@      @      =@      ?@      <@     �H@      C@     �F@      *@     �y@     �x@     �Z@      t@     �W@     �U@     @Z@     �U@     �z@      d@      Z@     �x@     �m@     �d@     h�@     �p@     ��@     Ps@      t@      t@     �@     x�@     �@     D�@     ��@     8�@     h�@     ��@     Ѝ@     ��@     �@     `�@     ��@     �@     Ф@     �@     Ʃ@     �@     `�@     |�@     ű@     ��@     K�@     �@     Q�@     ��@     ӻ@     d�@    ���@    �W�@    ���@    �D�@     m�@    �1�@    ���@    �l�@    ���@    �p�@    �A�@    @E�@    �/�@    ���@    ���@     ��@    @B�@    @��@    @��@    �`�@    @�@    ���@     o�@     ��@    ���@     ��@     )�@     4�@     ��@     ˴@     u�@     X�@     �@     �W@      5@        

hidden_2/mean_1d��>

hidden_2/stddev_1]S?

hidden_2/max_1���@

hidden_2/min_1    

hidden_2/per_nonzero��>
�
hidden_2/histogram*�   �^t@    �w9A!��Ni'A)-�w�6A2�        �-���q=K+�E���>jqs&\��>E��a�W�>�ѩ�-�>��(���>a�Ϭ(�>})�l a�>pz�w�7�>����?f�ʜ�7
?x?�x�?��d�r?�T7��?�vV�R9?��ڋ?�.�?ji6�9�?�S�F !?�[^:��"?U�4@@�$?+A�F�&?I�I�)�(?�7Kaa+?��VlQ.?��bȬ�0?��82?�u�w74?��%�V6?uܬ�@8?��%>��:?d�\D�X=?���#@?�!�A?�T���C?a�$��{E?
����G?�qU���I?IcD���L?k�1^�sO?nK���LQ?�lDZrS?<DKc��T?ܗ�SsW?��bB�SY?�m9�H�[?E��{��^?�l�P�`?���%��b?5Ucv0ed?Tw��Nof?P}���h?ߤ�(g%k?�N�W�m?;8�clp?uWy��r?hyO�s?&b՞
�u?*QH�x?o��5sz?���T}?>	� �?����=��?���J�\�?-Ա�L�?eiS�m�?#�+(�ŉ?�7c_XY�?�#�h/�?���&�?�Rc�ݒ?^�S���?�"�uԖ?}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�Z�_���?����?_&A�o��?�Ca�G��?��7��?�^��h��?W�i�b�?��Z%��?�1%�?\l�9�?+Se*8�?uo�p�?2g�G�A�?������?�iZ�?+�;$�?cI���?�P�1���?3?��|�?�E̟���?yL�����?S�Fi��?ܔ�.�u�?��tM@w`<f@�6v��@h�5�@�Š)U	@u�rʭ�@�DK��@{2�.��@!��v�@زv�5f@��h:np@S���߮@�������:�            �/A              �?             �h@              @              .@              �?             �f@              @      @      @      �?      4@      @              @      @              @       @      @      @              5@      1@       @      F@      $@      <@      @      9@      &@      4@      *@      ?@      @      =@      ?@      <@     �H@      C@     �F@      *@     �y@     �x@     �Z@      t@     �W@     �U@     @Z@     �U@     �z@      d@      Z@     �x@     �m@     �d@     h�@     �p@     ��@     Ps@      t@      t@     �@     x�@     �@     D�@     ��@     8�@     h�@     ��@     Ѝ@     ��@     �@     `�@     ��@     �@     Ф@     �@     Ʃ@     �@     `�@     |�@     ű@     ��@     K�@     �@     Q�@     ��@     ӻ@     d�@    ���@    �W�@    ���@    �D�@     m�@    �1�@    ���@    �l�@    ���@    �p�@    �A�@    @E�@    �/�@    ���@    ���@     ��@    @B�@    @��@    @��@    �`�@    @�@    ���@     o�@     ��@    ���@     ��@     )�@     4�@     ��@     ˴@     u�@     X�@     �@     �W@      5@        G��      �t��	$�L����A}*�#


avg_reward  ��

xentR2��

hidden_1/mean_1� ?

hidden_1/stddev_1.�l?

hidden_1/max_1��@

hidden_1/min_1    

hidden_1/per_nonzero�׸>
�
hidden_1/histogram*�   `xa@    �BA!��)Ԣ2A)f�m�DA2�        �-���q=�u`P+d�>0�6�/n�>��[�?1��a˲?>h�'�?x?�x�?�5�i}1?�T7��?�.�?ji6�9�?�S�F !?�[^:��"?U�4@@�$?+A�F�&?I�I�)�(?�7Kaa+?��VlQ.?��bȬ�0?��82?�u�w74?��%�V6?uܬ�@8?��%>��:?d�\D�X=?���#@?�!�A?�T���C?a�$��{E?
����G?�qU���I?IcD���L?k�1^�sO?nK���LQ?�lDZrS?<DKc��T?ܗ�SsW?��bB�SY?�m9�H�[?E��{��^?�l�P�`?���%��b?5Ucv0ed?Tw��Nof?P}���h?ߤ�(g%k?�N�W�m?;8�clp?uWy��r?hyO�s?&b՞
�u?*QH�x?o��5sz?���T}?>	� �?����=��?���J�\�?-Ա�L�?eiS�m�?#�+(�ŉ?�7c_XY�?�#�h/�?���&�?�Rc�ݒ?^�S���?�"�uԖ?}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�Z�_���?����?_&A�o��?�Ca�G��?��7��?�^��h��?W�i�b�?��Z%��?�1%�?\l�9�?+Se*8�?uo�p�?2g�G�A�?������?�iZ�?+�;$�?cI���?�P�1���?3?��|�?�E̟���?yL�����?S�Fi��?ܔ�.�u�?��tM@w`<f@�6v��@h�5�@�Š)U	@u�rʭ�@�DK��@{2�.��@!��v�@زv�5f@��h:np@S���߮@)����&@�������:�            ͸7A              �?               @              1@               @              �?               @              9@      @      @      @      �?      �?      2@              *@      8@      @      *@       @      A@      @       @      @      @      F@      ?@      $@      :@      4@      F@      $@      K@     �S@     �@@     @~@     @U@      <@     �q@     �d@     �|@     �S@     �{@     `�@     �X@     ��@     �a@      {@      q@     Pp@     �h@     �n@     P�@     Ȋ@     Њ@     Pr@     8�@     D�@     �@     Њ@     ،@     ��@     ��@     ��@     ��@     h�@     *�@     ��@     ܧ@     L�@     ��@     f�@     ި@     J�@     ��@     9�@     n�@     Y�@     ��@     6�@     !�@    ���@     ڿ@    ��@    �C�@     ?�@     ��@    �[�@     ��@    ���@     ��@    �j�@    ���@    ���@    �l�@    ���@    ���@     s�@    @m�@    `��@    ���@     ��@    ��@    ���@    @�@    `[�@    ���@    @��@    ��@    @{�@    �K�@    @��@    ���@     ��@     =�@     ��@     �@     (�@     @R@        

hidden_2/mean_1� ?

hidden_2/stddev_1.�l?

hidden_2/max_1��@

hidden_2/min_1    

hidden_2/per_nonzero�׸>
�
hidden_2/histogram*�   `xa@    �BA!��)Ԣ2A)f�m�DA2�        �-���q=�u`P+d�>0�6�/n�>��[�?1��a˲?>h�'�?x?�x�?�5�i}1?�T7��?�.�?ji6�9�?�S�F !?�[^:��"?U�4@@�$?+A�F�&?I�I�)�(?�7Kaa+?��VlQ.?��bȬ�0?��82?�u�w74?��%�V6?uܬ�@8?��%>��:?d�\D�X=?���#@?�!�A?�T���C?a�$��{E?
����G?�qU���I?IcD���L?k�1^�sO?nK���LQ?�lDZrS?<DKc��T?ܗ�SsW?��bB�SY?�m9�H�[?E��{��^?�l�P�`?���%��b?5Ucv0ed?Tw��Nof?P}���h?ߤ�(g%k?�N�W�m?;8�clp?uWy��r?hyO�s?&b՞
�u?*QH�x?o��5sz?���T}?>	� �?����=��?���J�\�?-Ա�L�?eiS�m�?#�+(�ŉ?�7c_XY�?�#�h/�?���&�?�Rc�ݒ?^�S���?�"�uԖ?}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�Z�_���?����?_&A�o��?�Ca�G��?��7��?�^��h��?W�i�b�?��Z%��?�1%�?\l�9�?+Se*8�?uo�p�?2g�G�A�?������?�iZ�?+�;$�?cI���?�P�1���?3?��|�?�E̟���?yL�����?S�Fi��?ܔ�.�u�?��tM@w`<f@�6v��@h�5�@�Š)U	@u�rʭ�@�DK��@{2�.��@!��v�@زv�5f@��h:np@S���߮@)����&@�������:�            ͸7A              �?               @              1@               @              �?               @              9@      @      @      @      �?      �?      2@              *@      8@      @      *@       @      A@      @       @      @      @      F@      ?@      $@      :@      4@      F@      $@      K@     �S@     �@@     @~@     @U@      <@     �q@     �d@     �|@     �S@     �{@     `�@     �X@     ��@     �a@      {@      q@     Pp@     �h@     �n@     P�@     Ȋ@     Њ@     Pr@     8�@     D�@     �@     Њ@     ،@     ��@     ��@     ��@     ��@     h�@     *�@     ��@     ܧ@     L�@     ��@     f�@     ި@     J�@     ��@     9�@     n�@     Y�@     ��@     6�@     !�@    ���@     ڿ@    ��@    �C�@     ?�@     ��@    �[�@     ��@    ���@     ��@    �j�@    ���@    ���@    �l�@    ���@    ���@     s�@    @m�@    `��@    ���@     ��@    ��@    ���@    @�@    `[�@    ���@    @��@    ��@    @{�@    �K�@    @��@    ���@     ��@     =�@     ��@     �@     (�@     @R@        ��$1      L[`�	/oa����A�*�"


avg_reward  ��

xent�؝�

hidden_1/mean_1�P?

hidden_1/stddev_1���?

hidden_1/max_1���@

hidden_1/min_1    

hidden_1/per_nonzero;�>
�
hidden_1/histogram*�   ���@    UDA!1>tP�6A)v^�\<LA2�        �-���q=f�ʜ�7
?>h�'�?x?�x�?�T7��?�vV�R9?��ڋ?�.�?�[^:��"?U�4@@�$?+A�F�&?I�I�)�(?�7Kaa+?��VlQ.?��bȬ�0?��82?�u�w74?��%�V6?uܬ�@8?��%>��:?d�\D�X=?���#@?�!�A?�T���C?a�$��{E?
����G?�qU���I?IcD���L?k�1^�sO?nK���LQ?�lDZrS?<DKc��T?ܗ�SsW?��bB�SY?�m9�H�[?E��{��^?�l�P�`?���%��b?5Ucv0ed?Tw��Nof?P}���h?ߤ�(g%k?�N�W�m?;8�clp?uWy��r?hyO�s?&b՞
�u?*QH�x?o��5sz?���T}?>	� �?����=��?���J�\�?-Ա�L�?eiS�m�?#�+(�ŉ?�7c_XY�?�#�h/�?���&�?�Rc�ݒ?^�S���?�"�uԖ?}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�Z�_���?����?_&A�o��?�Ca�G��?��7��?�^��h��?W�i�b�?��Z%��?�1%�?\l�9�?+Se*8�?uo�p�?2g�G�A�?������?�iZ�?+�;$�?cI���?�P�1���?3?��|�?�E̟���?yL�����?S�Fi��?ܔ�.�u�?��tM@w`<f@�6v��@h�5�@�Š)U	@u�rʭ�@�DK��@{2�.��@!��v�@زv�5f@��h:np@S���߮@)����&@�������:�            �Y:A              6@      &@              1@              �?               @              0@      @      @      �?      �?              9@               @     �w@       @      @      <@      @      �?      0@       @      2@      �?      7@      @     �M@      <@      c@      @     @x@     �F@     �T@      H@     �R@     �N@     @[@     �M@     @�@     �T@     �d@     �O@     �~@      S@      b@     X�@     `~@     <�@     �u@     �f@     �j@     @z@     �t@     �p@     �h@     ��@     ��@     h�@     ȋ@     ��@     Г@     �@     P�@     ��@     ��@     �@     �@     8�@     ��@     ��@     ��@     �@     ��@     ¯@     �@     ϶@     �@     K�@     �@     ӿ@    ��@     ¾@     =�@     ~�@    �G�@    ���@    �m�@     ��@    ���@    �I�@    �p�@    @=�@    �r�@    ���@    @�@    @M�@    @V�@    ���@    �^�@    ���@    `��@    ���@     ��@    ���@    �X�@     ��@    �+�@    @N�@    �}�@    @��@     -�@     ��@     g�@     �@     ��@      �@        

hidden_2/mean_1�P?

hidden_2/stddev_1���?

hidden_2/max_1���@

hidden_2/min_1    

hidden_2/per_nonzero;�>
�
hidden_2/histogram*�   ���@    UDA!1>tP�6A)v^�\<LA2�        �-���q=f�ʜ�7
?>h�'�?x?�x�?�T7��?�vV�R9?��ڋ?�.�?�[^:��"?U�4@@�$?+A�F�&?I�I�)�(?�7Kaa+?��VlQ.?��bȬ�0?��82?�u�w74?��%�V6?uܬ�@8?��%>��:?d�\D�X=?���#@?�!�A?�T���C?a�$��{E?
����G?�qU���I?IcD���L?k�1^�sO?nK���LQ?�lDZrS?<DKc��T?ܗ�SsW?��bB�SY?�m9�H�[?E��{��^?�l�P�`?���%��b?5Ucv0ed?Tw��Nof?P}���h?ߤ�(g%k?�N�W�m?;8�clp?uWy��r?hyO�s?&b՞
�u?*QH�x?o��5sz?���T}?>	� �?����=��?���J�\�?-Ա�L�?eiS�m�?#�+(�ŉ?�7c_XY�?�#�h/�?���&�?�Rc�ݒ?^�S���?�"�uԖ?}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�Z�_���?����?_&A�o��?�Ca�G��?��7��?�^��h��?W�i�b�?��Z%��?�1%�?\l�9�?+Se*8�?uo�p�?2g�G�A�?������?�iZ�?+�;$�?cI���?�P�1���?3?��|�?�E̟���?yL�����?S�Fi��?ܔ�.�u�?��tM@w`<f@�6v��@h�5�@�Š)U	@u�rʭ�@�DK��@{2�.��@!��v�@زv�5f@��h:np@S���߮@)����&@�������:�            �Y:A              6@      &@              1@              �?               @              0@      @      @      �?      �?              9@               @     �w@       @      @      <@      @      �?      0@       @      2@      �?      7@      @     �M@      <@      c@      @     @x@     �F@     �T@      H@     �R@     �N@     @[@     �M@     @�@     �T@     �d@     �O@     �~@      S@      b@     X�@     `~@     <�@     �u@     �f@     �j@     @z@     �t@     �p@     �h@     ��@     ��@     h�@     ȋ@     ��@     Г@     �@     P�@     ��@     ��@     �@     �@     8�@     ��@     ��@     ��@     �@     ��@     ¯@     �@     ϶@     �@     K�@     �@     ӿ@    ��@     ¾@     =�@     ~�@    �G�@    ���@    �m�@     ��@    ���@    �I�@    �p�@    @=�@    �r�@    ���@    @�@    @M�@    @V�@    ���@    �^�@    ���@    `��@    ���@     ��@    ���@    �X�@     ��@    �+�@    @N�@    �}�@    @��@     -�@     ��@     g�@     �@     ��@      �@        x��)�      I�:�	+� ����A�*�!


avg_reward  ��

xent?���

hidden_1/mean_1<
?

hidden_1/stddev_1�H�?

hidden_1/max_1���@

hidden_1/min_1    

hidden_1/per_nonzero��>
�
hidden_1/histogram*�   `q@    ��EA!6z5u:A)E�4��RA2�        �-���q=��(���>a�Ϭ(�>��ڋ?�.�?�S�F !?�[^:��"?I�I�)�(?�7Kaa+?��VlQ.?�u�w74?��%�V6?uܬ�@8?��%>��:?d�\D�X=?���#@?�!�A?�T���C?a�$��{E?
����G?�qU���I?IcD���L?k�1^�sO?nK���LQ?�lDZrS?<DKc��T?ܗ�SsW?��bB�SY?�m9�H�[?E��{��^?�l�P�`?���%��b?5Ucv0ed?Tw��Nof?P}���h?ߤ�(g%k?�N�W�m?;8�clp?uWy��r?hyO�s?&b՞
�u?*QH�x?o��5sz?���T}?>	� �?����=��?���J�\�?-Ա�L�?eiS�m�?#�+(�ŉ?�7c_XY�?�#�h/�?���&�?�Rc�ݒ?^�S���?�"�uԖ?}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�Z�_���?����?_&A�o��?�Ca�G��?��7��?�^��h��?W�i�b�?��Z%��?�1%�?\l�9�?+Se*8�?uo�p�?2g�G�A�?������?�iZ�?+�;$�?cI���?�P�1���?3?��|�?�E̟���?yL�����?S�Fi��?ܔ�.�u�?��tM@w`<f@�6v��@h�5�@�Š)U	@u�rʭ�@�DK��@{2�.��@!��v�@زv�5f@��h:np@S���߮@)����&@a/5L��@�������:�            �j<A               @              �?              @              E@      @              �?      �?              _@      @      @       @      �?      >@      ;@      �?      ?@      �?      @      B@      �?      3@      &@     �J@              A@     �x@     �P@     �^@      "@      =@     �P@      2@     �O@     @]@      U@     �@     �W@     `s@     �@     x�@     p@      �@     �@      k@     @i@     X�@     ؓ@     �f@     l�@     ��@     Ў@     ��@     (�@     �@     x�@     ,�@     ��@     ԕ@     �@     ��@     ~�@     2�@     �@     f�@     �@     F�@     4�@      �@     ö@     Ӻ@     O�@     r�@     Q�@    ���@    ���@    �N�@    ���@    ���@     Z�@     p�@     �@    @#�@    �a�@     ��@     �@    @��@    @�@     ��@    ���@    `��@    `6�@    ���@    `��@    @��@    `��@     $�@    `�@    ���@    ���@    ���@    ���@     �@    ��@    �W�@    ���@    ���@     ߾@     ��@     ��@     ��@        

hidden_2/mean_1<
?

hidden_2/stddev_1�H�?

hidden_2/max_1���@

hidden_2/min_1    

hidden_2/per_nonzero��>
�
hidden_2/histogram*�   `q@    ��EA!6z5u:A)E�4��RA2�        �-���q=��(���>a�Ϭ(�>��ڋ?�.�?�S�F !?�[^:��"?I�I�)�(?�7Kaa+?��VlQ.?�u�w74?��%�V6?uܬ�@8?��%>��:?d�\D�X=?���#@?�!�A?�T���C?a�$��{E?
����G?�qU���I?IcD���L?k�1^�sO?nK���LQ?�lDZrS?<DKc��T?ܗ�SsW?��bB�SY?�m9�H�[?E��{��^?�l�P�`?���%��b?5Ucv0ed?Tw��Nof?P}���h?ߤ�(g%k?�N�W�m?;8�clp?uWy��r?hyO�s?&b՞
�u?*QH�x?o��5sz?���T}?>	� �?����=��?���J�\�?-Ա�L�?eiS�m�?#�+(�ŉ?�7c_XY�?�#�h/�?���&�?�Rc�ݒ?^�S���?�"�uԖ?}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�Z�_���?����?_&A�o��?�Ca�G��?��7��?�^��h��?W�i�b�?��Z%��?�1%�?\l�9�?+Se*8�?uo�p�?2g�G�A�?������?�iZ�?+�;$�?cI���?�P�1���?3?��|�?�E̟���?yL�����?S�Fi��?ܔ�.�u�?��tM@w`<f@�6v��@h�5�@�Š)U	@u�rʭ�@�DK��@{2�.��@!��v�@زv�5f@��h:np@S���߮@)����&@a/5L��@�������:�            �j<A               @              �?              @              E@      @              �?      �?              _@      @      @       @      �?      >@      ;@      �?      ?@      �?      @      B@      �?      3@      &@     �J@              A@     �x@     �P@     �^@      "@      =@     �P@      2@     �O@     @]@      U@     �@     �W@     `s@     �@     x�@     p@      �@     �@      k@     @i@     X�@     ؓ@     �f@     l�@     ��@     Ў@     ��@     (�@     �@     x�@     ,�@     ��@     ԕ@     �@     ��@     ~�@     2�@     �@     f�@     �@     F�@     4�@      �@     ö@     Ӻ@     O�@     r�@     Q�@    ���@    ���@    �N�@    ���@    ���@     Z�@     p�@     �@    @#�@    �a�@     ��@     �@    @��@    @�@     ��@    ���@    `��@    `6�@    ���@    `��@    @��@    `��@     $�@    `�@    ���@    ���@    ���@    ���@     �@    ��@    �W�@    ���@    ���@     ߾@     ��@     ��@     ��@        "��/q      K��	 f�����A�*� 


avg_reward  ��

xent�0��

hidden_1/mean_1q�&?

hidden_1/stddev_1�~�?

hidden_1/max_1���@

hidden_1/min_1    

hidden_1/per_nonzero�ر>
�
hidden_1/histogram*�   @�@    �FA!����r=A)y2�UA2�        �-���q=x?�x�?��d�r?�.�?ji6�9�?�S�F !?�[^:��"?�7Kaa+?��VlQ.?��82?�u�w74?��%�V6?d�\D�X=?���#@?�!�A?�T���C?a�$��{E?
����G?�qU���I?IcD���L?k�1^�sO?nK���LQ?�lDZrS?<DKc��T?ܗ�SsW?��bB�SY?�m9�H�[?E��{��^?�l�P�`?���%��b?5Ucv0ed?Tw��Nof?P}���h?ߤ�(g%k?�N�W�m?;8�clp?uWy��r?hyO�s?&b՞
�u?*QH�x?o��5sz?���T}?>	� �?����=��?���J�\�?-Ա�L�?eiS�m�?#�+(�ŉ?�7c_XY�?�#�h/�?���&�?�Rc�ݒ?^�S���?�"�uԖ?}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�Z�_���?����?_&A�o��?�Ca�G��?��7��?�^��h��?W�i�b�?��Z%��?�1%�?\l�9�?+Se*8�?uo�p�?2g�G�A�?������?�iZ�?+�;$�?cI���?�P�1���?3?��|�?�E̟���?yL�����?S�Fi��?ܔ�.�u�?��tM@w`<f@�6v��@h�5�@�Š)U	@u�rʭ�@�DK��@{2�.��@!��v�@زv�5f@��h:np@S���߮@)����&@a/5L��@v@�5m @�������:�            �=A              �?              �?              9@              4@              (@      @              A@               @              (@      :@      9@      J@      (@      @      ?@     �E@      �?      5@      A@      ;@      4@     �@@      �?      k@     �D@     �t@      :@     �L@     P|@      B@     �O@      H@     �z@     X�@      W@      a@      r@      ~@      x@     �@     (�@     �@      �@     �@     p�@     8�@     ��@     ��@     �u@     h�@     h�@     b�@     6�@     �@     J�@     6�@     ģ@     ȟ@     r�@     Щ@     B�@     :�@     �@     X�@     �@    ���@     �@     ��@     ~�@     0�@    �_�@    ��@     ��@    ��@     k�@     7�@    ���@    ���@    @{�@    @�@     ��@     t�@    @0�@     ��@    ���@    ���@    �X�@    `q�@    `��@    `��@    @n�@    ���@    ��@    ���@    `��@     �@    �W�@    ��@    ��@    ���@     B�@     ��@     ��@    ���@     ��@     f�@     X�@        

hidden_2/mean_1q�&?

hidden_2/stddev_1�~�?

hidden_2/max_1���@

hidden_2/min_1    

hidden_2/per_nonzero�ر>
�
hidden_2/histogram*�   @�@    �FA!����r=A)y2�UA2�        �-���q=x?�x�?��d�r?�.�?ji6�9�?�S�F !?�[^:��"?�7Kaa+?��VlQ.?��82?�u�w74?��%�V6?d�\D�X=?���#@?�!�A?�T���C?a�$��{E?
����G?�qU���I?IcD���L?k�1^�sO?nK���LQ?�lDZrS?<DKc��T?ܗ�SsW?��bB�SY?�m9�H�[?E��{��^?�l�P�`?���%��b?5Ucv0ed?Tw��Nof?P}���h?ߤ�(g%k?�N�W�m?;8�clp?uWy��r?hyO�s?&b՞
�u?*QH�x?o��5sz?���T}?>	� �?����=��?���J�\�?-Ա�L�?eiS�m�?#�+(�ŉ?�7c_XY�?�#�h/�?���&�?�Rc�ݒ?^�S���?�"�uԖ?}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�Z�_���?����?_&A�o��?�Ca�G��?��7��?�^��h��?W�i�b�?��Z%��?�1%�?\l�9�?+Se*8�?uo�p�?2g�G�A�?������?�iZ�?+�;$�?cI���?�P�1���?3?��|�?�E̟���?yL�����?S�Fi��?ܔ�.�u�?��tM@w`<f@�6v��@h�5�@�Š)U	@u�rʭ�@�DK��@{2�.��@!��v�@زv�5f@��h:np@S���߮@)����&@a/5L��@v@�5m @�������:�            �=A              �?              �?              9@              4@              (@      @              A@               @              (@      :@      9@      J@      (@      @      ?@     �E@      �?      5@      A@      ;@      4@     �@@      �?      k@     �D@     �t@      :@     �L@     P|@      B@     �O@      H@     �z@     X�@      W@      a@      r@      ~@      x@     �@     (�@     �@      �@     �@     p�@     8�@     ��@     ��@     �u@     h�@     h�@     b�@     6�@     �@     J�@     6�@     ģ@     ȟ@     r�@     Щ@     B�@     :�@     �@     X�@     �@    ���@     �@     ��@     ~�@     0�@    �_�@    ��@     ��@    ��@     k�@     7�@    ���@    ���@    @{�@    @�@     ��@     t�@    @0�@     ��@    ���@    ���@    �X�@    `q�@    `��@    `��@    @n�@    ���@    ��@    ���@    `��@     �@    �W�@    ��@    ��@    ���@     B�@     ��@     ��@    ���@     ��@     f�@     X�@         煟q      ,�R�	��褉��A�*�


avg_reward  ��

xent��

hidden_1/mean_1�I1?

hidden_1/stddev_1 ��?

hidden_1/max_1�=A

hidden_1/min_1    

hidden_1/per_nonzerocg�>
�
hidden_1/histogram*�   ��!@    GA!.�O@A)�K�ؒYA2�        �-���q=ji6�9�?�S�F !?U�4@@�$?+A�F�&?I�I�)�(?�7Kaa+?��VlQ.?��bȬ�0?a�$��{E?
����G?�qU���I?nK���LQ?�lDZrS?<DKc��T?ܗ�SsW?��bB�SY?�m9�H�[?E��{��^?�l�P�`?���%��b?5Ucv0ed?Tw��Nof?P}���h?ߤ�(g%k?�N�W�m?;8�clp?uWy��r?hyO�s?&b՞
�u?*QH�x?o��5sz?���T}?>	� �?����=��?���J�\�?-Ա�L�?eiS�m�?#�+(�ŉ?�7c_XY�?�#�h/�?���&�?�Rc�ݒ?^�S���?�"�uԖ?}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�Z�_���?����?_&A�o��?�Ca�G��?��7��?�^��h��?W�i�b�?��Z%��?�1%�?\l�9�?+Se*8�?uo�p�?2g�G�A�?������?�iZ�?+�;$�?cI���?�P�1���?3?��|�?�E̟���?yL�����?S�Fi��?ܔ�.�u�?��tM@w`<f@�6v��@h�5�@�Š)U	@u�rʭ�@�DK��@{2�.��@!��v�@زv�5f@��h:np@S���߮@)����&@a/5L��@v@�5m @��@�"@�������:�            T4>A              6@              @      :@      �?              �?              �?      7@              �?              �?              @      k@      2@      @      ;@      ;@     @k@     �@      8@     �W@     pr@      >@     �\@     �N@      K@      K@     �u@     �~@     @S@     �@     ��@     8�@     �V@     p�@     �@     �@     ��@     ��@     pq@     Ё@     �@     �{@     H�@     �@     T�@     h�@     ��@     ��@     Ȝ@     ��@     ��@     �@     Z�@     �@     I�@     ��@     ��@     �@     ?�@     ��@     �@     ��@     �@     ��@     �@    ���@     	�@     ��@    ���@    @b�@    @*�@    ���@    ���@     ��@    @��@    ���@     B�@     )�@    ���@     �@    ���@    ���@    �^�@     ��@    ���@    ���@    @��@    ���@    `s�@    ���@    ���@    @��@    ���@    �>�@    �C�@    �	�@    �E�@     ��@     p�@     �@     �{@        

hidden_2/mean_1�I1?

hidden_2/stddev_1 ��?

hidden_2/max_1�=A

hidden_2/min_1    

hidden_2/per_nonzerocg�>
�
hidden_2/histogram*�   ��!@    GA!.�O@A)�K�ؒYA2�        �-���q=ji6�9�?�S�F !?U�4@@�$?+A�F�&?I�I�)�(?�7Kaa+?��VlQ.?��bȬ�0?a�$��{E?
����G?�qU���I?nK���LQ?�lDZrS?<DKc��T?ܗ�SsW?��bB�SY?�m9�H�[?E��{��^?�l�P�`?���%��b?5Ucv0ed?Tw��Nof?P}���h?ߤ�(g%k?�N�W�m?;8�clp?uWy��r?hyO�s?&b՞
�u?*QH�x?o��5sz?���T}?>	� �?����=��?���J�\�?-Ա�L�?eiS�m�?#�+(�ŉ?�7c_XY�?�#�h/�?���&�?�Rc�ݒ?^�S���?�"�uԖ?}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�Z�_���?����?_&A�o��?�Ca�G��?��7��?�^��h��?W�i�b�?��Z%��?�1%�?\l�9�?+Se*8�?uo�p�?2g�G�A�?������?�iZ�?+�;$�?cI���?�P�1���?3?��|�?�E̟���?yL�����?S�Fi��?ܔ�.�u�?��tM@w`<f@�6v��@h�5�@�Š)U	@u�rʭ�@�DK��@{2�.��@!��v�@زv�5f@��h:np@S���߮@)����&@a/5L��@v@�5m @��@�"@�������:�            T4>A              6@              @      :@      �?              �?              �?      7@              �?              �?              @      k@      2@      @      ;@      ;@     @k@     �@      8@     �W@     pr@      >@     �\@     �N@      K@      K@     �u@     �~@     @S@     �@     ��@     8�@     �V@     p�@     �@     �@     ��@     ��@     pq@     Ё@     �@     �{@     H�@     �@     T�@     h�@     ��@     ��@     Ȝ@     ��@     ��@     �@     Z�@     �@     I�@     ��@     ��@     �@     ?�@     ��@     �@     ��@     �@     ��@     �@    ���@     	�@     ��@    ���@    @b�@    @*�@    ���@    ���@     ��@    @��@    ���@     B�@     )�@    ���@     �@    ���@    ���@    �^�@     ��@    ���@    ���@    @��@    ���@    `s�@    ���@    ���@    @��@    ���@    �>�@    �C�@    �	�@    �E�@     ��@     p�@     �@     �{@        �;	D�      .B��	i�Ҩ���A�*�


avg_reward  ��

xent���

hidden_1/mean_1��:?

hidden_1/stddev_1���?

hidden_1/max_1`(A

hidden_1/min_1    

hidden_1/per_nonzerok��>
�
hidden_1/histogram*�    "@    4�GA!Q'X�0AA)�O'�(]A2�        �-���q=I�I�)�(?�7Kaa+?��bȬ�0?��82?�u�w74?��%�V6?uܬ�@8?��%>��:?d�\D�X=?���#@?�!�A?IcD���L?k�1^�sO?nK���LQ?�lDZrS?<DKc��T?ܗ�SsW?��bB�SY?�m9�H�[?E��{��^?�l�P�`?���%��b?5Ucv0ed?Tw��Nof?P}���h?ߤ�(g%k?�N�W�m?;8�clp?uWy��r?hyO�s?&b՞
�u?*QH�x?o��5sz?���T}?>	� �?����=��?���J�\�?-Ա�L�?eiS�m�?#�+(�ŉ?�7c_XY�?�#�h/�?���&�?�Rc�ݒ?^�S���?�"�uԖ?}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�Z�_���?����?_&A�o��?�Ca�G��?��7��?�^��h��?W�i�b�?��Z%��?�1%�?\l�9�?+Se*8�?uo�p�?2g�G�A�?������?�iZ�?+�;$�?cI���?�P�1���?3?��|�?�E̟���?yL�����?S�Fi��?ܔ�.�u�?��tM@w`<f@�6v��@h�5�@�Š)U	@u�rʭ�@�DK��@{2�.��@!��v�@زv�5f@��h:np@S���߮@)����&@a/5L��@v@�5m @��@�"@�������:�            ��>A              *@              5@              @              5@              �?      �?              @      x@      :@               @      �?      :@     �I@      ;@      @       @     �R@      D@      @@     �U@     �B@      @      L@      v@     �w@     �@     �K@      t@     @V@     (�@     �z@      _@     0@     `�@     �@     �d@     �@     �c@     ��@     8�@     �{@     `�@     L�@     �s@     h�@     D�@      t@     �@     L�@     *�@     D�@     ��@     X�@     ̧@     $�@     ��@     ��@     ��@     ��@     �@     L�@     =�@     �@    ���@    �M�@    ���@     P�@    �~�@    ���@     )�@    ���@     ,�@     ��@     ��@    ���@    �3�@    @��@    �P�@    @i�@     ��@     ��@    @��@     ��@    @��@     1�@    ���@     a�@    ���@    @)�@    ��@    `(�@    ���@     ��@     ��@     .�@     ��@    �'�@    �/�@     ��@     ��@     ά@     Τ@        

hidden_2/mean_1��:?

hidden_2/stddev_1���?

hidden_2/max_1`(A

hidden_2/min_1    

hidden_2/per_nonzerok��>
�
hidden_2/histogram*�    "@    4�GA!Q'X�0AA)�O'�(]A2�        �-���q=I�I�)�(?�7Kaa+?��bȬ�0?��82?�u�w74?��%�V6?uܬ�@8?��%>��:?d�\D�X=?���#@?�!�A?IcD���L?k�1^�sO?nK���LQ?�lDZrS?<DKc��T?ܗ�SsW?��bB�SY?�m9�H�[?E��{��^?�l�P�`?���%��b?5Ucv0ed?Tw��Nof?P}���h?ߤ�(g%k?�N�W�m?;8�clp?uWy��r?hyO�s?&b՞
�u?*QH�x?o��5sz?���T}?>	� �?����=��?���J�\�?-Ա�L�?eiS�m�?#�+(�ŉ?�7c_XY�?�#�h/�?���&�?�Rc�ݒ?^�S���?�"�uԖ?}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�Z�_���?����?_&A�o��?�Ca�G��?��7��?�^��h��?W�i�b�?��Z%��?�1%�?\l�9�?+Se*8�?uo�p�?2g�G�A�?������?�iZ�?+�;$�?cI���?�P�1���?3?��|�?�E̟���?yL�����?S�Fi��?ܔ�.�u�?��tM@w`<f@�6v��@h�5�@�Š)U	@u�rʭ�@�DK��@{2�.��@!��v�@زv�5f@��h:np@S���߮@)����&@a/5L��@v@�5m @��@�"@�������:�            ��>A              *@              5@              @              5@              �?      �?              @      x@      :@               @      �?      :@     �I@      ;@      @       @     �R@      D@      @@     �U@     �B@      @      L@      v@     �w@     �@     �K@      t@     @V@     (�@     �z@      _@     0@     `�@     �@     �d@     �@     �c@     ��@     8�@     �{@     `�@     L�@     �s@     h�@     D�@      t@     �@     L�@     *�@     D�@     ��@     X�@     ̧@     $�@     ��@     ��@     ��@     ��@     �@     L�@     =�@     �@    ���@    �M�@    ���@     P�@    �~�@    ���@     )�@    ���@     ,�@     ��@     ��@    ���@    �3�@    @��@    �P�@    @i�@     ��@     ��@    @��@     ��@    @��@     1�@    ���@     a�@    ���@    @)�@    ��@    `(�@    ���@     ��@     ��@     .�@     ��@    �'�@    �/�@     ��@     ��@     ά@     Τ@        q��
<?xml version="1.0"?>

<st-source>
<time-stamp>From VisualWorks® Personal Use Edition, 8.3 of July 28, 2017 on October 6, 2018 at 4:14:18 PM</time-stamp>


<component-created>
<name>CS474</name> <type>package</type>
</component-created><!-- Package CS474* -->


<component-created>
<name>CS474</name> <type>package</type>
</component-created>

<class>
<name>BST</name>
<environment>Smalltalk</environment>
<super>Core.Object</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>root addStatus removeStatus valueSet </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>CS474</package>
</attributes>
</class>

<class>
<name>Nodes</name>
<environment>Smalltalk</environment>
<super>Core.Object</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>value left right height </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>CS474</package>
</attributes>
</class>

<class>
<name>UISetCalc</name>
<environment>Smalltalk</environment>
<super>UI.ApplicationModel</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>setvalues setX setY ouput output </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>CS474</package>
</attributes>
</class>

<class>
<name>DoubleSet</name>
<environment>Smalltalk</environment>
<super>Core.Object</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>items setx sety order </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>CS474</package>
</attributes>
</class>

<class>
<name>BranchingSet</name>
<environment>Smalltalk</environment>
<super>DoubleSet</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>bst </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>CS474</package>
</attributes>
</class>

<class>
<name>SetCalculator</name>
<environment>Smalltalk</environment>
<super>Core.Object</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>setx sety </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>CS474</package>
</attributes>
</class>

<class>
<name>ArrayedSet</name>
<environment>Smalltalk</environment>
<super>DoubleSet</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>item set </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>CS474</package>
</attributes>
</class>

<methods>
<class-id>DoubleSet class</class-id> <category>instance creation</category>

<body package="CS474" selector="new">new	"Answer a newly created and initialized instance."	| itemxch |	itemxch := UISetCalc new.	^super new initialize</body>
</methods>


<methods>
<class-id>DoubleSet</class-id> <category>initialize-release</category>

<body package="CS474" selector="sety">sety	^sety</body>

<body package="CS474" selector="Union:">Union: anObject	| flag |	anObject do: [ :i |	flag := 1.	items do: [ :j |		i = j ifTrue: [flag := 0]	].	flag = 1 ifTrue: [items add: i].].		^self</body>

<body package="CS474" selector="Union">Union	| union m n |	union := [:x :y| m:= x asOrderedCollection. n := y asOrderedCollection. 1 to: m size do: [:index| m at: index = (1 to: n size do: [aBlock])]].		itemxch</body>

<body package="CS474" selector="order:">order: anObject		order := anObject.</body>

<body package="CS474" selector="setx">setx	^setx</body>

<body package="CS474" selector="Intersection:">Intersection: anObject	| x y|	x := OrderedCollection new.	1 to: y size do:[:index| (x includes:(y at: index))				ifFalse:[ x addLast: (y at: index) ]].</body>

<body package="CS474" selector="order">order	^order</body>

<body package="CS474" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."		super initialize.	setx := nil.	" *** Replace this comment with the appropriate initialization code *** "	^self</body>
</methods>


<methods>
<class-id>SetCalculator class</class-id> <category>instance creation</category>

<body package="CS474" selector="new">new	"Answer a newly created and initialized instance."	^super new initialize</body>
</methods>


<methods>
<class-id>SetCalculator</class-id> <category>initialize-release</category>

<body package="CS474" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Edit the following to properly initialize instance variables ***"	setx := nil.	sety := nil.	" *** And replace this comment with additional initialization code *** "	^self</body>
</methods>

<methods>
<class-id>SetCalculator</class-id> <category>accessing</category>

<body package="CS474" selector="setx">setx	^setx</body>

<body package="CS474" selector="sety">sety	^sety</body>

<body package="CS474" selector="setx:">setx: anObject	setx := anObject</body>

<body package="CS474" selector="sety:">sety: anObject	sety := anObject</body>
</methods>


<methods>
<class-id>ArrayedSet</class-id> <category>accessing</category>

<body package="CS474" selector="item:">item: anObject		set add: anObject.		^self.</body>

<body package="CS474" selector="adding:">adding: anObject	(setx includes: anObject)			ifFalse: [setx add: anObject].				^self.</body>

<body package="CS474" selector="item">item	^item</body>
</methods>

<methods>
<class-id>ArrayedSet</class-id> <category>initialize-release</category>

<body package="CS474" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Edit the following to properly initialize instance variables ***"	setx := OrderedCollection new.	" *** And replace this comment with additional initialization code *** "	^self</body>
</methods>


<methods>
<class-id>BST class</class-id> <category>instance creation</category>

<body package="CS474" selector="new">new	"Answer a newly created and initialized instance."	^super new initialize</body>
</methods>


<methods>
<class-id>BST</class-id> <category>initialize-release</category>

<body package="CS474" selector="valueSet">valueSet	^valueSet</body>

<body package="CS474" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Edit the following to properly initialize instance variables ***"	root := nil.	" *** And replace this comment with additional initialization code *** "	^self</body>
</methods>

<methods>
<class-id>BST</class-id> <category>accessing</category>

<body package="CS474" selector="root:">root: anObject	root := anObject</body>

<body package="CS474" selector="add:">add: aNumber 	root := self add: aNumber at: root</body>

<body package="CS474" selector="printTreeInOrder">printTreeInOrder	^self printTreeInOrder: root</body>

<body package="CS474" selector="find:">find: x 	^self valueAt: (self find: x at: root)</body>

<body package="CS474" selector="addStatus:">addStatus: aString	addStatus := aString</body>

<body package="CS474" selector="root">root	^root</body>

<body package="CS474" selector="isEmpty">isEmpty	^root isNil</body>

<body package="CS474" selector="addStatus">addStatus	^addStatus</body>

<body package="CS474" selector="insert:">insert: x	root := self insert: x at: root</body>

<body package="CS474" selector="addAllNodes">addAllNodes	^self addAllNodes: root</body>
</methods>

<methods>
<class-id>BST</class-id> <category>private</category>

<body package="CS474" selector="addAllNodes:">addAllNodes: aNode 	| left middle right |	aNode isNil ifTrue: [ ^0 ].	left := self addAllNodes: aNode left.	middle := aNode value.	right := self addAllNodes: aNode right.	^(left + middle + right)</body>

<body package="CS474" selector="remove:at:">remove: aNumber at: aNode 	"remove a number at the tree node"	"if tree is empty, nothing to remove"	aNode isNil ifTrue: [^nil].	"remove smaller number from the left tree"	aNode value &gt; aNumber ifTrue: [		aNode left: (self remove: aNumber at: aNode left ).		^aNode ].	"remove bigger number from the right tree"	aNode value &lt; aNumber ifTrue: [		aNode right: (self remove: aNumber at: aNode right ).		^aNode ].	"the current node contains the number; 	four cases: 0 child, 1 left child, 1 right child, 2 children"	"we are sure we will delete a node, therefor, update the remove status"	self removeStatus isNil		ifTrue: [ self removeStatus: aNumber printString ]		ifFalse: [ self removeStatus: removeStatus, '  ', aNumber printString ].	"when the current node have 2 children"	( aNode left isNil not ) &amp; ( aNode right isNil not ) ifTrue: [		aNode value: ( self findMin: aNode right ) value.		aNode right: ( self remove: aNode value at: aNode right ).		^aNode ].	"when the current node has left child but not right child"	aNode left isNil ifFalse: [ ^aNode left ].	"when the current node has right child but not left child"	aNode right isNil ifFalse: [ ^aNode right ].	"when the current node is a leaf node"	^nil.</body>

<body package="CS474" selector="printTreeInOrder:">printTreeInOrder: aNode 	| left middle right space |	aNode isNil 		ifTrue: [^'']		ifFalse: 			[left := self printTreeInOrder: aNode left.			middle := aNode value printString.			right := self printTreeInOrder: aNode right.			space := String with: Character space.			^left, middle, space, right ]</body>

<body package="CS474" selector="insert:at:">insert: x at: t |tmp|	"insert number x at node t"	t isNil ifTrue: [ tmp := Nodes new: x].	"insert smaller number to the left"	t &gt; x ifTrue: [t left: (self insert: x at: t left)].	"insert bigger number to the right"	t &lt; x ifTrue: [t right: (self insert: x at: t right)]	"if t equals x, do nothing"</body>

<body package="CS474" selector="valueAt:">valueAt: t 	t isNil ifTrue: [^nil] ifFalse: [^t value]</body>

<body package="CS474" selector="add:at:">add: aNumber at: aNode 	"add a number at the tree node"	aNode isNil ifTrue: [			|newNode|			newNode := Nodes new: aNumber.			addStatus isNil 				ifTrue: [ addStatus := newNode value printString ]				ifFalse: [ addStatus := addStatus, ' ', newNode value printString ].			^newNode ]		ifFalse: [			aNode value &gt; aNumber 				ifTrue: 					["add smaller number to the left tree"					aNode left: (self add: aNumber at: aNode left ).					^aNode ].			aNode value &lt; aNumber 				ifTrue: 					["add bigger number to the right tree"					aNode right: (self add: aNumber at: aNode right ) .					^aNode ].			^aNode ]</body>
</methods>


<methods>
<class-id>Nodes class</class-id> <category>instance creation</category>

<body package="CS474" selector="new:">new: aNumber	"Answer a newly created and initialized instance."	^super new initialize: aNumber</body>

<body package="CS474" selector="new">new	"Answer a newly created and initialized instance."	^super new initialize</body>
</methods>


<methods>
<class-id>Nodes</class-id> <category>comparing</category>

<body package="CS474" selector="&gt;">&gt; x 	^value &gt; x</body>

<body package="CS474" selector="&lt;">&lt; x 	^value &lt; x</body>

<body package="CS474" selector="=">= x 	^value = x</body>
</methods>

<methods>
<class-id>Nodes</class-id> <category>accessing</category>

<body package="CS474" selector="left:">left: anObject	left := anObject</body>

<body package="CS474" selector="right">right	^right</body>

<body package="CS474" selector="value">value	^value</body>

<body package="CS474" selector="add:">add: aNumber 	value &gt; aNumber 		ifTrue: 			[left isNil 				ifTrue: [^left := Nodes new: aNumber]				ifFalse: [^left add: aNumber]].	value &lt; aNumber 		ifTrue: 			[right isNil 				ifTrue: [^right := Nodes new: aNumber]				ifFalse: [^right add: aNumber]].	^nil</body>

<body package="CS474" selector="height">height	^height</body>

<body package="CS474" selector="remove:">remove: aNumber 	value &gt; aNumber 		ifTrue: [left isNil ifTrue: [^nil] ifFalse: [^left remove: aNumber]].	value &lt; aNumber 		ifTrue: [right isNil ifTrue: [^nil] ifFalse: [^right remove: aNumber]].	^nil</body>

<body package="CS474" selector="left">left	^left</body>

<body package="CS474" selector="right:">right: anObject	right := anObject</body>

<body package="CS474" selector="value:">value: anObject	value := anObject</body>

<body package="CS474" selector="height:">height: anObject	height := anObject</body>
</methods>

<methods>
<class-id>Nodes</class-id> <category>initialize-release</category>

<body package="CS474" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Edit the following to properly initialize instance variables ***"	value := nil.	left := nil.	right := nil.	height := nil.	" *** And replace this comment with additional initialization code *** "	^self</body>

<body package="CS474" selector="initialize:">initialize: aNumber	"Initialize a newly created instance. This method must answer the receiver."	value := aNumber.	" *** Replace this comment with the appropriate initialization code *** "	^self</body>
</methods>


<methods>
<class-id>UISetCalc class</class-id> <category>interface specs</category>

<body package="CS474" selector="windowSpec">windowSpec	"Tools.UIPainter new openOnClass: self andSelector: #windowSpec"	&lt;resource: #canvas&gt;	^#(#{UI.FullSpec} 		#window: 		#(#{UI.WindowSpec} 			#label: 'Set Calculator' 			#bounds: #(#{Graphics.Rectangle} 771 192 1300 598 ) 			#colors: 			#(#{UI.LookPreferences} 				#setForegroundColor: #(#{Graphics.ColorValue} #black ) 				#setBackgroundColor: #(#{Graphics.ColorValue} 6143 4096 8191 ) 				#setSelectionForegroundColor: #(#{Graphics.ColorValue} #black ) 				#setSelectionBackgroundColor: #(#{Graphics.ColorValue} 5557 6360 7998 ) 				#setBorderColor: #(#{Graphics.ColorValue} #lightGray ) ) ) 		#component: 		#(#{UI.SpecCollection} 			#collection: #(				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.LayoutFrame} 67 0 68 0 145 0 91 0 ) 					#name: #arraySet 					#colors: 					#(#{UI.LookPreferences} 						#setBackgroundColor: #(#{Graphics.ColorValue} 8191 0 4096 ) ) 					#model: #arrayedSet 					#label: 'Arrayed Set' 					#defaultable: true ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.LayoutFrame} 186 0 69 0 271 0 90 0 ) 					#name: #branchingSet 					#colors: 					#(#{UI.LookPreferences} 						#setSelectionForegroundColor: #(#{Graphics.ColorValue} 8191 0 4096 ) ) 					#model: #branchingSet 					#label: 'Branching Set' 					#defaultable: true ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.LayoutFrame} 71 0 211 0 123 0 232 0 ) 					#name: #union 					#model: #union 					#label: 'Union' 					#defaultable: true ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.LayoutFrame} 203 0 210 0 279 0 231 0 ) 					#name: #intersection 					#model: #intersection 					#label: 'Intersection' 					#defaultable: true ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.LayoutFrame} 301 0 69 0 435 0 90 0 ) 					#name: #mapping 					#model: #mapping 					#label: 'Mapping Set Elements' 					#defaultable: true ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.LayoutFrame} 309 0 282 0 409 0 303 0 ) 					#name: #copyxtoy 					#model: #copyxtoy 					#label: 'Copy X into Y' 					#defaultable: true ) 				#(#{UI.InputFieldSpec} 					#layout: #(#{Graphics.LayoutFrame} 94 0 111 0 400 0 166 0 ) 					#name: #setvalues 					#colors: 					#(#{UI.LookPreferences} 						#setForegroundColor: #(#{Graphics.ColorValue} #black ) 						#setBackgroundColor: #(#{Graphics.ColorValue} 3072 8191 3072 ) ) 					#model: #setvalues 					#tabable: false ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.LayoutFrame} 119 0 285 0 193 0 306 0 ) 					#name: #switchsets 					#model: #switchsets 					#label: 'Switch Sets' 					#defaultable: true ) 				#(#{UI.ActionButtonSpec} 					#layout: #(#{Graphics.LayoutFrame} 369 0 209 0 421 0 230 0 ) 					#name: #listsets 					#colors: 					#(#{UI.LookPreferences} 						#setForegroundColor: #(#{Graphics.ColorValue} #black ) 						#setBackgroundColor: #(#{Graphics.ColorValue} 6143 8191 4096 ) 						#setSelectionForegroundColor: #(#{Graphics.ColorValue} 6143 8191 4096 ) 						#setSelectionBackgroundColor: #(#{Graphics.ColorValue} 6143 8191 4096 ) ) 					#model: #listsets 					#label: 'List Sets' 					#defaultable: true ) 				#(#{UI.InputFieldSpec} 					#layout: #(#{Graphics.LayoutFrame} 99 0 341 0 411 0 363 0 ) 					#name: #output 					#colors: 					#(#{UI.LookPreferences} 						#setBackgroundColor: #(#{Graphics.ColorValue} 3072 8191 3072 ) ) 					#model: #output 					#tabable: false ) 				#(#{UI.LabelSpec} 					#layout: #(#{Graphics.LayoutOrigin} 152 0 147 0 ) 					#name: #Label1 					#label: 'For input and displaying contents of X' ) 				#(#{UI.LabelSpec} 					#layout: #(#{Graphics.LayoutOrigin} 183 0 362 0 ) 					#name: #Label2 					#label: 'Displaying contents of Y' ) ) ) )</body>
</methods>


<methods>
<class-id>UISetCalc</class-id> <category>aspects</category>

<body package="CS474" selector="output">output	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^output isNil		ifTrue:			[output := String new asValue]		ifFalse:			[output]</body>

<body package="CS474" selector="setvalues">setvalues	"This method was generated by UIDefiner.  Any edits made here	may be lost whenever methods are automatically defined.  The	initialization provided below may have been preempted by an	initialize method."	^setvalues isNil		ifTrue:			[setvalues := String new asValue]		ifFalse:			[setvalues]</body>
</methods>

<methods>
<class-id>UISetCalc</class-id> <category>actions</category>

<body package="CS474" selector="branchingSet">branchingSet		|inputStream token |		inputStream := setvalues value readStream.	setX := BranchingSet new.	[inputStream atEnd]	whileFalse: [		token := inputStream upTo: Character space.				setX adding: token asNumber.	].		setvalues value: (setX inorder).		^self.</body>

<body package="CS474" selector="listsets">listsets		setX class = ArrayedSet ifTrue: [setvalues value: (setX setx)printString] 	ifFalse: [setvalues value: (setX inorder).]. 	 	setY class = ArrayedSet ifTrue: [output value: (setY setx)printString] 	ifFalse: [output value: (setY inorder).]. 			^self</body>

<body package="CS474" selector="mapping">mapping	"This stub method was generated by UIDefiner"	| aBlock m z inputStream token|	setX class = ArrayedSet 		ifTrue: [m := (setX setx).] 		ifFalse: [m := OrderedCollection new. inputStream := (setX inorder) readStream.						[inputStream atEnd]			whileFalse: [				token := inputStream upTo: Character space.						m add: token asNumber.			].].		Transcript show: m printString.	aBlock := BlockClosure readFromString:(setvalues value).	1 to: m size		do: [ :index | z := (aBlock value: (m  at: index))].					setvalues value: z printString.			^self</body>

<body package="CS474" selector="copyxtoy">copyxtoy	"This stub method was generated by UIDefiner"	| m inputStream token |	setX class = ArrayedSet ifTrue: [setY := ArrayedSet new. m := setX setx. 		1 to: m size do: [:index| setY adding:(m at: index) ].output value: (setY setx)printString] 		ifFalse: [setY := BranchingSet new. inputStream := (setX inorder) readStream. 		[inputStream atEnd]			whileFalse: [				token := inputStream upTo: Character space.						setY adding: token asNumber.			].output value: (setX inorder).]. 							^self</body>

<body package="CS474" selector="union">union	"This stub method was generated by UIDefiner"	| m n cls_x cls_y inputStream token x y|	cls_x := 0.	cls_y := 0.	setX class = ArrayedSet ifTrue: [m := setX setx. cls_x := 1.] 		ifFalse: [x := ArrayedSet new. inputStream:= (setX inorder) readStream.				[inputStream atEnd]					whileFalse: [						token := inputStream upTo: Character space.								x adding: token asNumber.]. 			m := x setx]. 	 	setY class = ArrayedSet ifTrue: [n := setY setx. cls_y := 1.] 		ifFalse: [y := ArrayedSet new. inputStream:= (setY inorder) readStream.				[inputStream atEnd]					whileFalse: [						token := inputStream upTo: Character space.								y adding: token asNumber.]. 			n := y setx]. 			1 to: n size do: [:index| (m includes: (n at: index)) ifFalse: [m add: (n at: index)]].		setvalues value: (setX setx)printString. output value: (setY setx)printString.				cls_x = 1 ifTrue: [setX := ArrayedSet new. 				1 to: m size do: [:index| setX adding:(m at: index).]. setvalues value: (setX setx)printString.]			ifFalse: [setX := BranchingSet new. 				1 to: m size do: [:index| setX adding:(m at: index). ].setvalues value: (setX inorder).].				cls_y = 1 ifTrue: [setY := ArrayedSet new. 				1 to: n size do: [:index| setY adding:(n at: index).]. output value: (setY setx)printString.]			ifFalse: [setY := BranchingSet new. 				1 to: n size do: [:index| setY adding:(n at: index). ].output value: (setY inorder).]				.	^self</body>

<body package="CS474" selector="arrayedSet">arrayedSet	"This stub method was generated by UIDefiner"		|  inputStream token |		inputStream := setvalues value readStream.	setX := ArrayedSet new.	[inputStream atEnd]	whileFalse: [		token := inputStream upTo: Character space.		setX adding: token asNumber.	].			setvalues value: (setX setx)printString.	^self.</body>

<body package="CS474" selector="intersection">intersection		"This stub method was generated by UIDefiner"	| m n cls_x cls_y inputStream token x y c |	cls_x := 0.	cls_y := 0.	c := OrderedCollection new.	setX class = ArrayedSet ifTrue: [m := setX setx. cls_x := 1.] 		ifFalse: [x := ArrayedSet new. inputStream:= (setX inorder) readStream.				[inputStream atEnd]					whileFalse: [						token := inputStream upTo: Character space.								x adding: token asNumber.]. 			m := x setx]. 	 	setY class = ArrayedSet ifTrue: [n := setY setx. cls_y := 1.] 		ifFalse: [y := ArrayedSet new. inputStream:= (setY inorder) readStream.				[inputStream atEnd]					whileFalse: [						token := inputStream upTo: Character space.								y adding: token asNumber.]. 			n := y setx]. 			1 to: n size do: [:index| (m includes: (n at: index)) ifTrue: [c add: (n at: index)]].		setvalues value: (setX setx)printString. output value: (setY setx)printString.				cls_x = 1 ifTrue: [setX := ArrayedSet new. 				1 to: c size do: [:index| setX adding:(c at: index).]. setvalues value: (setX setx)printString.]			ifFalse: [setX := BranchingSet new. 				1 to: c size do: [:index| setX adding:(c at: index). ].setvalues value: (setX inorder).].				cls_y = 1 ifTrue: [setY := ArrayedSet new. 				1 to: n size do: [:index| setY adding:(n at: index).]. output value: (setY setx)printString.]			ifFalse: [setY := BranchingSet new. 				1 to: n size do: [:index| setY adding:(n at: index). ].output value: (setY inorder).]				.	^self</body>

<body package="CS474" selector="switchsets">switchsets	"This stub method was generated by UIDefiner"	| m token z  inputStream|	setY isNil ifTrue: [setX class = ArrayedSet 		ifTrue: [setY := ArrayedSet new. m := setX setx. 		1 to: m size do: [:index| setY adding:(m at: index) ].setX := nil. output value: (setY setx)printString. ^self.]			ifFalse: [setY:= BranchingSet new. inputStream:= (setX inorder) readStream.		[inputStream atEnd]			whileFalse: [				token := inputStream upTo: Character space.						setY adding: token asNumber.			].setX := nil]. output value: (setY inorder). ^self.] 	ifFalse: [setX class = ArrayedSet 		ifTrue: [setY class= ArrayedSet 			ifTrue: [z := ArrayedSet new. m := setX setx. 				1 to: m size do: [:index| z adding:(m at: index) ].				setX := ArrayedSet new. m := setY setx. 				1 to: m size do: [:index| setX adding:(m at: index) ].				setY := ArrayedSet new. 				1 to: z size do: [:index| setY adding:(m at: index) ].setvalues value: (setX setx)printString. output value: (setY setx)printString. ^self.]						ifFalse: [z := ArrayedSet new. m := setX setx. 				1 to: m size do: [:index| z adding:(m at: index) ].				setX:= BranchingSet new. inputStream := (setY inorder) readStream.				[inputStream atEnd]					whileFalse: [						token := inputStream upTo: Character space.								setX adding: token asNumber.].				setY := ArrayedSet new. 				1 to: z size do: [:index| setY adding:(m at: index).].setvalues value: (setX inorder).output value: (setY setx)printString. ^self.].]				ifFalse: [setY class= ArrayedSet 			ifTrue: [z := BranchingSet new. inputStream:= (setX inorder) readStream.				[inputStream atEnd]					whileFalse: [						token := inputStream upTo: Character space.								z adding: token asNumber.]. 				setX :=ArrayedSet new. m := setY setx. 				1 to: m size do: [:index| setX adding:(m at: index) ].				setY := BranchingSet new. inputStream := (z inorder) readStream. 				[inputStream atEnd]					whileFalse: [						token := inputStream upTo: Character space.								setY adding: token asNumber].setvalues value: (setX setx)printString. output value: (setY inorder). ^self.]							ifFalse: [z := BranchingSet new. inputStream := (setX inorder) readStream.				[inputStream atEnd]					whileFalse: [						token := inputStream upTo: Character space.								z adding: token asNumber.].				setX:= BranchingSet new. inputStream := (setY inorder) readStream.				[inputStream atEnd]					whileFalse: [						token := inputStream upTo: Character space.								setX adding: token asNumber.].				setY := BranchingSet new. inputStream := (z inorder) readStream. 				[inputStream atEnd]					whileFalse: [						token := inputStream upTo: Character space.								setY adding: token asNumber.].setvalues value: (setX inorder).output value: (setY inorder)printString. ^self.].].].		^self.</body>
</methods>

<methods>
<class-id>UISetCalc</class-id> <category>initialize-release</category>

<body package="CS474" selector="initialize">initialize		setX := nil.	setY := nil.</body>
</methods>


<methods>
<class-id>BranchingSet</class-id> <category>initialize-release</category>

<body package="CS474" selector="inorder">inorder	 | a  inputStream token  |	a := bst printTreeInOrder.		inputStream := a readStream. 		[inputStream atEnd]			whileFalse: [				token := inputStream upTo: Character space.						order add: token asNumber.			].		^a.</body>

<body package="CS474" selector="adding:">adding: x	bst add: x.	^self.</body>

<body package="CS474" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Edit the following to properly initialize instance variables ***"	bst := BST new.	order := OrderedCollection new.	" *** And replace this comment with additional initialization code *** "	^self</body>
</methods>

<methods>
<class-id>BranchingSet</class-id> <category>accessing</category>

<body package="CS474" selector="bst">bst	^bst</body>

<body package="CS474" selector="bst:">bst: anObject	bst := anObject</body>
</methods>



</st-source>

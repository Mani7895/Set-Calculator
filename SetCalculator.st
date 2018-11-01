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

<body package="CS474" selector="new">new
</methods>


<methods>
<class-id>DoubleSet</class-id> <category>initialize-release</category>

<body package="CS474" selector="sety">sety

<body package="CS474" selector="Union:">Union: anObject

<body package="CS474" selector="Union">Union

<body package="CS474" selector="order:">order: anObject

<body package="CS474" selector="setx">setx

<body package="CS474" selector="Intersection:">Intersection: anObject

<body package="CS474" selector="order">order

<body package="CS474" selector="initialize">initialize
</methods>


<methods>
<class-id>SetCalculator class</class-id> <category>instance creation</category>

<body package="CS474" selector="new">new
</methods>


<methods>
<class-id>SetCalculator</class-id> <category>initialize-release</category>

<body package="CS474" selector="initialize">initialize
</methods>

<methods>
<class-id>SetCalculator</class-id> <category>accessing</category>

<body package="CS474" selector="setx">setx

<body package="CS474" selector="sety">sety

<body package="CS474" selector="setx:">setx: anObject

<body package="CS474" selector="sety:">sety: anObject
</methods>


<methods>
<class-id>ArrayedSet</class-id> <category>accessing</category>

<body package="CS474" selector="item:">item: anObject

<body package="CS474" selector="adding:">adding: anObject

<body package="CS474" selector="item">item
</methods>

<methods>
<class-id>ArrayedSet</class-id> <category>initialize-release</category>

<body package="CS474" selector="initialize">initialize
</methods>


<methods>
<class-id>BST class</class-id> <category>instance creation</category>

<body package="CS474" selector="new">new
</methods>


<methods>
<class-id>BST</class-id> <category>initialize-release</category>

<body package="CS474" selector="valueSet">valueSet

<body package="CS474" selector="initialize">initialize
</methods>

<methods>
<class-id>BST</class-id> <category>accessing</category>

<body package="CS474" selector="root:">root: anObject

<body package="CS474" selector="add:">add: aNumber 

<body package="CS474" selector="printTreeInOrder">printTreeInOrder

<body package="CS474" selector="find:">find: x 

<body package="CS474" selector="addStatus:">addStatus: aString

<body package="CS474" selector="root">root

<body package="CS474" selector="isEmpty">isEmpty

<body package="CS474" selector="addStatus">addStatus

<body package="CS474" selector="insert:">insert: x

<body package="CS474" selector="addAllNodes">addAllNodes
</methods>

<methods>
<class-id>BST</class-id> <category>private</category>

<body package="CS474" selector="addAllNodes:">addAllNodes: aNode 

<body package="CS474" selector="remove:at:">remove: aNumber at: aNode 

<body package="CS474" selector="printTreeInOrder:">printTreeInOrder: aNode 

<body package="CS474" selector="insert:at:">insert: x at: t 

<body package="CS474" selector="valueAt:">valueAt: t 

<body package="CS474" selector="add:at:">add: aNumber at: aNode 
</methods>


<methods>
<class-id>Nodes class</class-id> <category>instance creation</category>

<body package="CS474" selector="new:">new: aNumber

<body package="CS474" selector="new">new
</methods>


<methods>
<class-id>Nodes</class-id> <category>comparing</category>

<body package="CS474" selector="&gt;">&gt; x 

<body package="CS474" selector="&lt;">&lt; x 

<body package="CS474" selector="=">= x 
</methods>

<methods>
<class-id>Nodes</class-id> <category>accessing</category>

<body package="CS474" selector="left:">left: anObject

<body package="CS474" selector="right">right

<body package="CS474" selector="value">value

<body package="CS474" selector="add:">add: aNumber 

<body package="CS474" selector="height">height

<body package="CS474" selector="remove:">remove: aNumber 

<body package="CS474" selector="left">left

<body package="CS474" selector="right:">right: anObject

<body package="CS474" selector="value:">value: anObject

<body package="CS474" selector="height:">height: anObject
</methods>

<methods>
<class-id>Nodes</class-id> <category>initialize-release</category>

<body package="CS474" selector="initialize">initialize

<body package="CS474" selector="initialize:">initialize: aNumber
</methods>


<methods>
<class-id>UISetCalc class</class-id> <category>interface specs</category>

<body package="CS474" selector="windowSpec">windowSpec
</methods>


<methods>
<class-id>UISetCalc</class-id> <category>aspects</category>

<body package="CS474" selector="output">output

<body package="CS474" selector="setvalues">setvalues
</methods>

<methods>
<class-id>UISetCalc</class-id> <category>actions</category>

<body package="CS474" selector="branchingSet">branchingSet

<body package="CS474" selector="listsets">listsets

<body package="CS474" selector="mapping">mapping

<body package="CS474" selector="copyxtoy">copyxtoy

<body package="CS474" selector="union">union

<body package="CS474" selector="arrayedSet">arrayedSet

<body package="CS474" selector="intersection">intersection

<body package="CS474" selector="switchsets">switchsets
</methods>

<methods>
<class-id>UISetCalc</class-id> <category>initialize-release</category>

<body package="CS474" selector="initialize">initialize
</methods>


<methods>
<class-id>BranchingSet</class-id> <category>initialize-release</category>

<body package="CS474" selector="inorder">inorder

<body package="CS474" selector="adding:">adding: x

<body package="CS474" selector="initialize">initialize
</methods>

<methods>
<class-id>BranchingSet</class-id> <category>accessing</category>

<body package="CS474" selector="bst">bst

<body package="CS474" selector="bst:">bst: anObject
</methods>



</st-source>
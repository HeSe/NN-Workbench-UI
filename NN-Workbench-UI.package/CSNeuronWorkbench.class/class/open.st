instance creation
open
<script: 'CSNeuronWorkbench open'>

	| space  n workbench |
	space := BlSpace new
		extent: 850 @ 650;
		title: 'NeuronNetwork Workbench'.
		
	n := NeuralNetwork new.
	n configure: 4 numberOfHidden: 5 numberOfHidden: 4 numberOfHidden: 7 nbOfOutput: 2.
	
	workbench := self new nnetwork: n.
	workbench addContent.
	space root addChild: workbench.
	space root background: Color veryVeryDarkGray.
	space root layout: BlLinearLayout horizontal.
	space root layout weightSum: 1.	
	space show
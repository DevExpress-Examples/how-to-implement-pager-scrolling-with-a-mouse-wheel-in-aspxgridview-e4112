# How to implement pager scrolling with a mouse wheel in ASPxGridView


<p>This example demonstrates how to implement pager scrolling with a mouse wheel. To do this use two events:<br />
onmousewheel for IE, Opera, Safari and Chrome<br />
DOMMouseScroll for FF must be handled.<br />
Also the PreventEventAndBubble method must be called to prevent vertical scrolling.</p>

<br/>



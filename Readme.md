<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/WebSite/Default.aspx) (VB: [Default.aspx](./VB/WebSite/Default.aspx))
* [Default.aspx.cs](./CS/WebSite/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/WebSite/Default.aspx.vb))
<!-- default file list end -->
# How to implement pager scrolling with a mouse wheel in ASPxGridView


<p>This example demonstrates how to implement pager scrolling with a mouse wheel. To do this use two events:<br />
onmousewheel for IE, Opera, Safari and Chrome<br />
DOMMouseScroll for FF must be handled.<br />
Also the PreventEventAndBubble method must be called to prevent vertical scrolling.</p>

<br/>



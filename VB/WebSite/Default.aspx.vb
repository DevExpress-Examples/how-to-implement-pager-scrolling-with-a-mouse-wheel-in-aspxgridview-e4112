Imports Microsoft.VisualBasic
Imports System
Imports System.Collections.Generic
Imports System.Linq
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports DevExpress.Web.ASPxGridView

Partial Public Class _Default
	Inherits System.Web.UI.Page
	Protected Sub Page_Init(ByVal sender As Object, ByVal e As EventArgs)
	End Sub
	Protected Sub ASPxGridView1_CustomCallback(ByVal sender As Object, ByVal e As DevExpress.Web.ASPxGridView.ASPxGridViewCustomCallbackEventArgs)
		Dim grid As ASPxGridView = TryCast(sender, ASPxGridView)
		ChangePageIndex(grid, e.Parameters)
	End Sub
	Private Sub ChangePageIndex(ByVal grid As ASPxGridView, ByVal parameters As String)
		If Convert.ToInt32(parameters) < 0 Then
			If grid.PageIndex < grid.PageCount - 1 Then
				grid.PageIndex += 1
			Else
				grid.PageIndex = 0
			End If
		Else
			If grid.PageIndex > 0 Then
				grid.PageIndex -= 1
			Else
				grid.PageIndex = grid.PageCount
			End If
		End If
	End Sub
End Class
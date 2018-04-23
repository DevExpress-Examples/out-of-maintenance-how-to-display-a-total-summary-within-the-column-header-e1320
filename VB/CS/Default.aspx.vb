Imports Microsoft.VisualBasic
Imports System
Imports System.Data
Imports System.Configuration
Imports System.Collections
Imports System.Web
Imports System.Web.Security
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Web.UI.WebControls.WebParts
Imports System.Web.UI.HtmlControls
Imports DevExpress.Web.ASPxGridView
Imports DevExpress.Web.ASPxEditors

Namespace WebApplication169
	Partial Public Class _Default
		Inherits System.Web.UI.Page
		Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)
		End Sub

		Protected Sub ASPxLabel1_Load(ByVal sender As Object, ByVal e As EventArgs)
			Dim grid As ASPxGridView = ASPxGridView1
			Dim col As GridViewDataColumn = TryCast(grid.Columns("UnitsInStock"), GridViewDataColumn)
			Dim summary As ASPxSummaryItem = grid.TotalSummary("UnitsInStock", DevExpress.Data.SummaryItemType.Sum)
			Dim text As String = summary.GetFooterDisplayText(col.FieldName, grid.GetTotalSummaryValue(summary))
			Dim label As ASPxLabel = CType(sender, ASPxLabel)
			label.Text = String.Format("{0}" & Constants.vbCrLf & "({1})", col.FieldName, text)

		End Sub
	End Class
End Namespace

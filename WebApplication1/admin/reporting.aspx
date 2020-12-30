<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="reporting.aspx.cs" Inherits="WebApplication1.admin.reporting" %>
<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="server">
   <h1> Total value of rents:<B> <%= Session["rents"] %></B></h1>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Lessons.aspx.cs" Inherits="Lessons" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">

    <form runat="server" class="mx-auto col-5 mt-5">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Ders Seç" Style="font-weight: bold"></asp:Label>
            <asp:DropDownList ID="DropDownListLesson" runat="server" CssClass="form-control"></asp:DropDownList>
        </div>
        <br />
        <div>
            <asp:Label ID="Label2" runat="server" Text="Öğrenci ID" Style="font-weight: bold"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Derse Kaydet" CssClass="btn btn-warning" OnClick="Button1_Click" />


    </form>

</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="StudentUpdate.aspx.cs" Inherits="StudentUpdate" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <form id="Form1" runat="server" class="mx-auto col-6 mt-4">

        <div class="form-group">

            <div>
                <asp:Label for="TxtStId" runat="server" Text="Öğrenci Id :" Style="font-weight: bold"></asp:Label>
                <asp:TextBox ID="TxtStId" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />

            <div>
                <asp:Label for="TxtStName" runat="server" Text="Öğrenci Adı :" Style="font-weight: bold"></asp:Label>
                <asp:TextBox ID="TxtStName" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="TxtStSurname" runat="server" Text="Öğrenci Soyadı :" Style="font-weight: bold"></asp:Label>
                <asp:TextBox ID="TxtStSurname" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="TxtStNmbr" runat="server" Text="Öğrenci Numara :" Style="font-weight: bold"></asp:Label>
                <asp:TextBox ID="TxtStNmbr" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="TxtStMail" runat="server" Text="Öğrenci Mail :" Style="font-weight: bold"></asp:Label>
                <asp:TextBox ID="TxtStMail" runat="server" CssClass="form-control "></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="TxtStPass" runat="server" Text="Öğrenci Şifre :" Style="font-weight: bold"></asp:Label>
                <asp:TextBox ID="TxtStPass" runat="server" CssClass="form-control mb-3"></asp:TextBox>
            </div>

            <asp:Button ID="Save" runat="server" Text="Güncelle" CssClass="btn btn-success ms-3" OnClick="Save_Click" />
            <asp:Button ID="Delete" runat="server" Text="Temizle" CssClass="btn btn-danger ms-3" OnClick="Delete_Click" />
        </div>

    </form>
</asp:Content>



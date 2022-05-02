<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="StudentList.aspx.cs" Inherits="StudentList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <div class="container">
        <table class="table table-bordered table-hover mt-5">
            <tr>
                <th>Öğrenci ID</th>
                <th>Öğrenci Ad</th>
                <th>Öğrenci Soyad</th>
                <th>Öğrenci Numara</th>
                <th>Öğrenci Mail</th>
                <th>Öğrenci Şifre</th>
                <th>Öğrenci Bakiye</th>
                <th>İşlemler</th>
            </tr>
            <tbody>
                <asp:Repeater ID="Repeater1" runat="server">

                    <ItemTemplate>
                        <tr>
                            <td><%#Eval("Id")%></td>
                            <td><%#Eval("Name")%></td>
                            <td><%#Eval("Surname")%></td>
                            <td><%#Eval("Number")%></td>
                            <td><%#Eval("Mail")%></td>
                            <td><%#Eval("Password")%></td>
                            <td><%#Eval("Balance")%></td>
                            <td>
                                <asp:HyperLink NavigateUrl='<%#"~/StudentDelete.aspx?Id=" + Eval("Id")%>' ID="HyperLink1" CssClass="btn btn-danger" runat="server">Sil</asp:HyperLink>
                                <asp:HyperLink NavigateUrl='<%#"~/StudentUpdate.aspx?Id=" + Eval("Id")%>' ID="HyperLink2" CssClass="btn btn-success" runat="server">Güncelle</asp:HyperLink>
                            </td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </tbody>
        </table>
    </div>
</asp:Content>


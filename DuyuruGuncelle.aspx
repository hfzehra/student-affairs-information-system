<%@ Page Title="" Language="C#" MasterPageFile="~/Öğretmen.Master" AutoEventWireup="true" CodeBehind="DuyuruGuncelle.aspx.cs" Inherits="oibsproje.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

     <form id="Form1" runat="server">
        <div class="form-group">
           
           
            <div>
                <asp:Label for="TxtDuyuruİd" runat="server">Duyuru İd</asp:Label>
                <asp:TextBox ID="TxtDuyuruİd" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
             <br />
             <div>
                <asp:Label for="TxtDuyuruBaslik" runat="server">Duyuru Başlık</asp:Label>
                <asp:TextBox ID="TxtDuyuruBaslik" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="TxtDuyuruİcerik" runat="server">Duyuru içerik</asp:Label>
                <textarea id="TxtDuyuruİcerik" cols="20" rows="5" class="form-control" runat="server"></textarea>

            </div>
           
          
        </div>
        <asp:Button ID="Button1" runat="server" Text="GÜNCELLE" CssClass="btn btn-primary" OnClick="Button1_Click" />
    </form>

</asp:Content>

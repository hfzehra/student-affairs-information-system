<%@ Page Title="" Language="C#" MasterPageFile="~/Öğrenci.Master" AutoEventWireup="true" CodeBehind="MasterOgrMesaj.aspx.cs" Inherits="oibsproje.WebForm24" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form id="Form1" runat="server">
        <div class="form-group">
           
           
            <div>
                <asp:Label for="TxtGönderen" runat="server">Gönderen</asp:Label>
                 <asp:TextBox ID="TxtGönderen" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
            </div>

             <br />
             <div>
                <asp:Label for="TxtAlici" runat="server">Alıcı</asp:Label>
                <asp:TextBox ID="TxtAlici" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="TxtMesajBaslik" runat="server">Başlık</asp:Label>
                <asp:TextBox ID="TxtMesajBaslik" runat="server" CssClass="form-control"></asp:TextBox>

            </div>
            <br />
            <div>
                <asp:Label for="TxtMesajİcerik" runat="server">İçerik</asp:Label>
                <textarea id="TxtMesajİcerik" cols="20" rows="5" class="form-control" runat="server"></textarea>

            </div>
           
          
        </div>
        <asp:Button ID="BtnGönder" runat="server" Text="MESAJ GÖNDER" CssClass="btn btn-info" OnClick="BtnGönder_Click"/>
    </form>

</asp:Content>

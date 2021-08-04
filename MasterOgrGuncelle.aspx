<%@ Page Title="" Language="C#" MasterPageFile="~/Öğrenci.Master" AutoEventWireup="true" CodeBehind="MasterOgrGuncelle.aspx.cs" Inherits="oibsproje.WebForm19" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

      <form id="Form1" runat="server">
        <div class="form-group">
           
           
             <div>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" Enabled="False"> Numara : </asp:TextBox>
            </div>
            <br />
              <div>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" Enabled="True"> E-mail : </asp:TextBox>
            </div>
             <br />
              <div>
                <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" Enabled="True"> Şifre : </asp:TextBox>
            </div>
             <br />
              <div>
                <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" Enabled="True"> Tekrar Şifre : </asp:TextBox>
            </div>
           
            
        </div>
         <asp:Button ID="Button1" runat="server" Text="GÜNCELLE" CssClass="btn btn-success" OnClick="Button1_Click"  />
  </form>

</asp:Content>

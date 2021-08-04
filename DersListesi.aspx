<%@ Page Title="" Language="C#" MasterPageFile="~/Öğretmen.Master" AutoEventWireup="true" CodeBehind="DersListesi.aspx.cs" Inherits="oibsproje.WebForm11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

      <table class="table table-bordered" >
 
    <tr>
      <th scope="col">DERS İD</th>
      <th scope="col">DERS ADI</th>
      <th scope="col">SİLME</th>
      
    </tr>
 
  <tbody>
    
      <asp:Repeater ID="Repeater1" runat="server">

          <ItemTemplate>
              <tr>

                  <td><%#Eval("Ders_id")%></td>
                  <td><%#Eval("Ders_ad")%></td>
                  <td>
                      <asp:HyperLink ID="HyperLink1" NavigatorUrl='<%#"~/DersSil.aspx?Ders_id="+Eval("Ders_id")%>' runat="server" CssClass="btn btn-danger">SİL</asp:HyperLink>
                  </td>
              
             </tr>
          </ItemTemplate>
      </asp:Repeater>
     
  </tbody>
</table>
     <asp:HyperLink ID="HyperLink1" NavigateUrl="~/DersEkle.aspx" runat="server" CssClass="btn btn-info">DERS EKLE</asp:HyperLink>

</asp:Content>

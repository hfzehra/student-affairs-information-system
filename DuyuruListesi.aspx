<%@ Page Title="" Language="C#" MasterPageFile="~/Öğretmen.Master" AutoEventWireup="true" CodeBehind="DuyuruListesi.aspx.cs" Inherits="oibsproje.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

     <table class="table table-bordered" >
 
    <tr>
      <th scope="col">İD</th>
      <th scope="col">BAŞLIK</th>
      <th scope="col">iÇERİK</th>
      <th scope="col">TARİH</th>
      <th scope="col">ÖĞRETMEN</th>
      <th scope="col">İŞLEMLER</th>
      
    </tr>
 
  <tbody>
    
      <asp:Repeater ID="Repeater1" runat="server">

          <ItemTemplate>
              <tr>
                  <td><%#Eval("Duyuru_id")%></td>
                  <td><%#Eval("Duyuru_baslik")%></td>
                  <td><%#Eval("Duyuru_icerik")%></td>
                  <td><%#Eval("Duyuru_tarih")%></td>
                  <td><%#Eval("Duyuru_ogrt")%></td>
                  
                  
                 <td>
                      <asp:HyperLink ID="HyperLink1" NavigatorUrl='<%#"~/DuyuruSil.aspx?Duyuru_id "+Eval("Duyuru_id")%>' runat="server" CssClass="btn btn-danger">SİL</asp:HyperLink>
                      <asp:HyperLink ID="HyperLink2" NavigatorUrl='<%#"~/DuyuruGuncelle.aspx?Duyuru_id "+Eval("Duyuru_id")%>' runat="server" CssClass="btn btn-success">GÜNCELLE</asp:HyperLink>
                  </td>
              </tr>
          </ItemTemplate>
      </asp:Repeater>

  </tbody>
</table>

</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Öğretmen.Master" AutoEventWireup="true" CodeBehind="GelenMesajlar.aspx.cs" Inherits="oibsproje.WebForm14" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

        <table class="table table-bordered" >
 
    <tr>
      <th scope="col">İD</th>
      <th scope="col">GÖNDEREN</th>
      <th scope="col">BAŞLIK</th>
      <th scope="col">iÇERİK</th>
      
      
    </tr>
 
  <tbody>
    
      <asp:Repeater ID="Repeater1" runat="server">

          <ItemTemplate>
              <tr>
                  <td><%#Eval("Mesaj_id")%></td>
                  <td><%#Eval("Gönderen")%></td>
                  <td><%#Eval("Baslik")%></td>
                  <td><%#Eval("İcerik")%></td>
                  
              <%--   <td>
                      <asp:HyperLink ID="HyperLink1" NavigatorUrl='<%# "~/MesajSil.aspx?Mesaj_id "+Eval("Mesaj_id")%>' runat="server" CssClass="btn btn-danger">SİL</asp:HyperLink>
                      <asp:HyperLink ID="HyperLink2" NavigatorUrl='<%# "~/MesajGüncelle.aspx?Mesaj_id "+Eval("Mesaj_id")%>' runat="server" CssClass="btn btn-success">GÜNCELLE</asp:HyperLink>
                  </td>--%>
              </tr>
          </ItemTemplate>
      </asp:Repeater>

  </tbody>
</table>

</asp:Content>

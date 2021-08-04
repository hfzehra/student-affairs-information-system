<%@ Page Title="" Language="C#" MasterPageFile="~/Öğretmen.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="oibsproje.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="table table-bordered" >
 
    <tr>
      <th scope="col">İD</th>
      <th scope="col">NUMARA</th>
      <th scope="col">AD</th>
      <th scope="col">SOYAD</th>
      <th scope="col">TELEFON</th>
      <th scope="col">E-MAİL</th>
      <th scope="col">İŞLEMLER</th>
      
    </tr>
 
  <tbody>
    
      <asp:Repeater ID="Repeater1" runat="server">

          <ItemTemplate>
              <tr>
                  <td><%#Eval("Ogr_id")%></td>
                  <td><%#Eval("Ogr_numara")%></td>
                  <td><%#Eval("Ogr_ad")%></td>
                  <td><%#Eval("Ogr_soyad")%></td>
                  <td><%#Eval("Ogr_tel")%></td>
                  <td><%#Eval("Ogr_mail")%></td>
                  <td>
                      <asp:HyperLink ID="HyperLink1" NavigateUrl='<%#"~/OgrenciSil.aspx?Ogr_id="+Eval("Ogr_id")%>' runat="server" CssClass="btn btn-danger">SİL</asp:HyperLink>
                      <asp:HyperLink ID="HyperLink2" NavigateUrl='<%#"~/OgrenciGuncelle.aspx?Ogr_id="+Eval("Ogr_id")%>' runat="server" CssClass="btn btn-success">GÜNCELLE</asp:HyperLink>
                  </td>
              </tr>
          </ItemTemplate>
      </asp:Repeater>

  </tbody>
</table>
</asp:Content>

<%--   <th scope="row">1</th>--%>
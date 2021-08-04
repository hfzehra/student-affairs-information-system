<%@ Page Title="" Language="C#" MasterPageFile="~/Öğretmen.Master" AutoEventWireup="true" CodeBehind="NotListesi.aspx.cs" Inherits="oibsproje.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

     <table class="table table-bordered" >
 
    <tr>
      <th scope="col">ÖĞRENCİ İD</th>
      <th scope="col">öĞRENCİ AD-SOYAD</th>
      <th scope="col">DERS ADI</th>
      <th scope="col">VİZE</th>
      <th scope="col">FİNAL</th>
      <th scope="col">ORTALAMA</th>
      <th scope="col">DURUM</th>
      <th scope="col">GÜNCELLE</th>
      
    </tr>
 
  <tbody>
    
      <asp:Repeater ID="Repeater1" runat="server">

          <ItemTemplate>
              <tr>
                  <td><%#Eval("Ogrid")%></td>
                  <td><%#Eval("ÖğrenciAdSoyad")%></td>
                  <td><%#Eval("Ders_ad")%></td>
                  <td><%#Eval("Vize")%></td>
                  <td><%#Eval("Final")%></td>
                  <td><%#Eval("Ortalama")%></td>
                  <td><%#Eval("Durum")%></td>

                 
                  <td>
                      <asp:HyperLink ID="HyperLink2"  NavigateUrl='<%#"~/NotGüncelle.aspx?Notid="+Eval("Notid")%>' runat="server" CssClass="btn btn-warning">GÜNCELLE</asp:HyperLink>
                     
                  </td>
              </tr>
          </ItemTemplate>
      </asp:Repeater>

  </tbody>
</table>

</asp:Content>

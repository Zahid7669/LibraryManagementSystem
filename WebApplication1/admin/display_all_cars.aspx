<%@ Page  Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="display_all_cars.aspx.cs" Inherits="WebApplication1.admin.display_all_cars" %>


<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="server">

    <link href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css" type="html/sandboxed" rel="stylesheet" />
     <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
    <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>


    <div class="col-lg-12">
                    <div class="card">
                        <div class="card-header">
                            <h1>Hello,<B> <%=Session["librarian"] %> </B> </h1>
                            <strong class="card-title">Available Car List</strong>
                        </div>
                        <div class="card-body">

                            <asp:Repeater ID="r1" runat="server">
                                <HeaderTemplate>
                                    <table class="table" id="example">
                              <thead>
                                <tr>
                                    <th scope="col">image</th>
                                    <th scope="col">Model</th>
                                    <th scope="col">Car Number</th>
                                    <th scope="col">Available Date</th>
                                    <th scope="col">Rent</th>
                                    <th scope="col">Status</th>
                                    <th scope="col">Edit Books</th>
                                    <th scope="col">Delete Books</th>
                              </tr>
                          </thead>
                                        <tbody>
                                         
                                </HeaderTemplate>
                                <ItemTemplate>
                                      <tr>
                              <td><img src="<%#Eval("carimage") %>" height="100" width="100" /></td>
                              <td><%#Eval("carmodel") %></td>
                              <td><%#Eval("carnumber") %></td>
                              <td><%#Eval("date") %></td>
                              <td><%#Eval("rent") %></td>
                              <td><%#Eval("status") %></td>
                              <td><a href="edit_cars.aspx?id=<%#Eval("id") %>">Edit Car</a></td>
                              <td><a href="delete_cars.aspx?id2=<%#Eval("id") %>">Delete Car</a></td>

                          </tr>
                                </ItemTemplate>
                                <FooterTemplate>

                                    </tbody>
                                   </table>

                                </FooterTemplate>
                            </asp:Repeater>
                            
                        
                            
                             
                     
                        </div>
                    </div>
                </div>

     <script type="text/javascript">

         $(document).ready(function () {
             $('#example').DataTable({
                 "pagingType": "full_numbers"
             });

         });



     </script>
</asp:Content>

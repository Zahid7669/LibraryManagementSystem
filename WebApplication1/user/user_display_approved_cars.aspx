<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.Master" AutoEventWireup="true" CodeBehind="user_display_approved_cars.aspx.cs" Inherits="WebApplication1.user.user_display_approved_cars" %>
<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="server">

    <link href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css" type="html/sandboxed" rel="stylesheet" />
     <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
    <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>


     <div class="col-lg-12">
                    <div class="card">
                        <div class="card-header">
                            <strong class="card-title">User Section</strong>
                        </div>
                        <div class="card-body">

                            <asp:Repeater ID="r1" runat="server">
                                <HeaderTemplate>
                                    <table class="table" id="example">
                              <thead>
                                <tr>
                                  <th scope="col">Car Image</th>
                                  <th scope="col">Car Model</th>
                                  <th scope="col">Car Number</th>
                                  <th scope="col">Booking Date</th>
                                  <th scope="col">Rent/day</th>
                                  <th scope="col">Status</th>
                                
                              </tr>
                          </thead>
                                        <tbody>
                                         
                                </HeaderTemplate>
                                <ItemTemplate>
                                      <tr>
                              <td><img src="../admin/<%#Eval("carimage")%>" height="100" width="100" /></td>
                              <td><%#Eval("carmodel") %></td>
                              <td><%#Eval("carnumber") %></td>
                              <td><%#Eval("date") %></td>
                              <td><%#Eval("rent") %></td>
                              <td><%#Eval("status") %></td>
                              
                             

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

<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.Master" AutoEventWireup="true" CodeBehind="view_user_profile.aspx.cs" Inherits="WebApplication1.user.view_user_profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="server">

    <link href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css" type="html/sandboxed" rel="stylesheet" />
     <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
    <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>


     <div class="col-lg-12">
                    <div class="card">
                        <div class="card-header">
                        
                            <h1>Hello,<B> <%=Session["student"] %> </B> </h1>
                        </div>
                        <div class="card-body">

                            <asp:Repeater ID="r1" runat="server">
                                <HeaderTemplate>
                                    <table class="table" id="example">
                              <thead>
                                <tr>
                                  <th scope="col">Image</th>
                                  <th scope="col">First Name</th>
                                  <th scope="col">Last Name</th>
                                  <th scope="col">Email</th>
                                  <th scope="col">Contact</th>
                                  <th scope="col">User Name</th>
                                  <th scope="col">Password</th>
                                
                              </tr>
                          </thead>
                                        <tbody>
                                         
                                </HeaderTemplate>
                                <ItemTemplate>
                                      <tr>
                              <td><img src="../user/<%#Eval("user_img")%>" height="100" width="100" /></td>
                              <td><%#Eval("firstname") %></td>
                              <td><%#Eval("lastname") %></td>
                              <td><%#Eval("email") %></td>
                              <td><%#Eval("contact") %></td>
                              <td><%#Eval("username") %></td>
                              <td><%#Eval("password") %></td>
                              <td><a href="edit_user_profile.aspx?id=<%#Eval("id") %>">Edit Profile</a></td>
                           

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

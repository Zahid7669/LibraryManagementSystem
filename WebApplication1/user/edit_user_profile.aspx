<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.Master" AutoEventWireup="true" CodeBehind="edit_user_profile.aspx.cs" Inherits="WebApplication1.user.edit_user_profile" %>


<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="server">
    <div class="col-lg-12">
                    <div class="card">
                        <div class="card-header">
                            <strong class="card-title">Update Details</strong>
                        </div>
                        <div class="card-body">
                          <!-- Credit Card -->
                          <div id="pay-invoice">
                              <div class="card-body">
                               
                                  
                                  <form action="" id="fo1" runat="server" method="post" novalidate="novalidate">
                                      
                                      <div class="form-group">
                                          <label for="" class="control-label mb-1">First Name</label>
                                          <asp:TextBox ID="firstname" runat="server" class="form-control"></asp:TextBox>
                                      </div>
                                      <div class="form-group">
                                          <label for="" class="control-label mb-1">Last Name</label>
                                          <asp:TextBox ID="lastname" runat="server" class="form-control"></asp:TextBox>
                                      </div>

                                      <div class="form-group">
                                          <label for="" class="control-label mb-1">User Image</label>
                                          <asp:Label ID="user_img" runat="server" Text=""></asp:Label>
                                          <asp:FileUpload ID="fo" runat="server" class="form-control" />
                                      </div>


                                      <div class="form-group">
                                          <label for="" class="control-label mb-1">Email</label>
                                          <asp:TextBox ID="email" runat="server" class="form-control"></asp:TextBox>
                                      </div>

                                      <div class="form-group">
                                          <label for="" class="control-label mb-1">Contact</label>
                                          <asp:TextBox ID="contact" runat="server" class="form-control"></asp:TextBox>
                                      </div>

                                      <div class="form-group">
                                          <label for="" class="control-label mb-1">User Name</label>
                                          <asp:TextBox ID="username" runat="server" class="form-control"></asp:TextBox>
                                      </div>
                                      <div class="form-group">
                                          <label for="" class="control-label mb-1">Password</label>
                                          <asp:TextBox ID="password" runat="server" class="form-control"></asp:TextBox>
                                      </div>

                          
                                                      

                                      <div>
                                       

                                          <asp:Button ID="b1" runat="server" class="btn btn-lg btn-info btn-block" Text="Update Profile" OnClick="b1_Click"  />
                                          
                                      </div>
                                  </form>
                              </div>
                          </div>

                        </div>
                    </div> <!-- .card -->

                  </div><!--/.col-->
</asp:Content>